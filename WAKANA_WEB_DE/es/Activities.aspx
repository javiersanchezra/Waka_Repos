<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="WAKANA_WEB_DE.es.Activities" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <style>
        .CAMP {
            background-color: rgba(255, 255, 255, 0.30);
            margin: 5px;
            overflow: auto;
        }

        .imgcontainer {
            height: 300px;
        }

        @media (min-width: 768px) {
            .imgcontainer {
                height: 600px;
            }
        }

        .modalact {
            width: 750px;
            height: 600px;
        }

        @media (max-width: 768px) {
            .modalact {
                width: 90vw;
                height: 90vh;
            }
        }

        .camptext {
            font-family: Quicksand;
            font-size: 20px;
            line-height: 35px;
            font-weight: 100;
            padding: 20px;
            color: black;
        }

        .TITULOCAMP {
            padding-top: 220px;
            font-family: Quicksand;
            font-size: 25px;
            line-height: 20px;
            color: white;
        }

        p.TITULOCAMP:after {
            content: "";
            position: absolute;
            width: 50%;
            height: 1px;
            bottom: 0;
            left: 25%;
            margin-bottom: -5px;
            border-bottom: 2px solid white;
        }

        .buttonmoreinfo {
            background-color: #81b72d;
            height: 60px;
            padding-top: 8px;
            font-family: Quicksand;
            font-size: 25px;
            line-height: 40px;
            color: white;
            margin: 25px;
        }




        .cuadro {
            position: relative;
            display: block;
            margin: 2em 0;
            background-color: transparent;
            color: #222;
        }

            .cuadro:after {
                display: block;
                padding-bottom: 100%;
                width: 100%;
                height: 0;
                background-color: rgba(0, 0, 0, 0.30);
                content: "";
                border-color: white;
                border-width: 7px;
                border-style: solid;
            }

        .cuadro__inner {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .cuadro__wrapper {
            display: table;
            width: 100%;
            height: 100%;
        }

        .cuadro__content {
            display: table-cell;
            vertical-align: middle;
            text-align: center;
            color: white;
            font-family: 'Josefin Sans';
            line-height: 30px;
        }

            .cuadro__content a {
                display: table-cell;
                vertical-align: middle;
                text-align: center;
                color: white;
                font-family: 'Josefin Sans';
                line-height: 30px;
            }

            .cuadro__content:hover span {
                display: none;
            }

            .cuadro__content:hover a {
                line-height: 10px !important;
                font-size: 40px;
                display: inline !important;
            }

        .swatch-blue a:hover, [class*=swatch-] .swatch-blue a:hover {
            color: white;
        }

        @media (min-width: 480px) {
            .cuadro__content {
                font-size: 5em;
            }

            .divcirculo {
                padding: 130px;
            }
        }

        .cuadro:hover:after {
            box-shadow: 0px 0px 10px #fff;
            background-color: rgba(0, 0, 0, 0.50);
        }



        div.container4 {
            padding-top: 100%;
            width: 100% !important;
            position: relative;
            background-image: url("http://r.ddmcdn.com/s_f/o_1/cx_633/cy_0/cw_1725/ch_1725/w_720/APL/uploads/2014/11/too-cute-doggone-it-video-playlist.jpg");
            background-size: 100%;
            margin: 0;
            transition: .5s;
            color: #fff;
            box-shadow: inset 0 0 0 1000px rgba(0,0,0,.00);
        }

            div.container4:hover {
                 box-shadow: inset 0 0 0 1000px rgba(0,0,0,.35);
                transition: .35s;
            }

            div.container4 p.Tit2 {
                margin: 0;
                position: absolute;
                top: 20%;
                left: 10%;
                font-size: 35px;
                font-family: Quicksand;
                transform: translate(0%, 0%);
                /*text-shadow: rgba(0, 0, 0, 0.6) 1px 1px 1px;*/
            }

            div.container4 p.Desc {
                margin: 0;
                position: absolute;
                top: 30%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%);
                font-size: 15px;
            }

            div.container4 p {
                margin: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%);
            }

                div.container4 p.MainTitle {
                    margin: 0;
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    margin-right: -50%;
                    transform: translate(-50%, -50%);
                    color: #fff;
                    font-family: 'Josefin Sans';
                    /*font-family: Lobster;*/
                    font-size: calc(3vw + 40px);
                }





        @media (min-width: 768px) {
            .cuadro__content {
                font-size: 2em;
            }

            .divcirculo {
                padding: 50px;
            }
        }



        .dxpcLite_DevEx .dxpc-content, .dxdpLite_DevEx .dxpc-content {
            white-space: normal;
            padding: 0px 0px 0px 0px !important;
        }
    </style>

    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../assets/images/DSCF2765w.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container" style="margin-bottom: 20px;">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle" style="font-size: 6.5vw;">Actividades</a></div>
            </div>

            <div class="portfolio-container element-normal-top element-no-bottom debajotitulo" style="margin-top: 20px !important; margin-bottom: 20px !important;">


                <div class="col-sm-4 RemoveMargin">
                    <div class="container4" style="background-color: rgba(0, 0, 0, 0.6); background-image: none;">
                        <%--<p class="MainTitle">Activities</p>--%>
                        <p class="textoact">“Disponemos de una amplia oferta de actividades lúdicas, deportivas y de ocio que, además de incentivar la realización de actividades físicas y llevar una vida sana, contribuyen a trabajar en valores fundamentales como la autoconfianza, la superación o el trabajo en equipo, desarrollando también actitudes positivas hacia la convivencia y el respeto por la Naturaleza.”</p>
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
                            20 Obstáculos
                            <br>
                        </div>
                        <div class="camptext">
                            REQUISITOS:</br></br>• Calzado deportivo cerrado</br>• Ropa y calzado extra para después de la actividad

                            
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
                            REQUISITOS</br></br>• Buena forma física</br>• Calzado deportivo cerrado</br>• Medir más de 140cm<br />
                            • Pesar menos de 120kg
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
                            • Introducción al tiro con arco</br>• Guerra de comandos</br>• Atrapa la bandera<br />
                            • Todos contra todos
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
                            • Disfruta de rutas por nuestro embalse y de toda la vida salvaje que nos ofrece
                            </br>• Sin límite de edad
                            
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
                            • Trabaja el equilibrio</br>• Disfruta del paisaje desde la visión que nos ofrece el remar de pie</br>• Sólo o en grupos
                            <br />
                            • Centro de deportes acuáticos Gisela Pulido, 10 veces campeona del mundo de kite surf

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
                    <div class="col-sm-6" style="padding: 10px;">
                        <div class="cmn-t-underlinecamp " style="color: black;">KITE SURF Y WIND SURF</div>
                        <div class="camptext" style="font-size: 25px; line-height: 25px;">
                            • Disfruta navegando y aprovechando la fuerza del Levante de la zona
                            <br />
                            • Goza de las vistas privilegiadas de nuestro entorno a la vez que practicas deporte
                            <br />
                            • Navega seguro en nuestra zona destinada a esta práctica.
                            <br />
                            • Centro de deportes acuáticos Gisela Pulido, 10 veces campeona del mundo de kite surf 
                             <br /><br /><center >  <a href="../../Gisela Pulido Pro Center.pdf" target="_blank" class="wakanasublink" style="color:black;">DESCARGAR INFORMACIÓN</a></center> 
                                                      
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

    <%-- MODAL CAMPING--%>
    <%--<dx:ASPxPopupControl ID="ASPxPopupControl4" CssClass="modalact" ClientInstanceName="CampingModal" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Fade" LoadContentViaCallback="None">

        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-sm-6 imgcontainer">
                        <dx:ASPxImageSlider ID="ASPxImageSlider7" runat="server" ClientInstanceName="ImageSlider"
                            EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" ShowNavigationBar="False" SettingsAutoGeneratedImages-ImageHeight="1000px" SettingsAutoGeneratedImages-ImageWidth="1000px" ImageSourceFolder="~/gallery/act/camping">
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
                        <div class="cmn-t-underlinecamp " style="color: black;">CAMPING</div>
                        <div class="camptext">
                            </br></br>
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>--%>

    <%-- MODAL CYCLING RUTES--%>
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
                        <div class="cmn-t-underlinecamp " style="color: black;">RUTAS EN BICI</div>
                        <div class="camptext">
                            • Disfruta del Corredor Verde Dos Bahías que va desde Los Barrios hasta Puerto Real con un total de 93 Km
                            <br />
                            • Mountain bike (MTB)
                           
                            <br />
                            • Todos los niveles

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
                        <div class="cmn-t-underlinecamp " style="color: black;">RUTAS A CABALLO</div>
                        <div class="camptext" style="font-size: 25px; line-height: 25px;">
                            Si es tu primera vez:</br> 
Aprenderás la técnica y manejo en ruta. Disfrutarás de la Naturaleza que ofrece Wakana Lake y sus alrededores.</br> </br> Si tienes experiencia:</br>
Sólo déjate llevar por el idílico paraje en el que nos encontramos.</br>
Grupo de 5 personas (máx).</br>REQUISITOS</br>
• Pantalón largo y ﬂexible.</br>
• Zapatos de deporte o bota de caña alta
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
                            Cádiz es la provincia con mayor diversidad ornitológica de la península debido a su situación geográfica. Son varias especies destacadas las que nos visitan en Wakana Lake como por ejemplo:
</br></br>1.	Águila imperial
</br>2.	Águila pescadora
</br>3.	Milano negro
</br>4.	Buho real

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
                            Wakana Lake se encuentra dentro del Parque Natural de los Alcornocales, conocido como la última Selva Virgen del sur de Europa. Gracias a la pureza de nuestras aguas existe una colonia de nutrias bastante importante en nuestra zona. Junto con las nutrias, zorros y venados entre otros comparten este idílico paraje.
                        </div>

                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>

    </dx:ASPxPopupControl>

</asp:Content>
