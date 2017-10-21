using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;

namespace WAKANA_WEB_DE
{
    public partial class GetImage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (base.Request.QueryString["type"] == "event" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand("SELECT imagen FROM evento where id =@id", mySqlConnection);
                mySqlCommand.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable = new DataTable();
                (new MySqlDataAdapter(mySqlCommand)).Fill(dataTable);
                if (dataTable != null)
                {
                    byte[] item = (byte[])dataTable.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/jpeg";
                    base.Response.BinaryWrite(item);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "summercampslogo" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand1 = new MySqlCommand("SELECT imagen FROM summercamps where id =@id", mySqlConnection1);
                mySqlCommand1.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable1 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand1)).Fill(dataTable1);
                if (dataTable1 != null)
                {
                    byte[] numArray = (byte[])dataTable1.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/png";
                    base.Response.BinaryWrite(numArray);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "summercamps" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection2 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand2 = new MySqlCommand("SELECT imagencamp FROM summercamps where id =@id", mySqlConnection2);
                mySqlCommand2.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable2 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand2)).Fill(dataTable2);
                if (dataTable2 != null)
                {
                    byte[] item1 = (byte[])dataTable2.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/jpeg";
                    base.Response.BinaryWrite(item1);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "schoolcampslogo" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection3 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand3 = new MySqlCommand("SELECT imagen FROM schoolcamps where id =@id", mySqlConnection3);
                mySqlCommand3.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable3 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand3)).Fill(dataTable3);
                if (dataTable3 != null)
                {
                    byte[] numArray1 = (byte[])dataTable3.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/png";
                    base.Response.BinaryWrite(numArray1);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "schoolcamps" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection4 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand4 = new MySqlCommand("SELECT imagencamp FROM schoolcamps where id =@id", mySqlConnection4);
                mySqlCommand4.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable4 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand4)).Fill(dataTable4);
                if (dataTable4 != null)
                {
                    byte[] item2 = (byte[])dataTable4.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/jpeg";
                    base.Response.BinaryWrite(item2);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "bocalancamps" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection5 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand5 = new MySqlCommand("SELECT imagencamp FROM bocalancamps where id =@id", mySqlConnection5);
                mySqlCommand5.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable5 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand5)).Fill(dataTable5);
                if (dataTable5 != null)
                {
                    byte[] numArray2 = (byte[])dataTable5.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/jpeg";
                    base.Response.BinaryWrite(numArray2);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
            if (base.Request.QueryString["type"] == "bocalancampslogo" && base.Request.QueryString["image"] != null)
            {
                MySqlConnection mySqlConnection6 = new MySqlConnection(ConfigurationManager.ConnectionStrings["mySql"].ConnectionString);
                MySqlCommand mySqlCommand6 = new MySqlCommand("SELECT imagen FROM bocalancamps where id =@id", mySqlConnection6);
                mySqlCommand6.Parameters.AddWithValue("@id", base.Request.QueryString["image"].ToString());
                DataTable dataTable6 = new DataTable();
                (new MySqlDataAdapter(mySqlCommand6)).Fill(dataTable6);
                if (dataTable6 != null)
                {
                    byte[] item3 = (byte[])dataTable6.Rows[0][0];
                    base.Response.Buffer = true;
                    base.Response.Charset = "";
                    base.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    base.Response.ContentType = "image/png";
                    base.Response.BinaryWrite(item3);
                    base.Response.Flush();
                    base.Response.End();
                }
            }
        }
    }
}