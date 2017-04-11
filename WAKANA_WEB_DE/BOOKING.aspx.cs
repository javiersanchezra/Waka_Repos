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
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;




namespace WAKANA_WEB_DE
{
    public partial class BOOKING : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            deEnd.MinDate = DateTime.Today;
            deStart.MinDate = DateTime.Today;
            string payerId = Request.Params["PayerID"];
            this.RegisterSampleRequestFlow();
            // ### Api Context
            // Pass in a `APIContext` object to authenticate 
            // the call and to send a unique request id 
            // (that ensures idempotency). The SDK generates
            // a request id if you do not pass one explicitly. 
            // See [Configuration.cs](/Source/Configuration.html) to know more about APIContext.
            var apiContext = Configuration.GetAPIContext();

            if (!string.IsNullOrEmpty(payerId))
            {
                var guid = Request.Params["guid"];

                // ^ Ignore workflow code segment
                #region Track Workflow
                this.flow = Session["flow-" + guid] as RequestFlow;
                this.RegisterSampleRequestFlow();
                this.flow.RecordApproval("PayPal payment approved successfully.");
                #endregion

                // Using the information from the redirect, setup the payment to execute.
                var paymentId = Request.Params["paymentId"];
                var paymentExecution = new PaymentExecution() { payer_id = payerId };
                var payment = new Payment() { id = paymentId };

                // ^ Ignore workflow code segment
                #region Track Workflow
                this.flow.AddNewRequest("Execute PayPal payment", payment);
                #endregion

                // Execute the payment.
                var executedPayment = payment.Execute(apiContext, paymentExecution);
                // ^ Ignore workflow code segment
                #region Track Workflow
                this.flow.RecordResponse(executedPayment);
                #endregion

                // For more information, please visit [PayPal Developer REST API Reference](https://developer.paypal.com/docs/api/).
            }

        }
        public bool IsValid(string emailaddress)
        {
            try
            {
                MailAddress m = new MailAddress(emailaddress);

                return true;
            }
            catch
            {
                return false;
            }
        }
        List<fecha> fechas = new List<fecha>();




        protected void CallbackPanel_Callback(object sender, CallbackEventArgsBase e)
        {
            string[] parameters = e.Parameter.Split(':');
            int currentPageIndex = int.Parse(parameters[0]);
            switch (currentPageIndex)
            {
                case 0:
                    if (tfirstname.Text.Length < 3)
                    {
                        errorPersonalInfo.Text = "Please enter Name";
                    }
                    else if (tlastname.Text.Length < 3)
                    {
                        errorPersonalInfo.Text = "Please enter Last Name";
                    }
                    else if (tphonenumber.Text.Length < 6)
                    {
                        errorPersonalInfo.Text = "Please enter valid Phone Number";
                    }
                    else if (!IsValid(temail.Text))
                    {
                        errorPersonalInfo.Text = "Please enter valid Email";
                    }

                    else if (parameters[1] == "next")
                    {
                        Session["FirstName"] = tfirstname.Text;
                        Session["LastName"] = tlastname.Text;
                        Session["PhoneNumber"] = tphonenumber.Text;
                        Session["Email"] = temail.Text;

                        currentPageIndex++;
                    }


                    break;


                case 1:


                    if (deStart.Date == DateTime.MinValue.Date)
                    {
                        errorDate.Text = "Please select arrival date.";
                    }
                    else if (deEnd.Date == DateTime.MinValue.Date)
                    {
                        errorDate.Text = "Please select departure date";
                    }
                    else if (parameters[1] == "next")
                    {
                        Session["FirstDate"] = deStart.Date.ToUniversalTime().ToString();
                        Session["SecondDate"] = deEnd.Date.ToUniversalTime().ToString();
                        recorrerfechas(deStart.Date.ToUniversalTime(), deEnd.Date.ToUniversalTime());
                        int altas = 0;
                        int bajas = 0;
                        foreach (fecha f in fechas)
                        {
                            if (f.Alta == true)
                                altas++;
                            else
                                bajas++;
                        }
                        Session["altas"] = altas.ToString();
                        Session["bajas"] = bajas.ToString();
                        //Session["altas"] = 0;
                        //Session["bajas"] = (deEnd.Date.ToUniversalTime() - deStart.Date.ToUniversalTime()).TotalDays;
                        currentPageIndex++;
                    }
                    else
                    {
                        tfirstname.Text = Convert.ToString(Session["FirstName"]);
                        tlastname.Text = Convert.ToString(Session["LastName"]);
                        tphonenumber.Text = Convert.ToString(Session["PhoneNumber"]);
                        temail.Text = Convert.ToString(Session["Email"]);

                        currentPageIndex--;
                    }
                    break;

                case 2:
                    if (parameters[1] == "next")
                    {
                        if (buttonCamp.Checked)
                        {
                            Session["TypeBooking"] = "Camp";
                            currentPageIndex = 5;

                        }
                        else if (buttonOver.Checked)
                        {
                            Session["TypeBooking"] = "Over";
                            currentPageIndex = 5;

                        }
                        else if (buttonGroup.Checked)
                        {
                            Session["TypeBooking"] = "Group";
                            currentPageIndex++;
                        }
                        else if (buttonEvent.Checked)
                        {
                            Session["TypeBooking"] = "Event";
                            currentPageIndex++;
                        }
                        else if (buttonDay.Checked)
                        {
                            Session["TypeBooking"] = "Day";
                            currentPageIndex = 5;

                        }
                        else if (buttonCorporate.Checked)
                        {
                            Session["TypeBooking"] = "Corporate";
                            currentPageIndex++;
                        }

                    }
                    else
                    {
                        deStart.Date = Convert.ToDateTime(Convert.ToString(Session["FirstDate"]));
                        deEnd.Date = Convert.ToDateTime(Convert.ToString(Session["SecondDate"]));

                        currentPageIndex--;
                    }
                    break;


                case 3:

                    if (parameters[1] == "next")
                    {

                        if (companyname.Text.Length < 3)
                        {
                            errortellusmore.Text = "Please enter Company name";
                        }
                        else
                        {
                            Session["CompanyName"] = companyname.Text;
                            Session["Website"] = website.Text;
                            Session["Amount"] = amount.Text;
                            Session["Budget"] = budget.Text;
                            Session["Tellusmore"] = tellusmore.Text;

                            //Session["FirstName"] = tfirstname.Text;
                            //Session["LastName"] = tlastname.Text;
                            //Session["PhoneNumber"] = tphonenumber.Text;
                            //Session["Email"] = temail.Text;
                            SendMessageBooking("jaavier.sanchez@gmail.com", Session["FirstName"].ToString(), Session["LastName"].ToString(),
                                Session["Email"].ToString(), Session["PhoneNumber"].ToString(), Session["TypeBooking"].ToString(), Session["FirstDate"].ToString(), Session["SecondDate"].ToString(),
                                Session["CompanyName"].ToString(), Session["Website"].ToString(), Session["Amount"].ToString(), Session["Budget"].ToString(), Session["Tellusmore"].ToString());
                            currentPageIndex++;

                        }
                    }
                    else
                    {
                        if (Session["TypeBooking"] == "Camp")
                        {
                            buttonCamp.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Over")
                        {
                            buttonOver.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Group")
                        {
                            buttonGroup.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Event")
                        {
                            buttonEvent.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Day")
                        {
                            buttonDay.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Corporate")
                        {
                            buttonCorporate.Checked = true;
                        }
                        currentPageIndex--;
                    }
                    break;
                case 4:




                    break;

                case 5:

                    if (parameters[1] == "next")
                    {

                        if (Teepes.Checked)
                        {
                            Session["TypeAccommodation"] = "Teepes";
                     
                            currentPageIndex++;
                        }
                        else if (Yurtas.Checked)
                        {
                            Session["TypeAccommodation"] = "Yurtas";
                            currentPageIndex++;
                        }
                        else if (Andalusian.Checked)
                        {
                            Session["TypeAccommodation"] = "Andalusian";
                            currentPageIndex = 3;
                        }



                    }
                    else
                    {
                        if (Session["TypeBooking"] == "Camp")
                        {
                            buttonCamp.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Over")
                        {
                            buttonOver.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Group")
                        {
                            buttonGroup.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Event")
                        {
                            buttonEvent.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Day")
                        {
                            buttonDay.Checked = true;
                        }
                        else if (Session["TypeBooking"] == "Corporate")
                        {
                            buttonCorporate.Checked = true;
                        }
                        currentPageIndex = 2;
                       
                    }

                    break;
                case 6:

                    if (parameters[1] == "next")
                    {
                        if (canopybutton.Checked)
                            Session["ACTIVITIES"] += "Canopy - ";
                        if (arcbutton.Checked)
                            Session["ACTIVITIES"] += "Arc Attack - ";
                        if (kayakbutton.Checked)
                            Session["ACTIVITIES"] += "Kayak - ";
                        if (kitebutton.Checked)
                            Session["ACTIVITIES"] += "Kite & Wind Surf - ";
                        if (horsebutton.Checked)
                            Session["ACTIVITIES"] += "Horse Riding - ";
                        if (swimbutton.Checked)
                            Session["ACTIVITIES"] += "Swimming - ";

                        if (Session["ACTIVITIES"] != null)
                        {
                            if (Session["TypeAccommodation"] == "Teepes")
                            {
                                typeofacco.Text = " TEEPE";
                                highdays.Text = Session["altas"].ToString();
                                lowdays.Text = Session["bajas"].ToString();
                                Session["altascosto"] = "155";
                                highcost.Text = Session["altascosto"].ToString();
                                Session["bajascosto"] = "140";
                                lowcost.Text = Session["bajascosto"].ToString();
                                total.Text = ((Convert.ToInt32(Session["altas"].ToString()) * 155) + (Convert.ToInt32(Session["bajas"].ToString()) * 140)).ToString();
                                currentPageIndex++;
                            }
                            else if (Session["TypeAccommodation"] == "Yurtas")
                            {
                                typeofacco.Text = " YURTA";
                                highdays.Text = Session["altas"].ToString();
                                lowdays.Text = Session["bajas"].ToString();
                                Session["altascosto"] = "195";
                                highcost.Text = Session["altascosto"].ToString();
                                Session["bajascosto"] = "180";
                                lowcost.Text = Session["bajascosto"].ToString();
                                total.Text = ((Convert.ToInt32(Session["altas"].ToString()) * 195) + (Convert.ToInt32(Session["bajas"].ToString()) * 180)).ToString();
                                currentPageIndex++;
                            }

                        }
                        else { errorActi.Text = "Please select at least 1 activity."; }

                    }
                    else
                    {
                        currentPageIndex--;
                    }
                    break;
                case 7:
                    if (parameters[1] == "next")
                    {


                        currentPageIndex++;


                    }
                    else
                    {
                        
                            if (Session["ACTIVITIES"].ToString().Contains("Canopy"))
                                canopybutton.Checked = true;
                            if (Session["ACTIVITIES"].ToString().Contains("Arc Attack"))
                                arcbutton.Checked = true;
                            if (Session["ACTIVITIES"].ToString().Contains("Kayak"))
                                kayakbutton.Checked = true;
                            if (Session["ACTIVITIES"].ToString().Contains("Kite & Wind Surf"))
                                kitebutton.Checked = true;
                            if (Session["ACTIVITIES"].ToString().Contains("Horse Riding"))
                                horsebutton.Checked = true;
                            if (Session["ACTIVITIES"].ToString().Contains("Swimming"))
                                swimbutton.Checked = true;
                            currentPageIndex--;
                    }





                    break;
                default:
                    if (parameters[1] == "prev")

                        { 



                        //Session["T8"] = t5.Text;
                        //t4.Text = Convert.ToString(Session["T6"]);
                        currentPageIndex--;
                    }
                    break;

            }



            MultiView.ActiveViewIndex = currentPageIndex;
            System.Threading.Thread.Sleep(20);
        }



        public void recorrerfechas(DateTime Arr, DateTime Dep)
        {

            while (Arr.ToUniversalTime() < Dep.ToUniversalTime())
            {
                
                fechas.Add(new fecha(compareDates(Arr.ToUniversalTime()), Arr.ToUniversalTime()));
                Arr.ToUniversalTime();
                Arr = Arr.ToUniversalTime().AddDays(1);
              
            }

        }

        public bool compareDates(DateTime comp)
        {
            //DateTime A_in = Convert.ToDateTime("07/04/2017").ToUniversalTime();
            //DateTime A_fin = Convert.ToDateTime("16/04/2017").ToUniversalTime();
            //DateTime B_in = Convert.ToDateTime("28/04/2017").ToUniversalTime();
            //DateTime B_fin = Convert.ToDateTime("02/05/2017").ToUniversalTime();
            //DateTime C_in = Convert.ToDateTime("01/07/2017").ToUniversalTime();
            //DateTime C_fin = Convert.ToDateTime("31/08/2017").ToUniversalTime();
            DateTime A_in = Convert.ToDateTime("2017-04-07").ToUniversalTime();
            DateTime A_fin = Convert.ToDateTime("2017-04-16").ToUniversalTime();
            DateTime B_in = Convert.ToDateTime("2017-04-28").ToUniversalTime();
            DateTime B_fin = Convert.ToDateTime("2017-05-02").ToUniversalTime();
            DateTime C_in = Convert.ToDateTime("2017-07-01").ToUniversalTime();
            DateTime C_fin = Convert.ToDateTime("2017-08-31").ToUniversalTime();
            if (comp.ToUniversalTime() >= A_in.ToUniversalTime() && comp.ToUniversalTime() <= A_fin.ToUniversalTime())
                return true;

            else if (comp.ToUniversalTime() >= B_in.ToUniversalTime() && comp.ToUniversalTime() <= B_fin.ToUniversalTime())
                return true;

            else if (comp.ToUniversalTime() >= C_in.ToUniversalTime() && comp.ToUniversalTime() <= C_fin.ToUniversalTime())
                return true;
            else
                return false;
        }
        public IRestResponse SendMessageBooking(string email, string name, string lastname, string emailfrom, string phonenumber, string typeofstay,
            string arrivaldate, string departuredate, string companyname, string website, string amount, string budget, string moreinformation)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 20px\"> "
            + "<br />" + "<br />The following booking request was received:" + "<br />" + "<br />"
                + "Message from: " + name + " " + lastname
              + "<br />"
                 + "Email: " + emailfrom
                  + "<br />"
                  + "Phone Number: " + phonenumber
                  + "<br />"
                   + "Type of Stay: " + typeofstay
                  + "<br />"
                    + "Arrival Date: " + arrivaldate
                  + "<br />"
                    + "Departure Date: " + departuredate
                  + "<br />"

                    + "Company Name: " + companyname
                  + "<br />"

                    + "Website of Company: " + website
                  + "<br />"
                    + "Amount of people: " + amount
                  + "<br />"
                    + "Budget: " + budget
                  + "<br />"
                    + "More information provided: " + moreinformation
                  + "<br />"
            + "</ p > </body></html>";
            RestClient client = new RestClient();
            client.BaseUrl = new Uri("https://api.mailgun.net/v3");
            client.Authenticator =
                    new HttpBasicAuthenticator("api",
                                               "key-35e7388efdd202c9d79d75912e0c38d8");
            RestRequest request = new RestRequest();
            request.AddParameter("domain",
                                 "noreplymail.develop.mx", ParameterType.UrlSegment);
            request.Resource = "{domain}/messages";
            request.AddParameter("from", "Wakana Lake Booking<wakana@noreplymail.develop.mx>");
            request.AddParameter("to", email);

            request.AddParameter("subject", "Wakana Lake Booking Request");

            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }


        public IRestResponse SendMessageBookingReceived(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 15px\"> Your information for booking was received, we will contact you as soon as posible.<br /> Information provided:" + "<br />"

                + "From: " + name
                + "<br />"
                 + "Email: " + emailfrom
                  + "<br />"
                  + "Phone Number: " + phonenumber
                  + "<br />"
                   + "Message: " + message
                  + "<br />"

            + "</ p > </body></html>";
            RestClient client = new RestClient();
            client.BaseUrl = new Uri("https://api.mailgun.net/v3");
            client.Authenticator =
                    new HttpBasicAuthenticator("api",
                                               "key-35e7388efdd202c9d79d75912e0c38d8");
            RestRequest request = new RestRequest();
            request.AddParameter("domain",
                                 "noreplymail.develop.mx", ParameterType.UrlSegment);
            request.Resource = "{domain}/messages";
            request.AddParameter("from", "Wakana Lake Booking< <wakana@noreplymail.develop.mx>");
            request.AddParameter("to", email);

            request.AddParameter("subject", "Your email was received.");
            //request.AddParameter("text", text);
            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }



        protected void rpFilmCollection_CustomJSProperties(object sender,
            CustomJSPropertiesEventArgs e)
        {
            e.Properties["cpPageIndex"] = MultiView.ActiveViewIndex;
            e.Properties["cpPageCount"] = MultiView.Views.Count;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            RunSample();
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
        public void RunSample()
        {
            var totalint = 0;
          
            int personas = 0;
            personas = Convert.ToInt32(spin.Number);
            Session["PERSONAS"] = personas.ToString();
            if (personas == 5)
            {
                personas = 30;
            }
            else if (personas == 6)
            {
                personas = 60;
            }
            else
            {
                personas = 0;
            }
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);



            var payer = new Payer() { payment_method = "paypal" };

            var guid = Convert.ToString((new Random()).Next(100000));
            var redirUrls = new RedirectUrls()
            {
                cancel_url = "http://wakanalake.com/Booking_Cancel.aspx",
                return_url = "http://wakanalake.com/Booking_Success.aspx"
            };

            
            var itemList = new ItemList()
            {
                items = new List<Item>()
            };
            Session["HIGH_SEASON_DAYS"] = Session["altas"].ToString();

            Session["HIGH_SEASON_COST"] = (Convert.ToInt32(Session["altascosto"].ToString()) + Convert.ToInt32(personas)).ToString();

            Session["LOW_SEASON_DAYS"] = Session["bajas"].ToString();

            Session["LOW_SEASON_COST"] = (Convert.ToInt32(Session["bajascosto"].ToString()) + Convert.ToInt32(personas)).ToString();


            if (Convert.ToInt32(Session["altas"].ToString()) > 0)
            {

                itemList.items.Add(new Item()
                {
                    name = Session["TypeAccommodation"].ToString() + " High Season Stay",
                    currency = "EUR",
                    price = (Convert.ToInt32(Session["altascosto"].ToString()) + Convert.ToInt32(personas)).ToString(),
                    quantity = Session["altas"].ToString()
                });
                totalint = totalint + ((Convert.ToInt32(Session["altascosto"].ToString()) + personas) * Convert.ToInt32(Session["altas"].ToString()));

            }
            if (Convert.ToInt32(Session["bajas"].ToString()) > 0)
            {
                itemList.items.Add(new Item()
                {
                    name = Session["TypeAccommodation"].ToString() + " Low Season Stay",
                    currency = "EUR",
                    price = (Convert.ToInt32(Session["bajascosto"].ToString()) + Convert.ToInt32(personas)).ToString(),
                    quantity = Session["bajas"].ToString()
                });

                totalint = totalint + ((Convert.ToInt32(Session["bajascosto"].ToString()) + personas) * Convert.ToInt32(Session["bajas"].ToString()));

            }




            var details = new Details()
            {
                tax = "0",
                shipping = "0",
                subtotal = totalint.ToString()
            };

            var amount = new Amount()
            {
                currency = "EUR",
                total = totalint.ToString(), // Total must be equal to sum of shipping, tax and subtotal.
                details = details
            };
            Session["TOTAL"] = totalint.ToString() + "EUR";
            var transactionList = new List<Transaction>();

            transactionList.Add(new Transaction()
            {
                description = "Transaction description.",
                invoice_number = Common.GetRandomInvoiceNumber(),
                amount = amount,
                item_list = itemList
            });

            var payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                redirect_urls = redirUrls,
                transactions = transactionList
            };


            var createdPayment = payment.Create(apiContext);

            var links = createdPayment.links.GetEnumerator();
            while (links.MoveNext())
            {
                var link = links.Current;
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }


        }

        

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            RunSample();    
        }
    }
}
    public class fecha
{
    bool alta;
    DateTime date;

    public fecha(bool alta, DateTime date)
    {
        this.alta = alta;
        this.date = date;
    }

    public bool Alta
    {
        get
        {
            return alta;
        }

        set
        {
            alta = value;
        }
    }

    public DateTime Date
    {
        get
        {
            return date;
        }

        set
        {
            date = value;
        }
    }
}



