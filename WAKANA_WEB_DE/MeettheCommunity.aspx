<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MeettheCommunity.aspx.cs" Inherits="WAKANA_WEB_DE.MeettheCommunity" %>

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
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                              <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal29" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/backmeet.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol">
                    </br>
                                <center>
                                    <a class="lobstertitle" ><asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index, meewakanalakehe %>"></asp:Literal></a>
                                </center>
                    <center>
                                    <a class="lobstertitle" style="font-size:2.5vw;"><asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, meeentregandofelicidad %>"></asp:Literal></a>
                                </center>



                </div>


            </div>
            <div class="portfolio-container element-normal-top element-no-bottom debajotitulo">

                <div class="row">

                    <div class="col-md-12">

                        <div class="row">
                            <div class="col-md-6">
                                <center>
              <img src="../assets/images/juanantonio.jpg" alt="" class="ImagenLoca">
            </center>
                            </div>
                            <div class="col-md-6 margenazo">
                                <p class="cmn-t-underline ">JUAN ANTONIO VALLE GARCÍA</p>
                                <p class="texto">
                                    <asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, meedptoact %>"></asp:Literal></p>
                                <p class="texto">Email: javalle@wakanalake.com</p>
                                <p class="texto">
                                    <asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, meejuanprimeraslineas %>"></asp:Literal><br />
                                    <br />
                                    <asp:Literal runat="server" ID="Literal5" Text="<%$ Resources:Index, meejuanfuncion %>"></asp:Literal>
                                </p>
                            </div>
                        </div>
                        </br>
          <div class="row">
              <div class="col-md-6">
                  <center>
              <img src="../assets/images/miguelangel.jpg" alt="" class="ImagenLoca">
            </center>
              </div>
              <div class="col-md-6 margenazo">
                  <p class="cmn-t-underline ">MIGUEL ÁNGEL ESTRADA JIMÉNEZ</p>
                  <div style="line-height: 15px;">

                      <p class="texto"><asp:Literal runat="server" ID="Literal6" Text="<%$ Resources:Index, meedptodenaturaleza %>"></asp:Literal></p>
                      <p class="texto">Email: recepcion@wakanalake.com</p>
                      <p class="texto">
                          <asp:Literal runat="server" ID="Literal7" Text="<%$ Resources:Index, meealegre %>"></asp:Literal>
                      </p>
                      <%--    <p class="texto">
                Le ayudaré a desconectar de su yo urbano para que conecte con su yo natural. Resolveré las dudas que le surjan sobre el medio natural, su flora y su fauna. En definitiva, me encargaré de que comprenda y disfrute al máximo, los placeres que nos ofrece nuestra Madre Naturaleza.
            </p>--%>
                  </div>
              </div>
          </div>
                        </br>

          <br />
                        <div class="row">
                            <div class="col-md-6">
                                <center>
              <img src="../assets/images/Jack _ Rocky.jpg" alt="" class="ImagenLoca">
            </center>
                            </div>
                            <div class="col-md-6 margenazo">
                                <p class="cmn-t-underline ">JACK & PITÁGORAS</p>
                                <div style="line-height: 15px;">
                                    <p class="texto"><asp:Literal runat="server" ID="Literal8" Text="<%$ Resources:Index, mmeepitagoras %>"></asp:Literal></p>

                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <center>
              <img src="../assets/images/Moody.jpg" alt="" class="ImagenLoca">
            </center>
                            </div>
                            <div class="col-md-6 margenazo">
                                <p class="cmn-t-underline ">MOODY</p>
                                <div style="line-height: 15px;">
                                    <p class="texto"><asp:Literal runat="server" ID="Literal9" Text="<%$ Resources:Index, meemoody %>"></asp:Literal></p>

                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <center>
              <img src="../assets/images/Ginger.jpg" alt="" class="ImagenLoca">
            </center>
                            </div>
                            <div class="col-md-6 margenazo">
                                <p class="cmn-t-underline ">GINGER</p>
                                <div style="line-height: 15px;">
                                    <p class="texto"><asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, meeginger %>"></asp:Literal></p>

                                </div>
                            </div>
                        </div>
                        <br />
                    </div>

                </div>


            </div>
        </div>


    </section>


</asp:Content>
