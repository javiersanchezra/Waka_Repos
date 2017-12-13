using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WAKANA_WEB_DE
{
    public partial class Faces : System.Web.UI.Page
    {
        List<String> listadecadenas = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
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

            int i;
            string str = "";
            string str1 = "gallery/Wakana Lake (( in the Gallery Section)/";
            string[] files = Directory.GetFiles(base.Server.MapPath(string.Concat("~/", str1)), "*.jpg");
            List<ListItem> listItems = new List<ListItem>();
            string[] strArrays = files;
            for (i = 0; i < (int)strArrays.Length; i++)
            {
                string str2 = strArrays[i];
                listItems.Add(new ListItem(Path.GetFileName(str2)));
            }
            this.listadecadenas = (
                from s in listItems
                select Convert.ToString(s)).ToList<string>();
            this.listadecadenas = (
                from a in this.listadecadenas
                orderby Guid.NewGuid()
                select a).ToList<string>();
            int num = 1;
            foreach (string listadecadena in this.listadecadenas)
            {
                string str3 = "";
                for (int j = num - 1; j < this.listadecadenas.Count; j++)
                {
                    str3 = string.Concat(str3, str1, this.listadecadenas[j], ", \r\n");
                }
                for (int k = 0; k < num - 1; k++)
                {
                    str3 = string.Concat(str3, str1, this.listadecadenas[k], ", \r\n");
                }
                str3 = str3.Substring(0, str3.Length - 4);
                object[] objArray = new object[] { "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-lake\" data-menu-order=\"", num, "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"", Convert.ToDouble(num) / 10 * 2, "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"", str3, " \" target=\"_self\"> " };
                num++;
                string str4 = string.Concat(objArray);
                str4 = string.Concat(new string[] { str4, "  <img src=\"", str1, "t/", listadecadena, "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>" });
                str = string.Concat(str, str4, "\r\n\r\n\r\n\r\n");
            }
            this.Literal1.Text = str;
            str = "";
            str1 = "gallery/Faces ( in the Gallery Section)/";
            string[] files1 = Directory.GetFiles(base.Server.MapPath(string.Concat("~/", str1)), "*.jpg");
            listItems = new List<ListItem>();
            strArrays = files1;
            for (i = 0; i < (int)strArrays.Length; i++)
            {
                string str5 = strArrays[i];
                listItems.Add(new ListItem(Path.GetFileName(str5)));
            }
            this.listadecadenas = (
                from s in listItems
                select Convert.ToString(s)).ToList<string>();
            this.listadecadenas = (
                from a in this.listadecadenas
                orderby Guid.NewGuid()
                select a).ToList<string>();
            num = 1;
            foreach (string listadecadena1 in this.listadecadenas)
            {
                string str6 = "";
                for (int l = num - 1; l < this.listadecadenas.Count; l++)
                {
                    str6 = string.Concat(str6, str1, this.listadecadenas[l], ", \r\n");
                }
                for (int m = 0; m < num - 1; m++)
                {
                    str6 = string.Concat(str6, str1, this.listadecadenas[m], ", \r\n");
                }
                str6 = str6.Substring(0, str6.Length - 4);
                object[] num1 = new object[] { "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-faces\" data-menu-order=\"", num, "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"", Convert.ToDouble(num) / 10 * 2, "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"", str6, " \" target=\"_self\"> " };
                num++;
                string str7 = string.Concat(num1);
                str7 = string.Concat(new string[] { str7, "  <img src=\"", str1, "t/", listadecadena1, "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>" });
                str = string.Concat(str, str7, "\r\n\r\n\r\n\r\n");
            }
            this.Literal2.Text = str;
            str = "";
            str1 = "gallery/Activity ( in the Gallery Section)/";
            string[] strArrays1 = Directory.GetFiles(base.Server.MapPath(string.Concat("~/", str1)), "*.jpg");
            listItems = new List<ListItem>();
            strArrays = strArrays1;
            for (i = 0; i < (int)strArrays.Length; i++)
            {
                string str8 = strArrays[i];
                listItems.Add(new ListItem(Path.GetFileName(str8)));
            }
            this.listadecadenas = (
                from s in listItems
                select Convert.ToString(s)).ToList<string>();
            this.listadecadenas = (
                from a in this.listadecadenas
                orderby Guid.NewGuid()
                select a).ToList<string>();
            num = 1;
            foreach (string listadecadena2 in this.listadecadenas)
            {
                string str9 = "";
                for (int n = num - 1; n < this.listadecadenas.Count; n++)
                {
                    str9 = string.Concat(str9, str1, this.listadecadenas[n], ", \r\n");
                }
                for (int o = 0; o < num - 1; o++)
                {
                    str9 = string.Concat(str9, str1, this.listadecadenas[o], ", \r\n");
                }
                str9 = str9.Substring(0, str9.Length - 4);
                object[] objArray1 = new object[] { "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-activities\" data-menu-order=\"", num, "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"", Convert.ToDouble(num) / 10 * 2, "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"", str9, " \" target=\"_self\"> " };
                num++;
                string str10 = string.Concat(objArray1);
                str10 = string.Concat(new string[] { str10, "  <img src=\"", str1, "t/", listadecadena2, "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>" });
                str = string.Concat(str, str10, "\r\n\r\n\r\n\r\n");
            }
            this.Literal3.Text = str;
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
                Response.Redirect("Faces.aspx", false);
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