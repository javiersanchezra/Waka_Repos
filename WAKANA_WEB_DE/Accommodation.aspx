<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="WAKANA_WEB_DE.Accommodation" %>
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

                        <li class="dropdown">
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal5" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal6" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal7" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal8" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal9" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                              <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../assets/images/DSCF2765w.jpg'); background-repeat: repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle"><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, accwakanacasas %>"></asp:Literal></a></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-container element-normal-top element-no-bottom  debajotitulo" style="margin-top:0px !important">
                        <div class="ImgEscalera"> 
                            <a href="Yurtas.aspx" style="z-index:40">
                                <div   style="color: white; text-shadow: 2px 2px 4px #000000 !important; background: url(../../img/YURTAS.jpg) !important;" class="DOSX">
                                    <asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index, accyurtas %>"></asp:Literal> <span class="flechitaDer fa fa-caret-right"></span>

                                </div>

                            </a>

                            <a href="Andalusian.aspx"> <div  style="color:white; text-shadow: 2px 2px 4px #000000 !important; "class="DOSX"><asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, acccortijoandaluz %>"></asp:Literal><span class="flechitaDer fa fa-caret-right"></span></div> </a>
                            <a href="Tepees.aspx" ><div  style="color:white; text-shadow: 2px 2px 4px #000000 !important; background: url(../../img/TEEPES.jpg) !important;"class="DOSX" ><asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, acctipis %>"></asp:Literal> <span class="flechitaDer fa fa-caret-right"></span></div></a>
                        </div>
                        
                        <center>
                              <a href="#" onclick="ShowContactMod();return false;" class="wakanasublink" style="font-family: Quicksand; text-align: center;">
                            <button class="Redondito"><asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, accreservar %>"></asp:Literal></button></a>
                        </center>
                        </br>
                        </br>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
