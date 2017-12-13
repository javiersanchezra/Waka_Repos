<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="WAKANA_WEB_DE.FAQ" %>

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
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal29" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal30" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal31" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal32" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal33" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal34" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal35" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal36" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal37" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal38" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal39" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal40" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal41" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal42" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal43" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal44" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal45" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal46" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                              <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal47" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/backFAQ2.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">


            <div class="portfolio-container element-normal-top element-no-bottom">
                <div class="row">
                    <div class="col-md-12">
                        </br>
                                <center>
                                    <a class="lobstertitle" >
                                        <asp:Literal runat="server" ID="Literal6" Text="<%$ Resources:Index, faqtitulo %>"></asp:Literal></a>
                                </center>
                    </div>
                    <div class="col-md-12">
                        <br />
                        <br />
                        <center>
                                         <a class="quicksandtitle" ><u>
                                             <asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index, faqinstalaciones %>"></asp:Literal>
                                                                    </u></a>
                                     </center>
                    </div>


                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, faqquees %>"></asp:Literal>
                            </p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, faqwakanalakeesuncomplejo %>"></asp:Literal>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, faqsepuedeacceder %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal5" Text="<%$ Resources:Index, faqparapasar %>"></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal7" Text="<%$ Resources:Index, faqesaptaparaelbaño %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal8" Text="<%$ Resources:Index, faqsitotalmente %>"></asp:Literal></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal9" Text="<%$ Resources:Index, faqquextensiontienelepantano %>"></asp:Literal>
                            </p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, faqelpantanodecelemin %>"></asp:Literal></p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, faqesmuygrandelpantano  %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, faqwakanalakecuentacasi20  %>"></asp:Literal></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, faqactividades %>"></asp:Literal></u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, faqqueact  %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                               <asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index,  faqennuestrocomplejosepuedellevar%>"></asp:Literal>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, faqcuandosepueden %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">                                                    
                                <asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, faqabrilymayo %>"></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, faqexisteunnumerominimomax %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, faqsoloenlaspartantrall %>"></asp:Literal>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, faqexisteunaedad %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, faqrequisitosarcattack %>"></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, faqalojamientost %>"></asp:Literal></u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, faqmepuedoalojarenwakanalake %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, faqporsupuesto %>"></asp:Literal>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, faqhayunrestaurante %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                 <asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, faqdisponemosdebaren %>"></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">

                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                <asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, faqsepuedeacampar %>"></asp:Literal></p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, faqnonoesposible %>"></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>


    </section>
</asp:Content>
