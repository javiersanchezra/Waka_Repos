using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
namespace WAKANA_WEB_DE
{
    public partial class GetImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["type"] == "event")
            {
                if (Request.QueryString["image"] != null)
                {
                    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);

                    string strQuery = "SELECT imagen FROM evento";
                    MySqlCommand cmd = new MySqlCommand(strQuery,con);
                    cmd.Parameters.AddWithValue("@id",  Request.QueryString["image"].ToString());
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);

                    if (dt != null)
                    {
                        Byte[] bytes = (Byte[])dt.Rows[0][0];
                        Response.Buffer = true;
                        Response.Charset = "";
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.ContentType = "image/jpeg";
                        //Response.ContentType = dt.Rows[0]["ContentType"].ToString();
                        //Response.AddHeader("content-disposition", "attachment;filename="
                        //+ "imagen" + Request.QueryString["image"].ToString() +"jpg");
                        Response.BinaryWrite(bytes);
                        Response.Flush();
                        Response.End();
                    }
                }
            }
        }
    }
}