using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WAKANA_WEB_DE
{
    public partial class Yurtas : System.Web.UI.Page
    {
        List<String> listadecadenas = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            //ON PAGE LOAD, LOADS IMAGES
            LoadImages();

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
                Response.Redirect("Yurtas.aspx", false);
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

        private void LoadImages()
        {
            //ON PAGE THIS CODE WILL SEARCH FOR IMAGES ON "gallery/Accomodation/Yurta/" AND THUMBNAILS ON "gallery/Accomodation/Yurta/t"
            string str = "";

            //MAIN PATH OF THIS GALLERY , THUMBNAILS WILL BE ON PATH + /t
            string PATH = "gallery/Accomodation/Yurta/";



            //READS ALL FILES 
            string[] files = Directory.GetFiles(base.Server.MapPath(string.Concat("~/", PATH)), "*.jpg");
            List<ListItem> listItems = new List<ListItem>();
            string[] strArrays = files;
            for (int i = 0; i < (int)strArrays.Length; i++)
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
                    str3 = string.Concat(str3, PATH, this.listadecadenas[j], ", \r\n");
                }
                for (int k = 0; k < num - 1; k++)
                {
                    str3 = string.Concat(str3, PATH, this.listadecadenas[k], ", \r\n");
                }
                str3 = str3.Substring(0, str3.Length - 4);

                //IMAGE CODE IS GENERATED FOR EACH IMAGE FOUND ON PATH
                object[] objArray = new object[] { "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-activities filter-lake filter-faces filter-events\" data-menu-order=\"", num, "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\".4s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"", str3, " \" target=\"_self\"> " };
                num++;
                string str4 = string.Concat(objArray);
              
                
                //THUMBNAIL CODE IS GENERATED FOR EACH IMAGE 
                str4 = string.Concat(new string[] { str4, "  <img src=\"", PATH, "t/", listadecadena, "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>" });
                str = string.Concat(str, str4, "\r\n\r\n\r\n\r\n");
            }


            //SETS ALL THE SERVER SIDE GENERATED CODE ON THE FRONT END, TO CREATE THE GALLERY ELEMENTS
            this.GalleryPlaceHolder.Text = str;
        }

        
    }
}