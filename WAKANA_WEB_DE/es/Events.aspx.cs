using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient; using System.Configuration;
using DevExpress.Web;

namespace WAKANA_WEB_DE.es
{
    public partial class Events : System.Web.UI.Page
    {
        private string query = "SELECT id,  fechaespanol AS  fecha, tituloespanol as titulo, descripcionespanol as texto FROM evento order by orden asc";
        protected void ASPxCallbackPanel3_Callback(object sender, CallbackEventArgsBase e)
        {
            if (e.Parameter.ToString() == "calendar")
            {
                this.ASPxPanel1.Visible = true;
                this.ASPxPanel2.Visible = false;
                return;
            }
            this.ASPxPanel1.Visible = false;
            this.ASPxPanel2.Visible = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(this.query, mySqlConnection);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            this.Repeater1.DataSource = dataTable;
            this.Repeater1.DataBind();
        }
    }
}