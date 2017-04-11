using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient; using System.Configuration;
namespace WAKANA_WEB_DE.es
{
    public partial class Events : System.Web.UI.Page
    {
        string query = "SET lc_time_names = 'es_UY'; SELECT id,  UPPER(DATE_FORMAT(fecha,'%M, %d')) AS  fecha, tituloespanol as titulo, descripcionespanol as texto FROM evento";
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            MySqlDataAdapter da = new MySqlDataAdapter(query, con);
            DataTable tablita = new DataTable();
            da.Fill(tablita);
            Repeater1.DataSource = tablita;
            Repeater1.DataBind();


        }

        protected void ASPxCallbackPanel3_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
        {
            string parameter = e.Parameter.ToString();
            if (parameter == "calendar")
            {
                ASPxPanel1.Visible = true;
                ASPxPanel2.Visible = false;
            }
            else
            {
                ASPxPanel1.Visible = false;
                ASPxPanel2.Visible = true;
            }
        }
    }
}