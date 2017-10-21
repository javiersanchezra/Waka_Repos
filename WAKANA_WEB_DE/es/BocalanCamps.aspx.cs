using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAKANA_WEB_DE.es
{
    public partial class BocalanCamps : System.Web.UI.Page
    {
        private string query = "SELECT id, days, titulo as titulo, texto, CONCAT('~/GetImage.aspx?type=bocalancampslogo&image=',id) AS imagen FROM bocalancamps";

        public BocalanCamps()
        {
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