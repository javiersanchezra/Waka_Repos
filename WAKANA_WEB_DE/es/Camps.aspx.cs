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
    public partial class Camps : System.Web.UI.Page
    {
        string query = "SELECT id, days, titulo, tituloingles texto, CONCAT('../img/camps/',imagen) AS imagen, CONCAT('../img/camps/',imagencamp) AS imagencamp FROM schoolcamps";

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