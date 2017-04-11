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

namespace WAKANA_WEB_DE
{
    public partial class Booking_Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            var guid = Request.Params["guid"];

            // Using the information from the redirect, setup the payment to execute.

            var paymentId = Request.Params["paymentId"];
            var paymentExecution = new PaymentExecution() { payer_id = Request.Params["PayerID"] };
            var payment = new Payment() { id = paymentId };
            try
            {
                // Execute the payment.
                var executedPayment = payment.Execute(apiContext, paymentExecution);
             
                //SUCCESFULL BOOKED TEXT
                string booked = Session["FirstName"] + ", thank you for your payment.<br /> You booked the following:<br /><br />" + Session["TypeAccommodation"].ToString() + "<br /><br />" + "Arrival Date: " + Convert.ToDateTime(Session["FirstDate"]).ToString("MMMM dd, yyyy") +
                    "<br /><br />" + "Departure Date: " + Convert.ToDateTime(Session["SecondDate"]).ToString("MMMM dd, yyyy") + "<br /><br />Activities Selected" + "<br /><br />" + Session["ACTIVITIES"].ToString().Replace(" - ", "<br />").Replace(" - ", "<br />").Replace(" - ", "<br />").Replace(" - ", "<br />").Replace(" - ", "<br />").Replace(" - ", "<br />");

                //SEND EMAIL TO USER 
                SendMessageBooking(Session["Email"].ToString(), booked);

                try
                {
                    //INSERT THE BOOKING INTO THE WAKANA DATABASE
                    Insert(DateTime.Now.ToString(), Session["FirstName"].ToString(), Session["LastName"].ToString(), Session["Email"].ToString(),
                        Session["PhoneNumber"].ToString(), Convert.ToDateTime(Convert.ToString(Session["FirstDate"].ToString())), Convert.ToDateTime(Convert.ToString(Session["SecondDate"].ToString())), Session["TypeBooking"].ToString(), Session["TypeAccommodation"].ToString(), Session["ACTIVITIES"].ToString(), Session["PERSONAS"].ToString(), Session["HIGH_SEASON_DAYS"].ToString(),
                        Session["HIGH_SEASON_COST"].ToString(), Session["LOW_SEASON_DAYS"].ToString(), Session["LOW_SEASON_COST"].ToString(), Session["TOTAL"].ToString(),
                        Request.Params["paymentId"].ToString(), Request.Params["token"].ToString(), Request.Params["PayerID"].ToString());
                }
                catch (Exception ex) { /*booked = ex.ToString();*/ }


                Literal1.Text = booked;
            }
            catch
            {
                string booked = "This payment was already processed.";
                Literal1.Text = booked;
            }
        }

        public IRestResponse SendMessageBooking(string emailto, string emailtext)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 20px\"> "
            + "<br />" + emailtext
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
            request.AddParameter("to", emailto);

            request.AddParameter("subject", "Wakana Lake Booking Information");

            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }


        public void Insert(string bookingdate, string FirstName, string LastName, string Email, string PhoneNumber, DateTime arrival, DateTime Departure, string TypeofStay,
            string TypeAccommodation, string Activities, string Persons, string HIGH_SEASON_D , string HIGH_SEASON_C, string LOW_SEASON_D, string LOW_SEASON_C, string TOTAL,
            string PAYMENT_ID, string PAYPAL_TOK, string PAYPAL_PAYERID)
        {
            string que = "INSERT INTO bookings ( `Booking Date`  , `First Name`  ,`Last Name`, Email  ,`Phone Number`  ,`Arrival Date`  ,`Departure Date`  ,`Type of Stay`  ,`Type Accomodation`  ,`Activities Selected`  ,`Persons` ,`HIGH_SEASON_DAYS` ,`HIGH_SEASON_COST` ,`LOW_SEASON_DAYS` ,`LOW_SEASON_COST` ,`TOTAL` ,`PAYPAL_PAYMENT_ID` ,`PAYPAL_TOKEN_ID` ,`PAYPAL_PAYER_ID` ) VALUES (NOW()  ,@FirstName  ,@LastName  ,@Email ,@PhoneNumber  ,@ArrivalDate  ,@DepartureDate  ,@TypeofStay  ,@TypeAccomodation  ,@ActivitiesSelected  ,@Persons ,@HIGH_SEASON_DAYS ,@HIGH_SEASON_COST ,@LOW_SEASON_DAYS ,@LOW_SEASON_COST ,@TOTAL ,@PAYPAL_PAYMENT_ID ,@PAYPAL_TOKEN_ID ,@PAYPAL_PAYER_ID ) ";


             MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            con.Open();
            MySqlCommand com = new MySqlCommand(que, con);
            com.Parameters.AddWithValue("@BookingDate", bookingdate);
            com.Parameters.AddWithValue("@FirstName", FirstName);
            com.Parameters.AddWithValue("@LastName", LastName);
            com.Parameters.AddWithValue("@Email", Email);
            com.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            com.Parameters.AddWithValue("@ArrivalDate", arrival.ToUniversalTime().ToString());
            com.Parameters.AddWithValue("@DepartureDate", Departure.ToUniversalTime().ToString());
            com.Parameters.AddWithValue("@TypeofStay", TypeofStay);
            com.Parameters.AddWithValue("@TypeAccomodation", TypeAccommodation);
            com.Parameters.AddWithValue("@ActivitiesSelected", Activities);
            com.Parameters.AddWithValue("@Persons", Persons);
            com.Parameters.AddWithValue("@HIGH_SEASON_DAYS", HIGH_SEASON_D);
            com.Parameters.AddWithValue("@HIGH_SEASON_COST", HIGH_SEASON_C);
            com.Parameters.AddWithValue("@LOW_SEASON_DAYS", LOW_SEASON_D);
            com.Parameters.AddWithValue("@LOW_SEASON_COST", LOW_SEASON_C);
            com.Parameters.AddWithValue("@TOTAL", TOTAL);
            com.Parameters.AddWithValue("@PAYPAL_PAYMENT_ID", PAYMENT_ID);
            com.Parameters.AddWithValue("@PAYPAL_TOKEN_ID", PAYPAL_TOK);
            com.Parameters.AddWithValue("@PAYPAL_PAYER_ID", PAYPAL_PAYERID);

            com.ExecuteNonQuery();
            con.Close();

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