using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;
namespace WAKANA_WEB_DE
{
    public partial class EventoIndividual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idioma = Request.QueryString["idioma"];

            int id = Convert.ToInt32(Request.QueryString["id"]);



            string query = "SET lc_time_names = 'es_UY'; SELECT tituloespanol as titulo, UPPER(DATE_FORMAT(fecha,'%M, %d')) AS  fecha, linea1espanol as linea1, linea2espanol as linea2, link, descripcionespanol as descripcion,  CONCAT('~/GetImage.aspx?type=event&image=',id) AS imagen FROM evento WHERE id =?id";

            string queryingles = "SET lc_time_names = 'en_US'; SELECT tituloingles as titulo, UPPER(DATE_FORMAT(fecha,'%M, %d')) AS  fecha, linea1ingles as linea1, linea2ingles as linea2, link, descripcioningles as descripcion,  CONCAT('~/GetImage.aspx?type=event&image=',id) AS imagen FROM evento WHERE id =?id";

            if (idioma == "en")
                query = queryingles;
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);

            try
            {
                con.Open();
                MySqlCommand com = new MySqlCommand(query, con);
                com.Parameters.AddWithValue("?id", id.ToString());
                MySqlDataReader rd = com.ExecuteReader();
                rd.Read();
                Literaltitulo.Text = rd[0].ToString();
                literalfecha.Text = rd[1].ToString();

                Literallinea1.Text = rd[2].ToString();
                Literallinea2.Text = rd[3].ToString();
                Literaldescripcion.Text = rd[5].ToString();
                //  literaltitulo.Text = rd[0].ToString();
                //   literaltexto.Text = rd[1].ToString();
                //byte[] imagedata = (byte[])rd[6];
                //InputStream.Read(imagedata, 0, (byte[])rd[2]);
                //Image Image1 = Image.FromStream(imagedata);

                ASPxImage2.ImageUrl = rd[6].ToString();


            }

            catch
            {

            }
            finally { con.Close(); }

        }
    }
}