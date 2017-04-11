using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient; using System.Configuration;
using System.Configuration;
using MySql.Data.MySqlClient; using System.Configuration;


namespace WAKANA_WEB_DE
{
    public partial class Camps : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["mySql"].ConnectionString;
        string query = "SELECT id, days, tituloingles as titulo, texto, CONCAT('img/camps/',imagen) AS imagen, CONCAT('img/camps/',imagencamp) AS imagencamp FROM schoolcamps";

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(connStr);
            MySqlDataAdapter da = new MySqlDataAdapter(query, con);
            DataTable tablita = new DataTable();
            da.Fill(tablita);
            Repeater1.DataSource = tablita;
            Repeater1.DataBind();

        }

     
    }
}