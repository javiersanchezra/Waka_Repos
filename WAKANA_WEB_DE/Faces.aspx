<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Faces.aspx.cs" Inherits="WAKANA_WEB_DE.Faces" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pace-overlay"></div>

        <div id="masthead" class="navbar navbar-static-top swatch-black navbar-sticky" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".main-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Default.aspx" class="navbar-brand" style="width: 200px; font-weight: lighter; font-size: 30px; font-family: 'Josefin Sans';">
                        <img src="../assets/images/logobar.png" alt="Wakana Lake" />
                    </a>
                </div>
                 <nav class="collapse navbar-collapse main-navbar" role="navigation">
                    <div class="menu-sidebar pull-right">
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <%-- <li class="dropdown menu-item-object-oxy_mega_menu ">
                            <a href="#" onclick="ShowLoginWindow();return false;" >BOOK NOW</a>
                        </li>--%>

                        <li class="dropdown">
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                              <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
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
                <div class="col-md-12 primercol"><a class="lobstertitle" style="font-size: 6vw;">
                    <asp:literal runat="server" id="Literal5" text="<%$ Resources:Index, facesbienvenidos %>"></asp:literal>
                </a></div>
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

                                        <div class="row" style="margin-right: 0px !important; margin-bottom: 15px !important;">
                                            <div class="col-xs-3" id="divlake" style="padding: 2px;" onclick="myFunction(this)">
                                                <a href="#" class="portfolio-filter" data-filter=".filter-lake">
                                                    <div id="facesab" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">
                                                        <asp:literal runat="server" id="Literal6" text="<%$ Resources:Index, faceslago %>"></asp:literal>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-xs-3" id="divfaces" style="padding: 2px;" onclick="myFunction(this)">
                                                <a href="#" class="portfolio-filter" data-filter=".filter-faces">
                                                    <div id="facesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">
                                                        <asp:literal runat="server" id="Literal7" text="<%$ Resources:Index, facesrostros %>"></asp:literal>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-xs-3" id="divact" style="padding: 2px;" onclick="myFunction(this)">
                                                <a href="#" class="portfolio-filter" data-filter=".filter-activities">
                                                    <div id="activitiesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">
                                                        <asp:literal runat="server" id="Literal8" text="<%$ Resources:Index, facesactividades %>"></asp:literal>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-xs-3" id="divevents" style="padding: 2px;" onclick="myFunction(this)">
                                                <a href="#" class="portfolio-filter" data-filter=".filter-videos">
                                                    <div id="eventsa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; font-family: 'Josefin Sans';">
                                                        <asp:literal runat="server" id="Literal9" text="<%$ Resources:Index, facesvideos %>"></asp:literal>
                                                    </div>
                                                </a>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="portfolio masonry use-masonry" data-padding="0" data-col-xs="1" data-col-sm="2" data-col-md="4" data-col-lg="6" data-layout="masonry">


                            <asp:literal id="Literal1" runat="server"></asp:literal>
                            <asp:literal id="Literal2" runat="server"></asp:literal>
                            <asp:literal id="Literal3" runat="server"></asp:literal>
                            <asp:literal id="Literal4" runat="server"></asp:literal>





                            <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);">
                                <div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;">
                                    <a href="http://www.youtube.com/watch?v=6y8AmL9GsT4" class="figure-image magnific-vimeo" data-links="" target="_self">
                                        <img src="gallery/Videos ( ( in the Gallery Section)/video1.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20">
                                            <div class="figure-overlay-container"><span class="figure-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                                    <g fill="none">
                                                        <path d="M50.941 34.953v30.094M65.988 50h-30.093"></path>
                                                    </g></svg></span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);">
                                <div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;">
                                    <a href="http://www.youtube.com/watch?v=s_FsyvNdbpI" class="figure-image magnific-vimeo" data-links="" target="_self">
                                        <img src="gallery/Videos ( ( in the Gallery Section)/video2.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20">
                                            <div class="figure-overlay-container"><span class="figure-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                                    <g fill="none">
                                                        <path d="M50.941 34.953v30.094M65.988 50h-30.093"></path>
                                                    </g></svg></span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="masonry-item portfolio-item isotope-item  masonry-wide filter-masonry filter-videos" data-menu-order="3" data-title="Colors galore" style="width: 190px; position: absolute; left: 0px; top: 0px; transform: translate3d(570px, 0px, 0px);">
                                <div class="figure portfolio-os-animation element-no-top element-no-bottom text-center figcaption-middle normalwidth image-filter-invert fade-in image-filter-onhover animated fadeIn" data-os-animation="fadeIn" data-os-animation-delay="0.6s" style="padding: 0px; animation-delay: 0.6s;">
                                    <a href="http://www.youtube.com/watch?v=7tKtCGFPlMM" class="figure-image magnific-vimeo" data-links="" target="_self">
                                        <img src="gallery/Videos ( ( in the Gallery Section)/video3.jpg" alt="Colors galore" class="normalwidth hoverZoomLink"><div class="figure-overlay grid-overlay-20">
                                            <div class="figure-overlay-container"><span class="figure-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                                    <g fill="none">
                                                        <path d="M50.941 34.953v30.094M65.988 50h-30.093"></path>
                                                    </g></svg></span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </section>
</asp:Content>
