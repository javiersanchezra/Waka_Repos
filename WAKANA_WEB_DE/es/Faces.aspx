<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="Faces.aspx.cs" Inherits="WAKANA_WEB_DE.es.Faces" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .swatch-blue .portfolio-title, [class*=swatch-] .swatch-blue .portfolio-title {
            background: transparent;
            color: white;
            font-family: 'Josefin Sans';
            font-size: 20px;
            font-weight: 100;
        }

        .portfolio-filter {
            background: transparent;
            color: white !important;
            font-family: 'Josefin Sans';
            font-size: 20px;
            font-weight: 100;
        }

        .swatch-blue .btn-primary:hover, .swatch-blue button:hover, .swatch-blue input[type=submit]:hover, [class*=swatch-] .swatch-blue .btn-primary:hover, [class*=swatch-] .swatch-blue button:hover, [class*=swatch-] .swatch-blue input[type=submit]:hover {
            background: transparent;
            color: #ffffff;
            font-family: 'Josefin Sans';
            font-size: 20px;
            font-weight: 100;
        }

        .swatch-blue .btn-primary, .swatch-blue button, .swatch-blue input[type=submit], [class*=swatch-] .swatch-blue .btn-primary, [class*=swatch-] .swatch-blue button, [class*=swatch-] .swatch-blue input[type=submit] {
            background: transparent;
            color: #ffffff;
            font-family: 'Josefin Sans';
            font-size: 20px;
            font-weight: 100;
        }
        .tp-caption.Newspaper-Button, .Newspaper-Button {
    color: inherit;
}
    </style>
    <script>
        function myFunction(divObj) {
            divact.style.background = "transparent";
            divevents.style.background = "transparent";
            divfaces.style.background = "transparent";
            divlake.style.background = "transparent";
            divObj.style.background = "gray";
            facesa.style.color = "color: rgb(0, 0, 0) !important";
            activitiesa.style.color = "color: rgb(0, 0, 0) !important";
            eventsa.style.color = "color: rgb(0, 0, 0) !important";
        }
    </script>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/faces.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle" style="font-size: 5vw;">Bienvenidos a la Felicidad</a></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-container element-medium-top element-medium-bottom">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="portfolio-header clearfix">
                                        <%--    <h3 class="portfolio-title pull-left">View / <span>All</span>
                                            </h3>--%>

                                            <%--  <div class="portfolio-filters pull-right">--%>


                                            <%-- <a href="#" class="portfolio-filter" data-filter="*"> <div class="tp-caption Newspaper-Button rev-btn">All </div></a> 
                                                                <a  href="#" class="portfolio-filter" data-filter=".filter-faces"> Faces </a> 
                                                                <a  href="#" class="portfolio-filter" data-filter=".filter-activities"> Activities </a>  
                                                                <a  href="#" class="portfolio-filter" data-filter=".filter-events"> Events </a> --%>

                                            <%--</div>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-md-offset-3">

                                        <div class="row" style="margin-right: 0px !important; margin-bottom: 15px !important;"  >
                                            <div class="col-xs-3"  id="divlake" style="padding: 2px;" onclick="myFunction(this)">
                                             <a href="#" class="portfolio-filter" data-filter=".filter-lake">
                                                                             <div   id="facesab" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">Lago</div>
                                                                    </a>
                                                    </div>
                                         
                                                                     <div class="col-xs-3"  id="divfaces" style="padding: 2px;" onclick="myFunction(this)">
                                                                         <a href="#" class="portfolio-filter" data-filter=".filter-faces">
                                                                             <div   id="facesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">Rostros</div>
                                                                    </a> </div>
                                            
                                                                     <div class="col-xs-3" id="divact" style="padding: 2px;"  onclick="myFunction(this)">
                                                                         <a href="#" class="portfolio-filter" data-filter=".filter-activities">
                                                                             <div   id="activitiesa" class="tp-caption Newspaper-Button"  style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; padding-left:4px; font-family: 'Josefin Sans';">Actividades</div>
                                                                      </a> </div>
                                          
                                                                     <div class="col-xs-3"  id="divevents" style="padding: 2px;"  onclick="myFunction(this)">
                                                                         <a  href="#" class="portfolio-filter" data-filter=".filter-videos">
                                                                             <div  id="eventsa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">Videos</div>
                                                                     </a> </div>
                                            
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                                                <div class="portfolio masonry use-masonry" data-padding="0"  data-col-xs="1" data-col-sm="2" data-col-md="4" data-col-lg="6" data-layout="masonry">


                                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                                    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                                    <asp:Literal ID="Literal4" runat="server"></asp:Literal>





                                                    <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);"><div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;"><a href="http://www.youtube.com/watch?v=6y8AmL9GsT4" class="figure-image magnific-vimeo" data-links="
                         " target="_self"><img src="../gallery/Videos ( ( in the Gallery Section)/video1.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20"><div class="figure-overlay-container"><span class="figure-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g fill="none"><path d="M50.941 34.953v30.094M65.988 50h-30.093"></path></g></svg></span></div></div></a></div></div>

                                                         <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);"><div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;"><a href="http://www.youtube.com/watch?v=s_FsyvNdbpI" class="figure-image magnific-vimeo" data-links="
                         " target="_self"><img src="../gallery/Videos ( ( in the Gallery Section)/video2.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20"><div class="figure-overlay-container"><span class="figure-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g fill="none"><path d="M50.941 34.953v30.094M65.988 50h-30.093"></path></g></svg></span></div></div></a></div></div>

     <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);"><div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;"><a href="http://www.youtube.com/watch?v=7tKtCGFPlMM" class="figure-image magnific-vimeo" data-links="
                         " target="_self"><img src="../gallery/Videos ( ( in the Gallery Section)/video3.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20"><div class="figure-overlay-container"><span class="figure-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><g fill="none"><path d="M50.941 34.953v30.094M65.988 50h-30.093"></path></g></svg></span></div></div></a></div></div>






                                                </div>
                    </div>
                </div>
            </div>

        </div>


    </section>
</asp:Content>
