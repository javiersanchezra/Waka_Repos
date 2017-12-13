<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LegalNotice.aspx.cs" Inherits="WAKANA_WEB_DE.LegalNotice" %>
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
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal29" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal30" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal31" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal32" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                             <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal33" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
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
                                <div class="col-md-12 primercol" > <a class="lobstertitle">Legal Notice</a></div>
                            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-container element-normal-top element-no-bottom debajotitulo" style="text-align:center; margin-top:20px !important;">
                     
<p>“At Wakana Lake we welcome everyone with open arms and we will try to make your visit in</p>
                        <p>Wakana the closest to being at home.”</p>

                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal6" Text="<%$ Resources:Index, lnpoliticadeprivacidad %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index,lnpoliticatexto  %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, lndatosdetrafico %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, lndatosdetraficotexto %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, lnejercicios %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal5" Text="<%$ Resources:Index, lnejerciciostexto %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal7" Text="<%$ Resources:Index, lnconsentimiento  %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal8" Text="<%$ Resources:Index, lnconsentimientotexto %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal9" Text="<%$ Resources:Index, lnformularios %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, lnformulariostexto %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, lnredes %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, lnredestexto  %>"></asp:Literal>
                        <p>&nbsp;</p>
                        <p><strong><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, lnmedidas %>"></asp:Literal></strong></p>
                        <asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, lnmedidastexto %>"></asp:Literal>
                        <%--<p><strong>PRIVACY POLICY.</strong></p>
                        <p>In compliance with the Organic Law 15/1999, 13 December, for the protection of personal</p>
                        <p>data (LOPD), through this document, WAKANA LAKE informs users of this website about the</p>
                        <p>use and processing of personal data provided in its navigation and about the data protection</p>
                        <p>policy to be applied to such data.</p>
                        <p>&nbsp;</p>
                        <p><strong>TRAFFIC DATA</strong></p>
                        <p>Traffic data such as name of the access provider, IP address, date and time of access, links</p>
                        <p>from which you access and other information of a similar nature that your browsing of the</p>
                        <p>site can provide will be treated anonymously and with sole purpose of making statistics of</p>
                        <p>our visitor websites.</p>
                        <p>A method of collecting additional information from your visits to our service, is recording the</p>
                        <p>IP address of your computer. This IP protocol is a number that is automatically assigned to</p>
                        <p>your computer whenever you are browsing. Any web page that you access immediately</p>
                        <p>detects the presence of your pc by its IP address. When you access any of our pages, your IP</p>
                        <p>address is automatically stored. This only has the unique purpose of developing statistics of</p>
                        <p>visits to our website letting us know the performance of our services in order to improve day</p>
                        <p>to day. According to the LSSI (Law of Services of the Information Society) WAKANA LAKE</p>
                        <p>keeps records of navigation for the statutory deadline (one year), from the same moment</p>
                        <p>that the regulatory implementation of that legislation takes place (as specifications of the</p>
                        <p>Ministry of Telecommunications).</p>
                        <p>&nbsp;</p>
                        <p><strong>EXERCISE RIGHTS OF PRIVACY</strong></p>
                        <p>The user has the right to request and obtain, for free, information on their personal data</p>
                        <p>under treatment, its origin (which in our case will always be the forms located on the web)</p>
                        <p>and communications that may affect them.</p>
                        <p>Users can send a written communication to the address of WAKANA LAKE or an email</p>
                        <p>info@wakanalake.com, including in both cases, photocopy of their Identity Card or other</p>
                        <p>similar identification document to request the exercise of rights, rectification, cancellation</p>
                        <p>and opposition.</p>
                        <p>&nbsp;</p>
                        <p><strong>USERS CONSENT/REVOCATION</strong></p>
                        <p>By selecting the check box the User accepts the privacy policy and consent for newsletters on</p>
                        <p>our services and activities as well as replies to any queries the user may have. Likewise the</p>
                        <p>consent giving for commercial purposes can be revoked by sending an email to</p>
                        <p>info@wakanalake.com or at the WAKANA LAKE  address.</p>

                        <p>WAKANA LAKE will be exonerated from any responsibility in connection with any change of</p>
                        <p>details sent from the email address provided through any of our online forms, as we will</p>
                        <p>assume that it has been made by the user. </p>
                        <p>&nbsp;</p>
                        <p><strong>CONTACT FORMS AND TRADITIONAL MEDIA</strong></p>
                        <p>The user is allowed to send unencrypted personal data via the contact form standard type,</p>
                        <p>and hosted on the servers of WAKANA LAKE. Personal data collected will be automatically</p>
                        <p>processed and incorporated into the corresponding files whose WAKANA LAKE is the owner</p>
                        <p>and are registered in the Spanish Data Protection Agency. The purpose of processing these</p>
                        <p>data will be for consultations, advertising or sending newsletters on the company, its</p>
                        <p>activities, promotions and reservations.</p>
                        <p>WAKANA LAKE will automatically manage these data for management, development and</p>
                        <p>improvement of our services as well as technical and commercial purposes on the services</p>
                        <p>offered.</p>
                        <p>The user is responsible for the accuracy of their data, promising not to introduce false data</p>
                        <p>and to rectify them if necessary. The provider makes available to the user all the media so he</p>
                        <p>can proceed with the modification of data by designated forms on our website. The user</p>
                        <p>states when not entering his personal details but those of a third party he/she has</p>
                        <p>authorization to do so.</p>
                        <p>The fields marked with an asterisk (*) are those that require a mandatory response. If they</p>
                        <p>are not completed, the consequence is the inability to send the request.</p>
                        <p>&nbsp;</p>
                        <p><strong>SOCIAL NETWORKS</strong></p>
                        <p>WAKANA LAKE has a profile on Facebook and Instagram, being in all cases responsible for the</p>
                        <p>processing of data from its followers, fans, subscribers, commentators and other profiles of</p>
                        <p>users (hereinafter "followers"). The treatment performed by WAKANA LAKE on such data will</p>
                        <p>be, at most, that one allowed by the social network to corporate profiles. This way, WAKANA</p>
                        <p>LAKE  may inform its followers by any mean allowed by the social network about any</p>
                        <p>activities, offers or provide personalized customer service. In no case WAKANA LAKE will take</p>
                        <p>data from social networks, unless the user provided timely and explicitly consent to do so.</p>
                        <p>When, due to the very nature of social networks, the effective practice of the follower's</p>
                        <p>rights is subject to modification of the personal profile, WAKANA LAKE will help and advise</p>
                        <p>him/her to do so to the extent of their possibilities.</p>
                        <p>Certain services provided through the website may contain specific conditions with regards</p>
                        <p>to data protection. It is essential to read and accept prior to the request of the service.</p>
                        <p>&nbsp;</p>
                        <p><strong>SECURITY MEASURES</strong></p>
                        <p>WAKANA LAKE has adopted the security levels for protection of personal data required by</p>
                        <p>Law, and has installed all the means and technical measures at its disposal to prevent the</p>
                        <p>loss, misuse, alteration, unauthorized access and theft of the Personal Data provided.</p>
                        <p>However, the User must be aware that Internet security measures are not unassailable.</p>--%>
                        </br>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
