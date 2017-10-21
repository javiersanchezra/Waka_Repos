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
            string item = base.Request.QueryString["idioma"];
            int num = Convert.ToInt32(base.Request.QueryString["id"]);
            string str = "SELECT tituloespanol as titulo, fechaespanol AS  fecha, linea1espanol as linea1, linea2espanol as linea2, link, descripcionespanol as descripcion,  CONCAT('~/GetImage.aspx?type=event&image=',id) AS imagen FROM evento WHERE id =?id";
            string str1 = "SELECT tituloingles as titulo, fechaingles AS  fecha, linea1ingles as linea1, linea2ingles as linea2, link, descripcioningles as descripcion,  CONCAT('~/GetImage.aspx?type=event&image=',id) AS imagen FROM evento WHERE id =?id";
            if (item == "en")
            {
                str = str1;
                this.moreinfobutton.Text = "MORE INFO";
            }
            MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            try
            {
                try
                {
                    mySqlConnection.Open();
                    MySqlCommand mySqlCommand = new MySqlCommand(str, mySqlConnection);
                    mySqlCommand.Parameters.AddWithValue("?id", num.ToString());
                    MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
                    mySqlDataReader.Read();
                    this.Literaltitulo.Text = mySqlDataReader[0].ToString();
                    this.literalfecha.Text = mySqlDataReader[1].ToString();
                    this.Literallinea1.Text = mySqlDataReader[2].ToString();
                    this.Literallinea2.Text = mySqlDataReader[3].ToString();
                    this.rowlinkliteral.Text = string.Concat("<div onclick = \"openInNewTab('", mySqlDataReader[4].ToString(), "');\" class=\"col-xs-10 col-xs-offset-1\" style=\"padding: 0px !important;\">");
                    this.Literaldescripcion.Text = mySqlDataReader[5].ToString();
                    this.ASPxImage2.ImageUrl = mySqlDataReader[6].ToString();
                }
                catch
                {
                }
            }
            finally
            {
                mySqlConnection.Close();
            }
        }
    }
}