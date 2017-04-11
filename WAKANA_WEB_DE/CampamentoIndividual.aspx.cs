using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient; using System.Configuration;

namespace WAKANA_WEB_DE
{
    public partial class CampamentoIndividual : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
            string idioma = Request.QueryString["idioma"];
            string tipo = Request.QueryString["tipo"];

            int id = Convert.ToInt32(Request.QueryString["id"]);
            string tabla = "";
            if (tipo == "summer")
                tabla = "schoolcamps";
            else
                tabla = "summercamps";
            string query = "SELECT titulo, texto,  CONCAT('~/GetImage.aspx?type=" + tabla +"&image=',id) AS imagencamp FROM " + tabla + " WHERE id =" + id;

            string queryingles = "SELECT  tituloingles, textoingles,  CONCAT('~/GetImage.aspx?type=" + tabla + "&image=',id) AS imagencamp FROM " + tabla + " WHERE id =" + id;

            if (idioma == "en")
                query = queryingles;
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);

            try
            {
                con.Open();
                MySqlCommand com = new MySqlCommand(query, con);
                MySqlDataReader rd = com.ExecuteReader();
                rd.Read();
                literaltitulo.Text = rd[0].ToString();
                literaltexto.Text = rd[1].ToString();
                ASPxImage2.ImageUrl = rd[2].ToString();


            }

            catch
            {

            }
            finally { con.Close(); }

        }


    }
}