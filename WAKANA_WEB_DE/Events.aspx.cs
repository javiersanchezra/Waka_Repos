using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient; using System.Configuration;
using DevExpress.Web;

namespace WAKANA_WEB_DE
{
    public partial class Events : System.Web.UI.Page
    {
        private string connStr = ConfigurationManager.ConnectionStrings["mySql"].ConnectionString;


        private string query = " SELECT id,  fechaingles  fecha, tituloingles as titulo, descripcioningles as texto FROM evento  order by orden asc";

        private string query2 = "SELECT id,  fechaespanol AS  fecha, tituloespanol as titulo, descripcionespanol as texto FROM evento order by orden asc";

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection mySqlConnection = new MySqlConnection(this.connStr);
            MySqlDataAdapter mySqlDataAdapter;
            if (Session["lenguaje"].ToString() == "en-US")
            {
                mySqlDataAdapter = new MySqlDataAdapter(this.query, mySqlConnection);
            }
            else
            {
                mySqlDataAdapter = new MySqlDataAdapter(this.query2, mySqlConnection);
            }
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            this.Repeater1.DataSource = dataTable;
            this.Repeater1.DataBind();

            //IDIOMA
            if (!IsPostBack)
            {
                if (Session["lenguaje"] != null)
                {
                    ImageButton1.ImageUrl = SetCulInPost(Session["lenguaje"].ToString());
                    Session["flag"] = 1;
                }
                else
                {
                    ImageButton1.ImageUrl = "~/assets/images/England.jpg";
                    Session["lenguaje"] = "es-mx";
                    Session["flag"] = 1;
                }
            }

            if (Convert.ToInt16(Session["flag"]) == 1)
            {
                if (Session["lenguaje"] != null)
                {
                    ImageButton1.ImageUrl = SetCulInPost(Session["lenguaje"].ToString());
                }
            }
        }

        protected void ASPxCallbackPanel3_Callback(object sender, CallbackEventArgsBase e)
        {
            if (e.Parameter.ToString() == "calendar")
            {
                this.ASPxPanel1.Visible = true;
                this.ASPxPanel2.Visible = false;
                return;
            }
            this.ASPxPanel1.Visible = false;
            this.ASPxPanel2.Visible = true;
        }

        public string SetCulInPost(string cul)
        {
            if (cul == "es-mx")
            {
                return "~/assets/images/England.jpg";
            }
            if (cul == "en-US")
            {
                return "~/assets/images/spain.jpg";
            }

            return "";
        }

        public string GetURL()
        {
            var url = ImageButton1.ImageUrl.ToString();
            if (url == "~/assets/images/England.jpg")
            {
                return "en-US";
            }
            else
            {
                return "es-mx";
            }
        }

        public static string cul;
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            cul = GetURL();
            Session["lenguaje"] = cul;
            if (cul != null)
            {
                Culture = cul;
                UICulture = cul;
                InitializeCulture();
                Response.Redirect("Events.aspx", false);
            }
        }

        protected override void InitializeCulture()
        {
            base.InitializeCulture();

            if (cul == null)
            {
                if (Session["lenguaje"] != null)
                {
                    Culture = Session["lenguaje"].ToString();
                    UICulture = Session["lenguaje"].ToString();
                }
                else
                {
                    Culture = "es-mx";
                    UICulture = "es-mx";

                }
            }

            if (cul != null)
            {
                Culture = cul;
                UICulture = cul;
            }
        }
    }
}