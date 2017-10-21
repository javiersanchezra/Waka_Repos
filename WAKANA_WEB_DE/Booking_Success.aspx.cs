using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;
using DevExpress.Web;
using System.Net.Mail;
using RestSharp;
using RestSharp.Authenticators;
using MySql.Data.MySqlClient; using System.Configuration;
using System.Data;
using System.Globalization;

namespace WAKANA_WEB_DE
{
    public partial class Booking_Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            APIContext aPIContext = new APIContext((new OAuthTokenCredential(ConfigManager.Instance.GetProperties())).GetAccessToken());
            string item = base.Request.Params["guid"];
            string str = base.Request.Params["paymentId"];
            PaymentExecution paymentExecution = new PaymentExecution()
            {
                payer_id = base.Request.Params["PayerID"]
            };
            Payment payment = new Payment()
            {
                id = str
            };
            try
            {
                payment.Execute(aPIContext, paymentExecution);
                string[] strArrays = new string[27];
                strArrays[0] = "<table class=\"tg\">  <tr>    <th class=\"tg-yw4l\">Name of book</th>    <th class=\"tg-yw4l\">Name: ";
                strArrays[1] = this.Session["FirstName"].ToString();
                strArrays[2] = " ";
                strArrays[3] = this.Session["LastName"].ToString();
                strArrays[4] = "<br />Email: ";
                strArrays[5] = this.Session["Email"].ToString();
                strArrays[6] = "<br />Phone Number: ";
                strArrays[7] = this.Session["PhoneNumber"].ToString();
                strArrays[8] = "</th>  </tr>  <tr>    <td class=\"tg-yw4l\">Date of book</td>    <td class=\"tg-yw4l\"> ";
                DateTime utcNow = DateTime.UtcNow;
                strArrays[9] = utcNow.ToString("dd MMMM yyyy", new CultureInfo("en-US"));
                strArrays[10] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Check In</td>    <td class=\"tg-yw4l\">";
                utcNow = Convert.ToDateTime(this.Session["FirstDate"]);
                strArrays[11] = utcNow.ToString("dd MMMM yyyy", new CultureInfo("en-US"));
                strArrays[12] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Check Out</td>    <td class=\"tg-yw4l\">";
                utcNow = Convert.ToDateTime(this.Session["SecondDate"]);
                strArrays[13] = utcNow.ToString("dd MMMM yyyy", new CultureInfo("en-US"));
                strArrays[14] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Type of Accomodation</td>    <td class=\"tg-yw4l\">";
                strArrays[15] = this.Session["TypeAccommodation"].ToString();
                strArrays[16] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">N.º of people</td>    <td class=\"tg-yw4l\">";
                strArrays[17] = this.Session["PERSONAS"].ToString();
                strArrays[18] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Total cost</td>    <td class=\"tg-yw4l\">";
                strArrays[19] = this.Session["TOTAL"].ToString();
                strArrays[20] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Activities</td>    <td class=\"tg-yw4l\">";
                strArrays[21] = this.Session["ACTIVITIES"].ToString();
                strArrays[22] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Services included</td>    <td class=\"tg-yw4l\">";
                strArrays[23] = this.Session["ServicesIncluded"].ToString();
                strArrays[24] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Don´t forget</td>    <td class=\"tg-yw4l\">";
                strArrays[25] = this.Session["DontForget"].ToString();
                strArrays[26] = "</td>  </tr>  <tr>    <td class=\"tg-yw4l\">Cancelation policy</td>    <td class=\"tg-yw4l\">• If you cancel or modify the booking 10 days before arrival date, no fees will be charged by the establishment.<br>• If you cancel or modify the booking after deadline (less than 10 days from arrival), the establishment will charge 100% of the fee for the first night.<br>• If you don’t turn up, the establishment will charge the full stay.<br>• The establishment will charge 100% of the first night at least 10 days before arrival.</td>  </tr>  <tr>    <td class=\"tg-yw4l\">General conditions</td>    <td class=\"tg-yw4l\">• An identity document in place is required in order to stay at our establishment. (ID, Passport or Family book for children under 14 years).<br>• Group activities must be booked at least fifteen days before, due to organizational issues.<br>• It is required to bring from home bathroom utilities that you may need, such as towels, gels, toothpaste, etc.<br>• It is prohibited to introduce explosive substances or materials, flammable or any other kind that could cause damages or disturb the rest of clients. It is forbidden to light candles, oil lamps or any other kind of campfire.<br>• It is prohibited to bring animals without the direct authorization of the company.<br>• Dogs must remain on leads and properly identified with their corresponding documentation in order. (Vaccination booklet, insurance, or others). Also, big dogs or those considered potentially dangerous must be muzzled to walk around the premises.<br>• Wakana Lake will not be held responsible for lost or stolen items inside the facilities or accommodations.<br>• Wakana Lake will not be held responsible if certain activities cannot take place due to weather circumstances.<br>• It is not permitted to enter the premises with gas bottles or any food or drinks.<br>• Wakana Lake is a place for rest and relaxation therefore it is not permitted to make noise after 23:00 hrs in the accommodation area and after 00:00 hrs in the chill-out area.<br>• If you are a smoker, you must know that smoking is forbidden inside the accommodations. We kindly request inside the park, do not leave at any moment unattended cigarettes, and never throw the cigarette butt on the floor.<br>• The company reserves the right to add, update, modify or cancel, at any moment and without previous notification, the general sales conditions, any content, information and services.<br>• The company reserves the right to use images and videos taken inside the premises of Wakana Lake for marketing purposes<br><br>Wakana Lake notes for the activities:<br>• Closed sport shoes are required. Also consider that mud stains from the Spartan Trail activity are hard to get off.<br>• Canopy Park: Minimum height required is 1,40m, weight under 120 Kg and have good physical conditions.</td>  </tr>  </table> <br></br>Please call to make changes to your booking. </br>";
                string str1 = string.Concat(strArrays);
                this.SendMessageBookingAdmin(str1, "info@wakanalake.com");
                this.SendMessageBookingClient(str1, this.Session["Email"].ToString());
                try
                {
                    utcNow = DateTime.Now;
                    this.Insert(utcNow.ToString(), this.Session["FirstName"].ToString(), this.Session["LastName"].ToString(), this.Session["Email"].ToString(), this.Session["PhoneNumber"].ToString(), Convert.ToDateTime(Convert.ToString(this.Session["FirstDate"].ToString())), Convert.ToDateTime(Convert.ToString(this.Session["SecondDate"].ToString())), this.Session["TypeBooking"].ToString(), this.Session["TypeAccommodation"].ToString(), this.Session["ACTIVITIES"].ToString(), this.Session["PERSONAS"].ToString(), this.Session["HIGH_SEASON_DAYS"].ToString(), this.Session["HIGH_SEASON_COST"].ToString(), this.Session["LOW_SEASON_DAYS"].ToString(), this.Session["LOW_SEASON_COST"].ToString(), this.Session["TOTAL"].ToString(), base.Request.Params["paymentId"].ToString(), base.Request.Params["token"].ToString(), base.Request.Params["PayerID"].ToString());
                }
                catch (Exception exception)
                {
                }
                this.Literal1.Text = "<br>Thank you very much for your booking. <br><br>Please check your emails for the confirmation of your booking.";
            }
            catch
            {
                this.Literal1.Text = "This payment was already processed.";
            }
        }

        public IRestResponse SendMessageBookingAdmin(string textoemail, string emailto)
        {
            string str = string.Concat("<html><head><style type=\"text/css\">.tg  {border-collapse:collapse;border-spacing:0;}.tg td{font-family:Arial, sans-serif;font-size:14px;padding:8px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:8px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}.tg .tg-yw4l{vertical-align:top}</style></ head><body style=\"text-align:left;\"><p style=\"font-size: 15px\"> <br/>New booking from WakanaLake.com. <br> Please find below all details regarding the client's booking:<br> ", textoemail, "</p> </body></html>");
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Lake Booking<wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", emailto);
            restRequest.AddParameter("subject", "Wakana Lake Booking Information");
            restRequest.AddParameter("html", str);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }

        public IRestResponse SendMessageBookingClient(string textoemail, string emailto)
        {
            string[] str = new string[] { "<html><head><style type=\"text/css\">.tg  {border-collapse:collapse;border-spacing:0;}.tg td{font-family:Arial, sans-serif;font-size:14px;padding:8px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:8px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}.tg .tg-yw4l{vertical-align:top}</style></ head><body style=\"text-align:left;\"><p style=\"font-size: 15px\"> <br/>Dear ", this.Session["FirstName"].ToString(), " <br><br> Your reservation at WAKANA LAKE for ", this.Session["PERSONAS"].ToString(), " people, from ", null, null, null, null, null, null };
            DateTime dateTime = Convert.ToDateTime(this.Session["FirstDate"]);
            str[5] = dateTime.ToString("MMMM dd, yyyy", new CultureInfo("en-US"));
            str[6] = " to ";
            dateTime = Convert.ToDateTime(this.Session["SecondDate"]);
            str[7] = dateTime.ToString("MMMM dd, yyyy", new CultureInfo("en-US"));
            str[8] = " has been accepted. <br> Please find below all details regarding your booking:<br> ";
            str[9] = textoemail;
            str[10] = "<br><br><br><img src=\"http://i.imgur.com/RTGghDH.jpg\" alt=\"Wakana Lake Logo\" width=\"100\" height=\"100\"><br><a href=\"http://wakanalake.com\" >www.wakanalake.com</a><br><br>Tel: +34 687 929459 <br><br>Ctra. A-2226 Benalup - Los Barrios, km. 6,5 <br>11190 Benalup - Casas Viejas (Cádiz) <br>Spain <br><a href=\"https://www.google.com.mx/maps/place/WAKANA+LAKE/@36.31006,-5.7429637,21z/data=!4m5!3m4!1s0x0:0x1925801980d6b5aa!8m2!3d36.3100875!4d-5.7428419\">Find Us</a> <br><br><a href=\"https://www.facebook.com/wakanalake\"><img src=\"https://img.clipartfest.com/5f501c692bb9c6782efc7af0f4bcf349_facebook-icon-circle-vector-facebook-logo_512-512.png\" alt=\"Wakana Lake Facebook\" width=\"50\" height=\"50\"></a> <a href=\"https://twitter.com/WakanaLake\"><img src=\"https://www.seeklogo.net/wp-content/uploads/2016/11/twitter-icon-circle-blue-logo-preview.png\" alt=\"Wakana Lake Twitter\" width=\"50\" height=\"50\"></a> <br></p> </body></html>";
            string str1 = string.Concat(str);
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Lake Booking<wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", emailto);
            restRequest.AddParameter("subject", "Wakana Lake Booking Confirmation");
            restRequest.AddParameter("html", str1);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }

        //public IRestResponse SendMessageBooking(string emailto, string emailtext)
        //{
        //    string text = "<html><head></head><body style=\"text-align:center;\">"
        //    + "<p style=\"font-size: 20px\"> "
        //    + "<br />" + emailtext
        //    + "</ p > </body></html>";
        //    RestClient client = new RestClient();
        //    client.BaseUrl = new Uri("https://api.mailgun.net/v3");
        //    client.Authenticator =
        //            new HttpBasicAuthenticator("api",
        //                                       "key-35e7388efdd202c9d79d75912e0c38d8");
        //    RestRequest request = new RestRequest();
        //    request.AddParameter("domain",
        //                         "noreplymail.develop.mx", ParameterType.UrlSegment);
        //    request.Resource = "{domain}/messages";
        //    request.AddParameter("from", "Wakana Lake Booking<wakana@noreplymail.develop.mx>");
        //    request.AddParameter("to", emailto);

        //    request.AddParameter("subject", "Wakana Lake Booking Information");

        //    request.AddParameter("html", text);
        //    request.Method = Method.POST;
        //    return client.Execute(request);
        //}

        public void Insert(string bookingdate, string FirstName, string LastName, string Email, string PhoneNumber, DateTime arrival, DateTime Departure, string TypeofStay, string TypeAccommodation, string Activities, string Persons, string HIGH_SEASON_D, string HIGH_SEASON_C, string LOW_SEASON_D, string LOW_SEASON_C, string TOTAL, string PAYMENT_ID, string PAYPAL_TOK, string PAYPAL_PAYERID)
        {
            MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            mySqlConnection.Open();
            MySqlCommand mySqlCommand = new MySqlCommand("INSERT INTO bookings ( `Booking Date`  , `First Name`  ,`Last Name`, Email  ,`Phone Number`  ,`Arrival Date`  ,`Departure Date`  ,`Type of Stay`  ,`Type Accomodation`  ,`Activities Selected`  ,`Persons` ,`HIGH_SEASON_DAYS` ,`HIGH_SEASON_COST` ,`LOW_SEASON_DAYS` ,`LOW_SEASON_COST` ,`TOTAL` ,`PAYPAL_PAYMENT_ID` ,`PAYPAL_TOKEN_ID` ,`PAYPAL_PAYER_ID` ) VALUES (NOW()  ,@FirstName  ,@LastName  ,@Email ,@PhoneNumber  ,@ArrivalDate  ,@DepartureDate  ,@TypeofStay  ,@TypeAccomodation  ,@ActivitiesSelected  ,@Persons ,@HIGH_SEASON_DAYS ,@HIGH_SEASON_COST ,@LOW_SEASON_DAYS ,@LOW_SEASON_COST ,@TOTAL ,@PAYPAL_PAYMENT_ID ,@PAYPAL_TOKEN_ID ,@PAYPAL_PAYER_ID ) ", mySqlConnection);
            mySqlCommand.Parameters.AddWithValue("@BookingDate", bookingdate);
            mySqlCommand.Parameters.AddWithValue("@FirstName", FirstName);
            mySqlCommand.Parameters.AddWithValue("@LastName", LastName);
            mySqlCommand.Parameters.AddWithValue("@Email", Email);
            mySqlCommand.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            mySqlCommand.Parameters.AddWithValue("@ArrivalDate", arrival);
            mySqlCommand.Parameters.AddWithValue("@DepartureDate", Departure);
            mySqlCommand.Parameters.AddWithValue("@TypeofStay", TypeofStay);
            mySqlCommand.Parameters.AddWithValue("@TypeAccomodation", TypeAccommodation);
            mySqlCommand.Parameters.AddWithValue("@ActivitiesSelected", Activities);
            mySqlCommand.Parameters.AddWithValue("@Persons", Persons);
            mySqlCommand.Parameters.AddWithValue("@HIGH_SEASON_DAYS", HIGH_SEASON_D);
            mySqlCommand.Parameters.AddWithValue("@HIGH_SEASON_COST", HIGH_SEASON_C);
            mySqlCommand.Parameters.AddWithValue("@LOW_SEASON_DAYS", LOW_SEASON_D);
            mySqlCommand.Parameters.AddWithValue("@LOW_SEASON_COST", LOW_SEASON_C);
            mySqlCommand.Parameters.AddWithValue("@TOTAL", TOTAL);
            mySqlCommand.Parameters.AddWithValue("@PAYPAL_PAYMENT_ID", PAYMENT_ID);
            mySqlCommand.Parameters.AddWithValue("@PAYPAL_TOKEN_ID", PAYPAL_TOK);
            mySqlCommand.Parameters.AddWithValue("@PAYPAL_PAYER_ID", PAYPAL_PAYERID);
            mySqlCommand.ExecuteNonQuery();
            mySqlConnection.Close();
        }


        public IRestResponse SendMessageBookingReceived(string email, string textem, string emailfrom)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 15px\"> Thank you for your booking on Wakana Lake" + "<br />"

                + textem

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
            request.AddParameter("to", emailfrom);

            request.AddParameter("subject", "Your booking was received.");
            //request.AddParameter("text", text);
            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }
    }
}