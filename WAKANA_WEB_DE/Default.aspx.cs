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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emailsent"] != null)
            {
                ASPxPanel2.Visible = true;
                ASPxPanel1.Visible = false;
            }
            
        }


        protected void CallbackPanel_Callback(object sender, CallbackEventArgsBase e)
        {
            string[] parameters = e.Parameter.Split(':');
            int currentPageIndex = int.Parse(parameters[0]);
            if (currentPageIndex == 0)
            {

                if (parameters[1] == "next")
                {
                    //Session["T1"] = t1.Text;
                    //Session["T9"] = t6.Text;
                    //Session["T10"] = t7.Text;
                    //Session["T11"] = t8.Text;
                    //t2.Text = Convert.ToString(Session["T3"]);
                    currentPageIndex++;
                }
            }
            else if (currentPageIndex == 1)
            {

                if (parameters[1] == "next")
                {
                    //Session["T2"] = t2.Text;
                    //t3.Text = Convert.ToString(Session["T5"]);
                    currentPageIndex++;
                }
                else
                {
                    //Session["T3"] = t2.Text;
                    //t1.Text = Convert.ToString(Session["T1"]);
                    //t6.Text = Convert.ToString(Session["T9"]);
                    //t7.Text = Convert.ToString(Session["T10"]);
                    //t8.Text = Convert.ToString(Session["T11"]);
                    currentPageIndex--;
                }

            }
            else if (currentPageIndex == 2)
            {

                if (parameters[1] == "next")
                {
                    //Session["T4"] = t3.Text;
                    //t4.Text = Convert.ToString(Session["T7"]);
                    currentPageIndex++;
                }
                else
                {
                    //Session["T5"] = t3.Text;
                    //t2.Text = Convert.ToString(Session["T2"]);
                    currentPageIndex--;
                }

            }

            else if (currentPageIndex == 3)
            {

                if (parameters[1] == "next")
                {
                    //Session["T6"] = t4.Text;
                    //t5.Text = Convert.ToString(Session["T8"]);
                    currentPageIndex++;
                }
                else
                {
                    //Session["T7"] = t4.Text;
                    //t3.Text = Convert.ToString(Session["T4"]);
                    currentPageIndex--;
                }

            }

            else
            {
                if (parameters[1] == "prev")
                {
                    //Session["T8"] = t5.Text;
                    //t4.Text = Convert.ToString(Session["T6"]);
                    currentPageIndex--;
                }
            }

            MultiView.ActiveViewIndex = currentPageIndex;
            System.Threading.Thread.Sleep(100);
        }


        protected void rpFilmCollection_CustomJSProperties(object sender,
         CustomJSPropertiesEventArgs e)
        {
            e.Properties["cpPageIndex"] = MultiView.ActiveViewIndex;
            e.Properties["cpPageCount"] = MultiView.Views.Count;
        }

        public IRestResponse SendMessageReceived(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 15px\"> Your email was received, we will contact you as soon as posible.<br /> Text of your email:" + "<br />"

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
            request.AddParameter("from", "Wakana Contact Form <wakana@noreplymail.develop.mx>");
            request.AddParameter("to", email);

            request.AddParameter("subject", "Your email was received.");
            //request.AddParameter("text", text);
            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }

        public IRestResponse SendMessage(string email, string name, string emailfrom, string message, string phonenumber)
        {
            string text = "<html><head></head><body style=\"text-align:center;\">"
            + "<p style=\"font-size: 20px\"> "
                + "Mensaje de: " + name
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
            request.AddParameter("from", "Wakana Contact Form <wakana@noreplymail.develop.mx>");
            request.AddParameter("to", email);

            request.AddParameter("subject", "Email from Wakana Contact Form");
            //request.AddParameter("text", text);
            request.AddParameter("html", text);
            request.Method = Method.POST;
            return client.Execute(request);
        }

        protected void ASPxCallbackPanel3_Callback(object sender, CallbackEventArgsBase e)
        {
            SendMessage("info@wakanalake.com", yourname.Text, email.Text, memo.Text, phonenumber.Text);
            SendMessageReceived(email.Text, yourname.Text, email.Text, memo.Text, phonenumber.Text);
            Session["emailsent"] = true;
            ASPxPanel2.Visible = true;
            ASPxPanel1.Visible = false;
        }
    }
}