using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Net.Mail;
using RestSharp;
using RestSharp.Authenticators;
using PayPal.Api;
using System.Threading;
using System.Web.SessionState;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace WAKANA_WEB_DE
{
    public partial class BOOKING : System.Web.UI.Page
    {

        List<fecha> fechas = new List<fecha>();



        protected void Page_Load(object sender, EventArgs e)
        {
            this.deEnd.MinDate = DateTime.Today;
            this.deStart.MinDate = DateTime.Today;

            //THIS WILL LOAD ACCOMMODATION COSTS FROM THE DATABASE
            this.loadAccommodationCostfromDB();

        }
        public bool IsValid(string emailaddress)
        {
            bool flag;
            try
            {
                MailAddress mailAddress = new MailAddress(emailaddress);
                flag = true;
            }
            catch
            {
                flag = false;
            }
            return flag;
        }

        //BOOKING CALLBACK MANAGES ALL THE PROGRAMMING HAPENNING WHILE CHANGING BOOKING STEPS, LOADING AND SETTING ALL INFORMATION RECEIVED INTO THE SESSION AND ALSO STARTING THE PAYPAL FLOW
        protected void Booking_Callback(object sender, CallbackEventArgsBase e)
        {
            DateTime universalTime;
            HttpSessionState session;
            double num;
            string[] strArrays = e.Parameter.Split(new char[] { ':' });
            int num1 = int.Parse(strArrays[0]);
            switch (num1)
            {
                case 0:
                    {
                        if (this.tfirstname.Text.Length < 3)
                        {
                            this.errorPersonalInfo.Text = "Please enter Name";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.tlastname.Text.Length < 3)
                        {
                            this.errorPersonalInfo.Text = "Please enter Last Name";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.tphonenumber.Text.Length < 6)
                        {
                            this.errorPersonalInfo.Text = "Please enter valid Phone Number";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.IsValid(this.temail.Text))
                        {
                            if (strArrays[1] != "next")
                            {
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            this.Session["FirstName"] = this.tfirstname.Text;
                            this.Session["LastName"] = this.tlastname.Text;
                            this.Session["PhoneNumber"] = this.tphonenumber.Text;
                            this.Session["Email"] = this.temail.Text;
                            num1++;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.errorPersonalInfo.Text = "Please enter valid Email";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                case 1:
                    {
                        if (this.deStart.Date == DateTime.MinValue.Date)
                        {
                            this.errorDate.Text = "Please select arrival date.";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.deEnd.Date == DateTime.MinValue.Date)
                        {
                            this.errorDate.Text = "Please select departure date";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (strArrays[1] != "next")
                        {
                            this.tfirstname.Text = Convert.ToString(this.Session["FirstName"]);
                            this.tlastname.Text = Convert.ToString(this.Session["LastName"]);
                            this.tphonenumber.Text = Convert.ToString(this.Session["PhoneNumber"]);
                            this.temail.Text = Convert.ToString(this.Session["Email"]);
                            num1--;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            HttpSessionState str = this.Session;
                            universalTime = this.deStart.Date.ToUniversalTime();
                            str["FirstDate"] = universalTime.ToString();
                            HttpSessionState httpSessionStates = this.Session;
                            universalTime = this.deEnd.Date.ToUniversalTime();
                            httpSessionStates["SecondDate"] = universalTime.ToString();
                            DateTime dateTime = this.deStart.Date.ToUniversalTime();
                            universalTime = this.deEnd.Date;
                            this.recorrerfechas(dateTime, universalTime.ToUniversalTime());
                            int num2 = 0;
                            int num3 = 0;
                            foreach (fecha fecha in this.fechas)
                            {
                                if (!fecha.Alta)
                                {
                                    num3++;
                                }
                                else
                                {
                                    num2++;
                                }
                            }
                            this.Session["altas"] = num2.ToString();
                            this.Session["bajas"] = num3.ToString();
                            num1++;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                case 2:
                    {
                        if (strArrays[1] != "next")
                        {
                            this.deStart.Date = Convert.ToDateTime(Convert.ToString(this.Session["FirstDate"]));
                            this.deEnd.Date = Convert.ToDateTime(Convert.ToString(this.Session["SecondDate"]));
                            num1--;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.buttonExperience.Checked)
                        {
                            this.Session["TypeBooking"] = "Your Experience";
                            num1 = 5;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.buttonCamp.Checked)
                        {
                            this.Session["TypeBooking"] = "Camps";
                            num1 = 5;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.buttonGroup.Checked)
                        {
                            this.Session["TypeBooking"] = "Groups over 18 people";
                            num1 = 5;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (!this.buttonEvent.Checked)
                        {
                            if (!this.buttonCorporate.Checked)
                            {
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            this.Session["TypeBooking"] = "Corporate";
                            num1 = 5;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.Session["TypeBooking"] = "Event";
                            num1 = 5;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                case 3:
                    {
                        if (strArrays[1] != "next")
                        {
                            if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonExperience.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonCamp.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonGroup.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonEvent.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonCorporate.Checked = true;
                            }
                            num1--;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.tellusmore.Text.Length < 10)
                        {
                            this.errortellusmore.Text = "Please tell us more about your visit.";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.amount.Text.Length >= 1)
                        {
                            this.Session["Amount"] = this.amount.Text;
                            this.Session["Tellusmore"] = this.tellusmore.Text;
                            num1++;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.errortellusmore.Text = "Please enter amount of people information.";
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                case 4:
                    {
                        this.MultiView.ActiveViewIndex = num1;
                        Thread.Sleep(20);
                        return;
                    }
                case 5:
                    {
                        if (strArrays[1] != "next")
                        {
                            if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonExperience.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonCamp.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonGroup.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonEvent.Checked = true;
                            }
                            else if (this.Session["TypeBooking"] == null)
                            {
                                this.buttonCorporate.Checked = true;
                            }
                            num1 = 2;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else if (this.Teepes.Checked)
                        {
                            if (this.Session["altas"].ToString() != "1")
                            {
                                this.Session["TypeAccommodation"] = "Tepees";
                                num1++;
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            else
                            {
                                this.errorDays.Text = "For High Season the minimum stay is 2 nights.";
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                        }
                        else if (this.Yurtas.Checked)
                        {
                            if (this.Session["altas"].ToString() != "1")
                            {
                                this.Session["TypeAccommodation"] = "Yurtas";
                                num1++;
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            else
                            {
                                this.errorDays.Text = "For High Season the minimum stay is 2 nights.";
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                        }
                        else if (!this.Andalusian.Checked)
                        {
                            if (!this.none.Checked)
                            {
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            this.Session["TypeAccommodation"] = "None";
                            num1++;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.Session["TypeAccommodation"] = "Andalusian";
                            num1++;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                case 6:
                    {
                        if (strArrays[1] != "next")
                        {
                            num1--;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.Session["ACTIVITIES"] = null;
                            if (this.canopybutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Canopy - ");
                            }
                            if (this.arcbutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Arc Attack - ");
                            }
                            if (this.kayakbutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Kayak - ");
                            }
                            if (this.horsebutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Horse Riding - ");
                            }
                            if (this.kitebutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Kitesurf - ");
                            }
                            if (this.spartantrial.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Spartan Trail - ");
                            }
                            if (this.jetbutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Jet Surf - ");
                            }
                            if (this.paddlebutton.Checked)
                            {
                                session = this.Session;
                                session["ACTIVITIES"] = string.Concat(session["ACTIVITIES"], "Paddle Surf - ");
                            }
                            if (this.Session["ACTIVITIES"] != null)
                            {
                                this.Session["ACTIVITIES"] = this.Session["ACTIVITIES"].ToString().Substring(0, this.Session["ACTIVITIES"].ToString().Length - 3);
                            }
                            else
                            {
                                this.Session["ACTIVITIES"] = "None";
                            }
                            if (!this.ASPxCheckBox1.Checked || !this.ASPxCheckBox2.Checked)
                            {
                                this.errorActi.Text = "You need to check both boxes to continue.";
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            else if (this.Session["TypeAccommodation"] == null || this.Session["TypeAccommodation"] == null || this.Session["TypeBooking"] != null)
                            {
                                num1 = 3;
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            else if (this.Session["TypeAccommodation"] != null)
                            {
                                if (this.Session["TypeAccommodation"] != null)
                                {
                                    this.MultiView.ActiveViewIndex = num1;
                                    Thread.Sleep(20);
                                    return;
                                }
                                this.highdays.Value = this.Session["altas"].ToString();
                                this.lowdays.Value = this.Session["bajas"].ToString();
                                this.hiddenhigh12.Value = this.Session["highseason_yurta12"].ToString();
                                this.hiddenhigh34.Value = this.Session["highseason_yurta34"].ToString();
                                this.hiddenextracost.Value = this.Session["yurta_extrabed"].ToString();
                                this.hiddenlow12.Value = this.Session["lowseason_yurta12"].ToString();
                                this.hiddenlow34.Value = this.Session["lowseason_yurta34"].ToString();
                                this.typeofacco.Text = " YURTA";
                                this.activitiesliteral.Text = string.Concat(" ", this.Session["ACTIVITIES"].ToString());
                                this.literalname.Text = string.Concat(this.Session["FirstName"].ToString(), " ", this.Session["LastName"].ToString());
                                this.literalphone.Text = this.Session["PhoneNumber"].ToString();
                                this.literalemail.Text = this.Session["Email"].ToString();
                                this.Session["ServicesIncluded"] = "<br>Breakfast<br>Beds <br>Sheets<br>Electricity <br>Restroom with shower<br>Private Area and lake views <br>Pic-nic table<br>Use for 1 Kayak 2 person/day for 1 hour (from 10:00 to 12:00)";
                                this.Session["DontForget"] = "It is required to bring from home bathroom utilities that you may need, such as towels, gels, toothpaste, etc.";
                                Literal literal = this.arrivaldatelit;
                                universalTime = Convert.ToDateTime(Convert.ToString(this.Session["FirstDate"]));
                                literal.Text = universalTime.ToString("dd/MM/yyyy");
                                Literal str1 = this.departuradatelit;
                                universalTime = Convert.ToDateTime(Convert.ToString(this.Session["SecondDate"]));
                                str1.Text = universalTime.ToString("dd/MM/yyyy");
                                double num4 = (double)Convert.ToInt32(this.Session["altas"].ToString()) * Convert.ToDouble(this.Session["highseason_yurta12"].ToString());
                                double num5 = (double)Convert.ToInt32(this.Session["bajas"].ToString()) * Convert.ToDouble(this.Session["lowseason_yurta12"].ToString());
                                int num6 = Convert.ToInt32(this.Session["altas"].ToString()) + Convert.ToInt32(this.Session["bajas"].ToString());
                                ASPxLabel aSPxLabel = this.averagelabel;
                                num = (num4 + num5) / (double)num6;
                                aSPxLabel.Text = string.Concat(num.ToString(), " €");
                                num = num4 + num5;
                                this.total.Text = string.Concat(num.ToString(), " €");
                                num1++;
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                            else
                            {
                                this.highdays.Value = this.Session["altas"].ToString();
                                this.lowdays.Value = this.Session["bajas"].ToString();
                                this.hiddenhigh12.Value = this.Session["highseason_tepee12"].ToString();
                                this.hiddenhigh34.Value = this.Session["highseason_tepee34"].ToString();
                                this.hiddenextracost.Value = this.Session["tepee_extrabed"].ToString();
                                this.hiddenlow12.Value = this.Session["lowseason_tepee12"].ToString();
                                this.hiddenlow34.Value = this.Session["lowseason_tepee34"].ToString();
                                this.typeofacco.Text = " TEPEE";
                                this.activitiesliteral.Text = string.Concat(" ", this.Session["ACTIVITIES"].ToString());
                                this.literalname.Text = string.Concat(this.Session["FirstName"].ToString(), " ", this.Session["LastName"].ToString());
                                this.literalphone.Text = this.Session["PhoneNumber"].ToString();
                                this.literalemail.Text = this.Session["Email"].ToString();
                                this.Session["ServicesIncluded"] = "<br>Breakfast";
                                this.Session["DontForget"] = " <br>Bed sheets are available for hire (€6) if you do not bring your own sleeping bag. <br>It is required to bring from home bathroom utilities that you may need, such as towels, gels, toothpaste, etc. <br>The tepees are only available if weather permits.";
                                Literal literal1 = this.arrivaldatelit;
                                universalTime = Convert.ToDateTime(Convert.ToString(this.Session["FirstDate"]));
                                literal1.Text = universalTime.ToString("dd/MM/yyyy");
                                Literal str2 = this.departuradatelit;
                                universalTime = Convert.ToDateTime(Convert.ToString(this.Session["SecondDate"]));
                                str2.Text = universalTime.ToString("dd/MM/yyyy");
                                double num7 = (double)Convert.ToInt32(this.Session["altas"].ToString()) * Convert.ToDouble(this.Session["highseason_tepee12"].ToString());
                                double num8 = (double)Convert.ToInt32(this.Session["bajas"].ToString()) * Convert.ToDouble(this.Session["lowseason_tepee12"].ToString());
                                int num9 = Convert.ToInt32(this.Session["altas"].ToString()) + Convert.ToInt32(this.Session["bajas"].ToString());
                                ASPxLabel aSPxLabel1 = this.averagelabel;
                                num = (num7 + num8) / (double)num9;
                                aSPxLabel1.Text = string.Concat(num.ToString(), " €");
                                num = num7 + num8;
                                this.total.Text = string.Concat(num.ToString(), " €");
                                num1++;
                                this.MultiView.ActiveViewIndex = num1;
                                Thread.Sleep(20);
                                return;
                            }
                        }
                    }
                case 7:
                    {
                        if (strArrays[1] != "next")
                        {
                            if (this.Session["ACTIVITIES"].ToString().Contains("Canopy"))
                            {
                                this.canopybutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Arc Attack"))
                            {
                                this.arcbutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Kayak"))
                            {
                                this.kayakbutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Horse Riding"))
                            {
                                this.horsebutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Kitesurf"))
                            {
                                this.kitebutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Spartan"))
                            {
                                this.spartantrial.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Jet Surf"))
                            {
                                this.jetbutton.Checked = true;
                            }
                            if (this.Session["ACTIVITIES"].ToString().Contains("Paddle Surf"))
                            {
                                this.paddlebutton.Checked = true;
                            }
                            num1--;
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        else
                        {
                            this.PAYPAL_CONNECTION();
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                    }
                default:
                    {
                        if (strArrays[1] != "prev")
                        {
                            this.MultiView.ActiveViewIndex = num1;
                            Thread.Sleep(20);
                            return;
                        }
                        num1--;
                        this.MultiView.ActiveViewIndex = num1;
                        Thread.Sleep(20);
                        return;
                    }
            }
        }


        public void recorrerfechas(DateTime Arr, DateTime Dep)
        {
            while (Arr.ToUniversalTime() < Dep.ToUniversalTime())
            {
                this.fechas.Add(new fecha(this.compareDates(Arr.ToUniversalTime()), Arr.ToUniversalTime()));
                Arr.ToUniversalTime();
                Arr = Arr.ToUniversalTime().AddDays(1);
            }

        }

        public bool compareDates(DateTime comp)
        {
            DateTime universalTime = Convert.ToDateTime("2017-04-07").ToUniversalTime();
            DateTime dateTime = Convert.ToDateTime("2017-04-16").ToUniversalTime();
            DateTime universalTime1 = Convert.ToDateTime("2017-04-28").ToUniversalTime();
            DateTime dateTime1 = Convert.ToDateTime("2017-05-02").ToUniversalTime();
            DateTime universalTime2 = Convert.ToDateTime("2017-07-01").ToUniversalTime();
            DateTime dateTime2 = Convert.ToDateTime("2017-08-31").ToUniversalTime();
            if (comp.ToUniversalTime() >= universalTime.ToUniversalTime() && comp.ToUniversalTime() <= dateTime.ToUniversalTime())
            {
                return true;
            }
            if (comp.ToUniversalTime() >= universalTime1.ToUniversalTime() && comp.ToUniversalTime() <= dateTime1.ToUniversalTime())
            {
                return true;
            }
            if (comp.ToUniversalTime() >= universalTime2.ToUniversalTime() && comp.ToUniversalTime() <= dateTime2.ToUniversalTime())
            {
                return true;
            }
            return false;
        }

        public IRestResponse SendMessageBooking(string email, string name, string lastname, string emailfrom, string phonenumber, string typeofstay, string arrivaldate, string departuredate, string companyname, string website, string amount, string budget, string moreinformation)
        {
            string str = string.Concat(new string[] { "<html><head></head><body style=\"text-align:center;\"><p style=\"font-size: 20px\"> <br /><br />The following booking request was received:<br /><br />Message from: ", name, " ", lastname, "<br />Email: ", emailfrom, "<br />Phone Number: ", phonenumber, "<br />Type of Stay: ", typeofstay, "<br />Arrival Date: ", arrivaldate, "<br />Departure Date: ", departuredate, "<br />Departure Date: ", departuredate, "<br />Amount of people: ", amount, "<br />More information provided: ", moreinformation, "<br /></ p > </body></html>" });
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Lake Booking<wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", email);
            restRequest.AddParameter("subject", "Wakana Lake Booking Request");
            restRequest.AddParameter("html", str);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }


        public IRestResponse SendMessageBookingReceived(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string str = string.Concat(new string[] { "<html><head></head><body style=\"text-align:center;\"><p style=\"font-size: 15px\"> Your information for booking was received, we will contact you as soon as posible.<br /> Information provided:<br />From: ", name, "<br />Email: ", emailfrom, "<br />Phone Number: ", phonenumber, "<br />Message: ", message, "<br /></ p > </body></html>" });
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Lake Booking< <wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", email);
            restRequest.AddParameter("subject", "Your email was received.");
            restRequest.AddParameter("html", str);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }


        protected void rpFilmCollection_CustomJSProperties(object sender, CustomJSPropertiesEventArgs e)
        {
            e.Properties["cpPageIndex"] = this.MultiView.ActiveViewIndex;
            e.Properties["cpPageCount"] = this.MultiView.Views.Count;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.PAYPAL_CONNECTION();
        }

        protected RequestFlow flow;

        protected void RegisterSampleRequestFlow()
        {
            if (this.flow == null)
            {
                this.flow = new RequestFlow();
            }
            HttpContext.Current.Items["Flow"] = this.flow;
        }

        public void PAYPAL_CONNECTION()
        {
            double num = 0;
            int PersonasFromSpinner = 0;
            PersonasFromSpinner = Convert.ToInt32(this.spin.Number);

            //SETS NUMBER OF PERSONS ON SESSION
            this.Session["PERSONAS"] = PersonasFromSpinner.ToString();



            APIContext aPIContext = new APIContext((new OAuthTokenCredential(ConfigManager.Instance.GetProperties())).GetAccessToken());
            Payer payer = new Payer()
            {
                payment_method = "paypal"
            };

            //RANDOM SEED

            Convert.ToString((new Random()).Next(100000));


            //SET PAYPAL RETURN URLS
            RedirectUrls redirectUrl = new RedirectUrls()
            {
                cancel_url = "http://wakanalake.com/Booking_Cancel.aspx",
                return_url = "http://wakanalake.com/Booking_Success.aspx"
            };
            ItemList itemList = new ItemList()
            {
                items = new List<Item>()
            };

            #region LODI
            if (this.Session["TypeAccommodation"].ToString() == "Yurtas" && (PersonasFromSpinner == 1 || PersonasFromSpinner == 2))
            {
                this.Session["altascosto"] = this.Session["highseason_yurta12"].ToString();
                this.Session["bajascosto"] = this.Session["lowseason_yurta12"].ToString();
            }
            if (this.Session["TypeAccommodation"].ToString() == "Yurtas" && (PersonasFromSpinner == 3 || PersonasFromSpinner == 4))
            {
                this.Session["altascosto"] = this.Session["highseason_yurta34"].ToString();
                this.Session["bajascosto"] = this.Session["lowseason_yurta34"].ToString();
            }
            if (this.Session["TypeAccommodation"].ToString() == "Yurtas" && PersonasFromSpinner == 5)
            {
                this.Session["altascosto"] = Convert.ToDecimal(this.Session["highseason_yurta34"].ToString()) + (Convert.ToDecimal(this.Session["yurta_extrabed"].ToString()) * decimal.One);
                this.Session["bajascosto"] = Convert.ToDecimal(this.Session["lowseason_yurta34"].ToString()) + (Convert.ToDecimal(this.Session["yurta_extrabed"].ToString()) * decimal.One);
            }
            if (this.Session["TypeAccommodation"].ToString() == "Yurtas" && PersonasFromSpinner == 6)
            {
                this.Session["altascosto"] = Convert.ToDecimal(this.Session["highseason_yurta34"].ToString()) + (Convert.ToDecimal(this.Session["yurta_extrabed"].ToString()) * new decimal(2));
                this.Session["bajascosto"] = Convert.ToDecimal(this.Session["lowseason_yurta34"].ToString()) + (Convert.ToDecimal(this.Session["yurta_extrabed"].ToString()) * new decimal(2));
            }
            if (this.Session["TypeAccommodation"].ToString() == "Tepees" && (PersonasFromSpinner == 1 || PersonasFromSpinner == 2))
            {
                this.Session["altascosto"] = this.Session["highseason_tepee12"].ToString();
                this.Session["bajascosto"] = this.Session["lowseason_tepee12"].ToString();
            }
            if (this.Session["TypeAccommodation"].ToString() == "Tepees" && (PersonasFromSpinner == 3 || PersonasFromSpinner == 4))
            {
                this.Session["altascosto"] = this.Session["highseason_tepee34"].ToString();
                this.Session["bajascosto"] = this.Session["lowseason_tepee34"].ToString();
            }
            if (this.Session["TypeAccommodation"].ToString() == "Tepees" && PersonasFromSpinner == 5)
            {
                this.Session["altascosto"] = Convert.ToDecimal(this.Session["highseason_tepee34"].ToString()) + (Convert.ToDecimal(this.Session["tepee_extrabed"].ToString()) * decimal.One);
                this.Session["bajascosto"] = Convert.ToDecimal(this.Session["lowseason_tepee34"].ToString()) + (Convert.ToDecimal(this.Session["tepee_extrabed"].ToString()) * decimal.One);
            }
            if (this.Session["TypeAccommodation"].ToString() == "Tepees" && PersonasFromSpinner == 6)
            {
                this.Session["altascosto"] = Convert.ToDecimal(this.Session["highseason_tepee34"].ToString()) + (Convert.ToDecimal(this.Session["tepee_extrabed"].ToString()) * new decimal(2));
                this.Session["bajascosto"] = Convert.ToDecimal(this.Session["lowseason_tepee34"].ToString()) + (Convert.ToDecimal(this.Session["tepee_extrabed"].ToString()) * new decimal(2));
            }




            this.Session["HIGH_SEASON_DAYS"] = this.Session["altas"].ToString();
            this.Session["HIGH_SEASON_COST"] = this.Session["altascosto"].ToString();
            this.Session["LOW_SEASON_DAYS"] = this.Session["bajas"].ToString();
            this.Session["LOW_SEASON_COST"] = this.Session["bajascosto"].ToString();
            if (Convert.ToInt32(this.Session["altas"].ToString()) > 0)
            {
                itemList.items.Add(new Item()
                {
                    name = string.Concat(this.Session["TypeAccommodation"].ToString(), " High Season Stay"),
                    currency = "EUR",
                    price = this.Session["altascosto"].ToString(),
                    quantity = this.Session["altas"].ToString()
                });
                num = num + Convert.ToDouble(this.Session["altascosto"].ToString()) * Convert.ToDouble(this.Session["altas"].ToString());
            }
            if (Convert.ToInt32(this.Session["bajas"].ToString()) > 0)
            {
                itemList.items.Add(new Item()
                {
                    name = string.Concat(this.Session["TypeAccommodation"].ToString(), " Low Season Stay"),
                    currency = "EUR",
                    price = this.Session["bajascosto"].ToString(),
                    quantity = this.Session["bajas"].ToString()
                });
                num = num + Convert.ToDouble(this.Session["bajascosto"].ToString()) * Convert.ToDouble(this.Session["bajas"].ToString());
            }
            Details detail = new Details()
            {
                tax = "0",
                shipping = "0",
                subtotal = num.ToString()
            };
            Amount amount = new Amount()
            {
                currency = "EUR",
                total = num.ToString(),
                details = detail
            };
            this.Session["TOTAL"] = string.Concat(num.ToString(), " EUR");
            List<Transaction> transactions = new List<Transaction>()
            {
                new Transaction()
                {
                    description = "Transaction description.",
                    invoice_number = Common.GetRandomInvoiceNumber(),
                    amount = amount,
                    item_list = itemList
                }
            };
            List<Links>.Enumerator enumerator = (new Payment()
            {
                intent = "sale",
                payer = payer,
                redirect_urls = redirectUrl,
                transactions = transactions
            }).Create(aPIContext).links.GetEnumerator();
            while (enumerator.MoveNext())
            {
                Links current = enumerator.Current;
                if (!current.rel.ToLower().Trim().Equals("approval_url"))
                {
                    continue;
                }
                base.Response.Redirect(current.href);
            }
        }

        protected void ASPxButton1_Click1(object sender, EventArgs e)
        {
            this.PAYPAL_CONNECTION();
        }

        protected void loadAccommodationCostfromDB()
        {
            string str = "Select * from general";
            MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            mySqlConnection.Open();
            try
            {
                try
                {
                    MySqlDataReader mySqlDataReader = (new MySqlCommand(str, mySqlConnection)).ExecuteReader();
                    mySqlDataReader.Read();
                    this.Session["highseason_yurta12"] = mySqlDataReader[1].ToString();
                    this.Session["highseason_yurta34"] = mySqlDataReader[2].ToString();
                    this.Session["lowseason_yurta12"] = mySqlDataReader[3].ToString();
                    this.Session["lowseason_yurta34"] = mySqlDataReader[4].ToString();
                    this.Session["highseason_tepee12"] = mySqlDataReader[5].ToString();
                    this.Session["highseason_tepee34"] = mySqlDataReader[6].ToString();
                    this.Session["lowseason_tepee12"] = mySqlDataReader[7].ToString();
                    this.Session["lowseason_tepee34"] = mySqlDataReader[8].ToString();
                    this.Session["yurta_extrabed"] = mySqlDataReader[9].ToString();
                    this.Session["tepee_extrabed"] = mySqlDataReader[10].ToString();
                }
                catch
                {
                }
            }
            finally
            {
                mySqlConnection.Close();
            }
        }
    }
}





