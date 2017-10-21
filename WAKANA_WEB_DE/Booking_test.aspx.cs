using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using RestSharp.Authenticators;
using DevExpress.Web;

namespace WAKANA_WEB_DE
{
    public partial class Booking_test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["emailsent"] != null)
            {
                this.ASPxPanel2.Visible = true;
                this.ASPxPanel1.Visible = false;
            }
        }

        public IRestResponse SendMessageReceived(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string str = string.Concat(new string[] { "<html><head></head><body style=\"text-align:center;\"><p style=\"font-size: 15px\"> Your email was received, we will contact you as soon as posible.<br /> Text of your email:<br />From: ", name, "<br />Email: ", emailfrom, "<br />Phone Number: ", phonenumber, "<br />Message: ", message, "<br /></ p > </body></html>" });
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Contact Form <wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", email);
            restRequest.AddParameter("subject", "Your email was received.");
            restRequest.AddParameter("html", str);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }

        public IRestResponse SendMessage(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string str = string.Concat(new string[] { "<html><head></head><body style=\"text-align:center;\"><p style=\"font-size: 20px\"> Mensaje de: ", name, "<br />Email: ", emailfrom, "<br />Phone Number: ", phonenumber, "<br />Message: ", message, "<br /></ p > </body></html>" });
            RestClient restClient = new RestClient()
            {
                BaseUrl = new Uri("https://api.mailgun.net/v3"),
                Authenticator = new HttpBasicAuthenticator("api", "key-35e7388efdd202c9d79d75912e0c38d8")
            };
            RestRequest restRequest = new RestRequest();
            restRequest.AddParameter("domain", "noreplymail.develop.mx", ParameterType.UrlSegment);
            restRequest.Resource = "{domain}/messages";
            restRequest.AddParameter("from", "Wakana Contact Form <wakana@noreplymail.develop.mx>");
            restRequest.AddParameter("to", email);
            restRequest.AddParameter("subject", "Email from Wakana Contact Form");
            restRequest.AddParameter("html", str);
            restRequest.Method = Method.POST;
            return restClient.Execute(restRequest);
        }

        protected void ASPxCallbackPanel3_Callback(object sender, CallbackEventArgsBase e)
        {
            this.SendMessage("info@wakanalake.com", this.yourname.Text, this.email.Text, this.memo.Text, this.phonenumber.Text);
            this.SendMessageReceived(this.email.Text, this.yourname.Text, this.email.Text, this.memo.Text, this.phonenumber.Text);
            this.Session["emailsent"] = true;
            this.ASPxPanel2.Visible = true;
            this.ASPxPanel1.Visible = false;
        }
    }
}