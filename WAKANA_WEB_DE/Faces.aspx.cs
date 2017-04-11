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
            string finalstring = "";

            string path = "gallery/Wakana Lake (( in the Gallery Section)/";
            string[] filesLoc = Directory.GetFiles(Server.MapPath("~/" + path), "*.jpg");
            List<ListItem> files = new List<ListItem>();
            foreach (string file in filesLoc)
            {
                files.Add(new ListItem(Path.GetFileName(file)));
            }

            listadecadenas = files.Select(s => Convert.ToString(s)).ToList();

            listadecadenas = listadecadenas.OrderBy(a => Guid.NewGuid()).ToList();


            int intnumber = 1;
            bool perro = false;
            foreach (string s in listadecadenas)
            {
                string iniciocondatalinks;

                string datalinks = "";
                for (int i = intnumber - 1; i < listadecadenas.Count; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                for (int i = 0; i < intnumber - 1; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                datalinks = datalinks.Substring(0, datalinks.Length - 4);

                iniciocondatalinks = "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-lake\" data-menu-order=\"" + intnumber + "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"" + (Convert.ToDouble(intnumber) / 10 * 2) + "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"" + datalinks + " \" target=\"_self\"> ";

                intnumber++;
                string temp = iniciocondatalinks;
                temp += "  <img src=\"" + path + "t/" + s + "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>";
                finalstring += temp + "\r\n\r\n\r\n\r\n";
            }
            Literal1.Text = finalstring;





            finalstring = "";

            path = "gallery/Faces ( in the Gallery Section)/";

            filesLoc = Directory.GetFiles(Server.MapPath("~/" + path), "*.jpg");
            files = new List<ListItem>();
            foreach (string file in filesLoc)
            {
                files.Add(new ListItem(Path.GetFileName(file)));
            }

            listadecadenas = files.Select(s => Convert.ToString(s)).ToList();

            listadecadenas = listadecadenas.OrderBy(a => Guid.NewGuid()).ToList();


           intnumber = 1;
            perro = false;
            foreach (string s in listadecadenas)
            {
                string iniciocondatalinks;

                string datalinks = "";
                for (int i = intnumber - 1; i < listadecadenas.Count; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                for (int i = 0; i < intnumber - 1; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                datalinks = datalinks.Substring(0, datalinks.Length - 4);

                iniciocondatalinks = "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-faces\" data-menu-order=\"" + intnumber + "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"" + (Convert.ToDouble(intnumber) / 10 * 2) + "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"" + datalinks + " \" target=\"_self\"> ";

                intnumber++;
                string temp = iniciocondatalinks;
                temp += "  <img src=\"" + path + "t/" + s + "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>";
                finalstring += temp + "\r\n\r\n\r\n\r\n";
            }

            Literal2.Text = finalstring;





            finalstring = "";

            path = "gallery/Activity ( in the Gallery Section)/";

            filesLoc = Directory.GetFiles(Server.MapPath("~/" + path), "*.jpg");
            files = new List<ListItem>();
            foreach (string file in filesLoc)
            {
                files.Add(new ListItem(Path.GetFileName(file)));
            }

            listadecadenas = files.Select(s => Convert.ToString(s)).ToList();

            listadecadenas = listadecadenas.OrderBy(a => Guid.NewGuid()).ToList();


            intnumber = 1;
            perro = false;
            foreach (string s in listadecadenas)
            {
                string iniciocondatalinks;

                string datalinks = "";
                for (int i = intnumber - 1; i < listadecadenas.Count; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                for (int i = 0; i < intnumber - 1; i++)
                {



                    datalinks += path + listadecadenas[i] + ", \r\n";




                }

                datalinks = datalinks.Substring(0, datalinks.Length - 4);

                iniciocondatalinks = "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-activities\" data-menu-order=\"" + intnumber + "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"" + (Convert.ToDouble(intnumber) / 10 * 2) + "s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"" + datalinks + " \" target=\"_self\"> ";

                intnumber++;
                string temp = iniciocondatalinks;
                temp += "  <img src=\"" + path + "t/" + s + "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>";
                finalstring += temp + "\r\n\r\n\r\n\r\n";
            }

            Literal3.Text = finalstring;





            //finalstring = "";

            //path = "gallery/Activity ( in the Gallery Section)/";

            //filesLoc = Directory.GetFiles(Server.MapPath("~/" + path), "*.jpg");
            //files = new List<ListItem>();
            //foreach (string file in filesLoc)
            //{
            //    files.Add(new ListItem(Path.GetFileName(file)));
            //}

            //listadecadenas = files.Select(s => Convert.ToString(s)).ToList();

            //listadecadenas = listadecadenas.OrderBy(a => Guid.NewGuid()).ToList();


            //intnumber = 1;
            //perro = false;
            //foreach (string s in listadecadenas)
            //{
            //    string iniciocondatalinks;

            //    string datalinks = "";
            //    for (int i = intnumber - 1; i < listadecadenas.Count; i++)
            //    {



            //        datalinks += path + listadecadenas[i] + ", \r\n";




            //    }

            //    for (int i = 0; i < intnumber - 1; i++)
            //    {



            //        datalinks += path + listadecadenas[i] + ", \r\n";




            //    }

            //    datalinks = datalinks.Substring(0, datalinks.Length - 4);

            //    iniciocondatalinks = "<div class=\"masonry-item portfolio-item isotope-item masonry-wide filter-masonry filter-lake\" data-menu-order=\"" + intnumber + "\" data-title=\"Wakana Lake Gallery\"> <div class=\"figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth  image-filter-invert fade-in image-filter-onhover\" data-os-animation=\"fadeIn\" data-os-animation-delay=\".4s\"> <a href =\"\" class=\"figure-image magnific-gallery\" data-links=\"" + datalinks + " \" target=\"_self\"> ";

            //    intnumber++;
            //    string temp = iniciocondatalinks;
            //    temp += "  <img src=\"" + path + "t/" + s + "\" alt=\"Wakana\" class=\"normalwidth\">                                                     <div class=\"figure-overlay grid-overlay-20\">                                                         <div class=\"figure-overlay-container\">                                                             <span class=\"figure-icon\">                                 <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><g fill=\"none\"><path d=\"M50.941 34.953v30.094M65.988 50h-30.093\"></path></g></svg>     </span>                                                         </div>  </div>                                                </a>                                            </div>                                        </div>";
            //    finalstring += temp + "\r\n\r\n\r\n\r\n";
            //}

            //Literal3.Text = finalstring;
        }
    }
}