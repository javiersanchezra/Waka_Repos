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
            string item = base.Request.QueryString["idioma"];
            string str = base.Request.QueryString["tipo"];
            int num = Convert.ToInt32(base.Request.QueryString["id"]);
            string str1 = "";
            if (str != "summer")
            {
                str1 = (str != "school" ? "bocalancamps" : "summercamps");
            }
            else
            {
                str1 = "schoolcamps";
            }
            string str2 = string.Concat(new object[] { "SELECT titulo, texto,  CONCAT('~/GetImage.aspx?type=", str1, "&image=',id) AS imagencamp FROM ", str1, " WHERE id =", num });
            string str3 = string.Concat(new object[] { "SELECT  tituloingles, textoingles,  CONCAT('~/GetImage.aspx?type=", str1, "&image=',id) AS imagencamp FROM ", str1, " WHERE id =", num });
            if (item == "en")
            {
                str2 = str3;
            }
            MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
            try
            {
                try
                {
                    mySqlConnection.Open();
                    MySqlDataReader mySqlDataReader = (new MySqlCommand(str2, mySqlConnection)).ExecuteReader();
                    mySqlDataReader.Read();
                    this.literaltitulo.Text = mySqlDataReader[0].ToString();
                    this.literaltexto.Text = mySqlDataReader[1].ToString();
                    this.ASPxImage2.ImageUrl = mySqlDataReader[2].ToString();
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