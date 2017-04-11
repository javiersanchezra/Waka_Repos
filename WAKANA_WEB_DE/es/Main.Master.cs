using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using RestSharp;
using RestSharp.Authenticators;
using DevExpress.Web;
using System.Data;
using MySql.Data.MySqlClient; using System.Configuration;

namespace WAKANA_WEB_DE.es
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["emailsent"] != null)
            {
                ASPxPanel2.Visible = true;
                ASPxPanel1.Visible = false;
            }
        }


        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
           
      
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
        protected void camp_WindowCallback(object source, DevExpress.Web.PopupWindowCallbackArgs e)
        {
            string perro = e.Parameter.ToString();
            string query2 = "SELECT id, days, titulo, tituloingles, texto, CONCAT('img/camps/',imagen) AS imagen, CONCAT('img/camps/',imagencamp) AS imagencamp FROM schoolcamps WHERE id =" + perro;
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            MySqlDataAdapter da = new MySqlDataAdapter(query2, con);
            DataTable tablita = new DataTable();
            da.Fill(tablita);
            Repeater2.DataSource = tablita;
            Repeater2.DataBind();
        }
    }
}