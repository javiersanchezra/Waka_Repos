using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Configuration;


namespace WAKANA_WEB_DE
{
    public partial class Camps : System.Web.UI.Page
    {
        private string connStr = ConfigurationManager.ConnectionStrings["mySql"].ConnectionString;

        private string query = "SELECT id, days, tituloingles as titulo, texto, CONCAT('~/GetImage.aspx?type=schoolcampslogo&image=',id) AS imagen FROM schoolcamps";

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection mySqlConnection = new MySqlConnection(this.connStr);
            MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(this.query, mySqlConnection);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            this.Repeater1.DataSource = dataTable;
            this.Repeater1.DataBind();

        }

     
    }
}