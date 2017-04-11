using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient; using System.Configuration;
using System.Data;
namespace WAKANA_WEB_DE.es
{
    public partial class SummerCamps : System.Web.UI.Page
    {
        string query = "SELECT id, days, titulo as titulo, texto, CONCAT('~/GetImage.aspx?type=summercampslogo&image=',id) AS imagen FROM summercamps";

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            MySqlDataAdapter da = new MySqlDataAdapter(query, con);
            DataTable tablita = new DataTable();
            da.Fill(tablita);
            Repeater1.DataSource = tablita;
            Repeater1.DataBind();

        }
    }
}