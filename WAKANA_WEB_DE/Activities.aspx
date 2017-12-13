<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="WAKANA_WEB_DE.Activities" %>


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
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal50" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal51" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal52" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal53" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal54" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal55" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal56" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal57" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal58" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal59" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal60" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal61" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal62" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal63" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal64" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal65" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal66" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                              <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal67" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    <script>

        function ShowSpartan() {
            SpartanModal.Show();
        }

        function ShowCanopy() {
            CanopyModal.Show();
        }

        function ShowArcAttack() {
            ArcModal.Show();
        }

        function ShowKayak() {
            KayakModal.Show();
        }

        function ShowPaddle() {
            PaddleSurfModal.Show();
        }

        function ShowKite() {
            KiteModal.Show();
        }

        function ShowCamping() {
            CampingModal.Show();
        }

        function ShowCycling() {
            CyclingModal.Show();
        }

        function ShowHorse() {
            HorseModal.Show();
        }

        function ShowSwimming() {
            SwimmingModal.Show();
        }

        function ShowOrni() {
            OrniModal.Show();
        }

        function ShowFLandFA() {
            FloraFaunaModal.Show();
        }

    </script>

    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/DSCF2765w.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container" style="margin-bottom: 20px;">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle" style="font-size: 6.5vw;"><asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index, actividadestitulo %>"></asp:Literal></a></div>
            </div>
            <div class="portfolio-container element-normal-top element-no-bottom debajotitulo" style="margin-top: 20px !important; margin-bottom: 20px !important;">

                <div class="col-sm-4 RemoveMargin">
                    <div class="container4" style="background-color: rgba(0, 0, 0, 0.6); background-image: none;">
                        <%--<p class="MainTitle">Activities</p>--%>
                        <p class="textoact"><asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, actdisponesmosdeuna %>"></asp:Literal></p>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowSpartan();return false;">

                    <div class="container4" style="background-image: url('../img/act/spartantrial.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">SPARTAN TRAIL</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowCanopy();return false;">

                    <div class="container4" style="background-image: url('../img/act/canopy.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">CANOPY PARK</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowArcAttack();return false;">

                    <div class="container4" style="background-image: url('../img/act/archery.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">ARC ATTACK</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowKayak();return false;">

                    <div class="container4" style="background-image: url('../img/act/kayak.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">KAYAK</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowPaddle();return false;">

                    <div class="container4" style="background-image: url('../img/act/paddlesurf.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">PADDLE SURF</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowKite();return false;">

                    <div class="container4" style="background-image: url('../img/act/windsurfing.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">KITE & WIND SURF</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowCycling();return false;">

                    <div class="container4" style="background-image: url('../img/act/biking.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">CYCLING ROUTES</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowHorse();return false;">

                    <div class="container4" style="background-image: url('../img/act/riding.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">HORSE RIDING</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowSwimming();return false;">

                    <div class="container4" style="background-image: url('../img/act/swimming.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">SWIMMING</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowOrni();return false;">

                    <div class="container4" style="background-image: url('../img/act/ornithology.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">ORNITHOLOGY</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 RemoveMargin" style="cursor: pointer;" onclick="ShowFLandFA();return false;">

                    <div class="container4" style="background-image: url('../img/act/floraandfauna.jpg');">

                        <div class="cuadro__inner">
                            <div class="cuadro__wrapper">
                                <div class="cuadro__content"><span></span><a style="display: none;">FLORA AND FAUNA</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                 <div class="row">
                <div class="col-md-12">
                    </br>
                                  <a href="../../ACTIVITIES TIMETABLE.pdf" target="_blank" class="wakanasublink" style="font-family: Quicksand; font-size: 20px; text-align: center;"><asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, acthorario %>"></asp:Literal></a>
                    </br>
                </div>
                </br>
                          
            </div>

            </br>
             <div class="row">
                <div class="col-md-12">
                    </br>
                                  <a href="../../Pack 1 Day Without Accommodation from 1 to 7.pdf" target="_blank" class="wakanasublink" style="font-family: Quicksand; font-size: 20px; text-align: center;"><asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, actprecios7 %>"></asp:Literal></a>
                    </br>
                </div>
                </br>
                          
            </div>
            </br>
             <div class="row">
                <div class="col-md-12">
                    </br>
                                  <a href="../../Pack 1 Day Without Accommodation from 8 to 17.pdf" target="_blank" class="wakanasublink" style="font-family: Quicksand; font-size: 20px; text-align: center;"><asp:Literal runat="server" ID="Literal5" Text="<%$ Resources:Index, actprecios8 %>"></asp:Literal></a>
                    </br>
                </div>
                </br>
                   </div>
            </br>
                     <div class="row">
                <div class="col-md-12">
                    </br>
                                  <a href="../../Gisela Pulido Pro Center.pdf" target="_blank" class="wakanasublink" style="font-family: Quicksand; font-size: 20px; text-align: center;"><asp:Literal runat="server" ID="Literal6" Text="<%$ Resources:Index, actpreciosgisela %>"></asp:Literal></a>
                    </br>
                </div>
                </br>
                          
            </div>
            </br>
    </section>

    <%-- MODAL SPARTAN--%>
    <dx:ASPxPopupControl ID="ActMod" CssClass="modalact" ClientInstanceName="SpartanModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Spartan Trail">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">SPARTAN TRAIL</div>
                        <div class="camptext">
                            <asp:Literal runat="server" ID="Literal7" Text="<%$ Resources:Index, actspartantrailobs %>"></asp:Literal>
                            <br /><br /><asp:Literal runat="server" ID="Literal8" Text="<%$ Resources:Index, actspartantrailrequisitos %>"></asp:Literal>
                            </br></br>• <asp:Literal runat="server" ID="Literal9" Text="<%$ Resources:Index, actspartancalzado %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, actspartanropaycalzado %>"></asp:Literal>
                           <%-- </br><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, actspartanpalabraactividad %>"></asp:Literal>--%><br />
                            <br>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>


    <%-- MODAL CANOPY--%>
    <dx:ASPxPopupControl ID="ActModal2" CssClass="modalact" ClientInstanceName="CanopyModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider2" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Canopy Park">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">CANOPY PARK</div>
                        <div class="camptext">
                            <asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, canopyparkrequisitos %>"></asp:Literal>
                            </br></br>• <asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, canopybuenaformafisica %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, canopycalzadodeportivo %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, canopymedimasde140 %>"></asp:Literal><br />
                            •<asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, canopypesarmenos120 %>"></asp:Literal>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL ARC ATTACK--%>
    <dx:ASPxPopupControl ID="ActModal3" CssClass="modalact" ClientInstanceName="ArcModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider3" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Arc Attack">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">ARC ATTACK</div>
                        <div class="camptext">
                            • <asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, arcintroduccion %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, arcguerra %>"></asp:Literal>
                            </br>•<asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, arcatrapa %>"></asp:Literal><br />
                            • <asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, arctodoscontratodos %>"></asp:Literal>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL KAYAK--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl1" CssClass="modalact" ClientInstanceName="KayakModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider4" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Kayaking">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">KAYAK</div>
                        <div class="camptext">
                            • <asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, kayakdisfruta %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, kayakexpagua %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, kayaksinlimite %>"></asp:Literal>
                            
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL PADDLE SURF--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl2" CssClass="modalact" ClientInstanceName="PaddleSurfModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider5" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Paddle Surf">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">PADDLE SURF</div>
                        <div class="camptext">
                            • <asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, paddletrabajaelequilibrio %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, paddledisfruta %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, paddlesolooengrupos %>"></asp:Literal>
                            <br />• <asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, paddlecentrodedeportes %>"></asp:Literal>

                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL KITE AND WIND SURF--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl3" CssClass="modalact" ClientInstanceName="KiteModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider6" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Kitesurf">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 5px;">
                        <div class="cmn-t-underlinecamp " style="font-size: 28px; line-height: 28px;color: black;">KITE SURF & WIND SURF</div>
                        <div class="camptext" >
                            • <asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, kitedisfrutanavegando %>"></asp:Literal>
                            <br />
                            • <asp:Literal runat="server" ID="Literal29" Text="<%$ Resources:Index, kitegozadelasvistas %>"></asp:Literal>
                            <br />
                            • <asp:Literal runat="server" ID="Literal30" Text="<%$ Resources:Index, kitenavegaseguroennuestra %>"></asp:Literal>
                            <br />
                            • <asp:Literal runat="server" ID="Literal31" Text="<%$ Resources:Index, kitecentrodedeportesacuaticos %>"></asp:Literal>
                            <br /><br /><center >  <a href="../../Gisela Pulido Pro Center.pdf" target="_blank" class="wakanasublink" style="color:black;"><asp:Literal runat="server" ID="Literal32" Text="<%$ Resources:Index, kitedescargarinfo %>"></asp:Literal></a></center> 
                            
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="ASPxPopupControl5" CssClass="modalact" ClientInstanceName="CyclingModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider8" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Biking">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">CYCLING ROUTES</div>
                        <div class="camptext">
                            • <asp:Literal runat="server" ID="Literal33" Text="<%$ Resources:Index, cyclingdisfruta %>"></asp:Literal>
                            <br />
                            • <asp:Literal runat="server" ID="Literal34" Text="<%$ Resources:Index, cyclingmountain %>"></asp:Literal>
                           
                            <br />
                            • <asp:Literal runat="server" ID="Literal35" Text="<%$ Resources:Index, cyclingtodoslosniveles %>"></asp:Literal>

                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL HORSE RIDING--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl6" CssClass="modalact" ClientInstanceName="HorseModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider9" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Horse Riding">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">HORSE RIDING</div>
                        <div class="camptext" style="font-size: 25px; line-height: 25px;">
                            <asp:Literal runat="server" ID="Literal36" Text="<%$ Resources:Index, horsesiestuprimeravez %>"></asp:Literal>
                            </br> <asp:Literal runat="server" ID="Literal37" Text="<%$ Resources:Index, horsesaprenderas %>"></asp:Literal>
                            </br> </br><asp:Literal runat="server" ID="Literal38" Text="<%$ Resources:Index, horsessitienesexp %>"></asp:Literal>
                            </br><asp:Literal runat="server" ID="Literal39" Text="<%$ Resources:Index, horsessolodejatellevar %>"></asp:Literal>
                            </br><asp:Literal runat="server" ID="Literal40" Text="<%$ Resources:Index, horsesgrupode5 %>"></asp:Literal>
                            </br><asp:Literal runat="server" ID="Literal41" Text="<%$ Resources:Index, horsesrequisitos %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal42" Text="<%$ Resources:Index, horsespantalonlargo %>"></asp:Literal>
                            </br>• <asp:Literal runat="server" ID="Literal43" Text="<%$ Resources:Index, horseszapatosdedeporte %>"></asp:Literal>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL SWIMMING--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl7" CssClass="modalact" ClientInstanceName="SwimmingModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider10" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Swimming">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">SWIMMING</div>
                        <div class="camptext">
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL ORNITHOLOGY--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl8" CssClass="modalact" ClientInstanceName="OrniModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider11" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Ornithology">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">ORNITHOLOGY</div>
                        <div class="camptext" style="font-size: 25px; line-height: 25px;">
                            <asp:Literal runat="server" ID="Literal44" Text="<%$ Resources:Index, ornitcadizeslaprovincia %>"></asp:Literal>
                            </br></br>1.	<asp:Literal runat="server" ID="Literal45" Text="<%$ Resources:Index, ornitaguilaimp %>"></asp:Literal>
                            </br>2.	<asp:Literal runat="server" ID="Literal46" Text="<%$ Resources:Index, ornitaguilapescadora %>"></asp:Literal>
                            </br>3.	<asp:Literal runat="server" ID="Literal47" Text="<%$ Resources:Index, ornitmilanonegro %>"></asp:Literal>
                            </br>4.	<asp:Literal runat="server" ID="Literal48" Text="<%$ Resources:Index, buhoreal %>"></asp:Literal>

                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>


    <%-- MODAL FLORA AND FAUNA--%>
    <dx:ASPxPopupControl ID="ASPxPopupControl9" CssClass="modalact" ClientInstanceName="FloraFaunaModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider12" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/Activities ( For Activity Screen)/Flora and Fauna">
                            <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="None"
                                ItemTextVisibility="Always" EnableLoopNavigation="true" />
                            <SettingsNavigationBar Mode="Dots" />
                            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>


                            <SettingsAutoGeneratedImages ImageWidth="1000px" ImageHeight="1000px"></SettingsAutoGeneratedImages>

                            <Styles>
                                <ImageArea Width="100%" Height="100%" />
                            </Styles>
                        </dx:ASPxImageSlider>

                    </div>
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">FLORA AND FAUNA</div>
                        <div class="camptext" style="font-size: 25px; line-height: 25px;">
                            <asp:Literal runat="server" ID="Literal49" Text="<%$ Resources:Index, florawakanalake %>"></asp:Literal>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

</asp:Content>
