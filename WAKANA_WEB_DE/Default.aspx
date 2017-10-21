<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WAKANA_WEB_DE.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>Wakana Lake - Where harmony finds you!</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">


    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,300italic,400italic,600italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/color-defaults.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-white.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-blue.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-gray.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-black.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-white-black.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-white-green.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/swatch-white-red.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/fonts.min.css" media="screen">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">
    <link rel="stylesheet" href="../assets/css/Default.css" media="screen">


    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <!-- Slider Revolution CSS Files -->
    <link rel="stylesheet" type="text/css" href="../revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="../revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="../revolution/css/navigation.css">

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

    <!-- Core jQuery Script -->
    <script src="../assets/js/packages.min.js"></script>
    <script src="../assets/js/theme.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>

    <!-- Slider Revolution core JavaScript files -->
    <script type="text/javascript" src="../revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="../revolution/js/jquery.themepunch.revolution.min.js"></script>

    <!-- Slider Revolution extension scripts. ONLY NEEDED FOR LOCAL TESTING -->
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="../revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-91744513-1', 'auto');
        ga('send', 'pageview');

    </script>
    <script>
        function ShowBooking() {
            booking.SetContentUrl("../BOOKING.aspx");

            var w = window.innerWidth;;
            if (w <= 800)
                w = w * .90;
            else
                w = 700;

            //var h = window.innerHeight * .90;
            var h = 630;
            booking.SetSize(w, h);
            booking.UpdatePosition();
            booking.Show();
        }




        function ShowContactMod() {
            ContactMod.Show();
        }

        function ShowYouTube() {
            YoutubeMod.Show();
        }
        ShowYouTube();
    </script>
</head>
<body class="transparent-header">
    <form runat="server">

        <div class="pace-overlay"></div>



        <div id="masthead" class="navbar navbar-static-top swatch-black navbar-sticky" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".main-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Default.aspx" class="navbar-brand" style="width: 250px; font-weight: lighter; font-size: 30px; font-family: 'Josefin Sans';">
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
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" >Place</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx">Gallery
                                                    
                                    </a>
                                </li>
                      
                                <li>
                                    <a href="Map.aspx">Map
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#">Community</a>


                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx">About Us</a></li>
                                        <li><a  href="Meetthecommunity.aspx">Team</a></li>
                                    </ul>



                                </li>


                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Accommodation</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx">Yurts
                                                    
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx">Andalusian Cortijo
                                                    
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx">Tepees
                                                    
                                    </a>
                                </li>


                            </ul>
                        </li>

                     
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Camps</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx">School Camps
                                                    
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx">Wakana Lake Summers Camps
                                                    
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx">Spartan Race Camps
                                                    
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx">Bocalan Camps
                                                    
                                    </a>
                                </li>

                            </ul>
                        </li>

                          <li class="dropdown">
                            <a href="Activities.aspx" >Activities</a>
                            
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" >Events</a>
                        </li>
                      
                           <li class="dropdown">
                            <a href="Partners.aspx" >Partners</a>
                        </li>
                          <li class="dropdown">
                             <a href="/es/Default.aspx"  style=" font-size:30px;  "><img style="padding-bottom:10px" width="34px" height="20px" src="assets/images/spain.jpg"></img></a>
                           
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" ">BOOKING</a>
                           
                        </li>

                    </ul>

                </nav>
            </div>
        </div>

        <div id="content">
            <article>
                <script type="text/javascript">
                    var oxyThemeData = {
                        navbarHeight: 90,
                        navbarScrolled: 70,
                        navbarScrolledPoint: 200,
                        navbarScrolledSwatches:
                        {
                            up: 'swatch-black',
                            down: 'swatch-black'
                        },
                        scrollFinishedMessage: 'No more items to load.',
                        hoverMenu:
                        {
                            hoverActive: false,
                            hoverDelay: 1,
                            hoverFadeDelay: 200
                        }
                    };
                </script>

                <div class="rev_slider_wrapper fullscreen-container">

                    <!-- the ID here will be used in the JavaScript below to initialize the slider -->
                    <div id="rev_slider_1" class="rev_slider fullscreenbanner" style="display: none">

                        <ul>

                            <!-- MINIMUM SLIDE STRUCTURE -->
                            <!-- SLIDE  -->
                            <li data-index="rs-1599" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="30" data-thumb="../../assets/images/fitness-60x60.jpg" data-rotate="0" data-saveperformance="off" data-title="HTML5 Video" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="../../assets/images/DSCF2765w.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />
                                <!-- LAYERS -->

                                <!-- BACKGROUND VIDEO LAYER -->
                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="../../assets/videos/wakana6febrero.mp4"
                                    data-videopreload="auto"
                                    data-videoloop="loopandnoslidestop"
                                    data-forcecover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false">
                                </div>
                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption tp-shape tp-shapewrapper  "
                                    id="slide-1599-layer-1"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-fontsize="['90','90','90','55']"
                                    data-lineheight="['90','90','90','60']"
                                    data-width="full"
                                    data-height="full"
                                    data-whitespace="nowrap"
                                    data-type="shape"
                                    data-basealign="slide"
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"opacity:0;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 18; text-transform: left; background-color: rgba(0, 0, 0, 0.25); border-color: rgba(0, 0, 0, 0); border-width: 0px;">
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption NotGeneric-Title   tp-resizeme longtitle"
                                    id="slide-1599-layer-2"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-lineheight="['145']"
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"z:0;rX:0;rY:0;rZ:5deg;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Back.easeOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,10,10,10]"
                                    data-paddingright="[20,0,0,0]"
                                    data-paddingbottom="[20,10,10,10]"
                                    data-paddingleft="[10,0,0,0]"
                                    style="z-index: 19; white-space: nowrap; text-transform: left; font-size: 5vw; font-weight: 100; font-family: 'Josefin Sans';">
                                    THE ADVENTURE STARTS HERE
                                </div>







                                <div class="tp-caption Newspaper-Button rev-btn"
                                    id="slide-1599-layer-5"
                                    data-x="['center','center','center','center']" data-hoffset="['-200','-130','-130','-130']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['110',110','110','110']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="button"
                                    data-actions='[{
 
        "event": "click", 
        "action": "simplelink", 
        "target": "_self", 
        "url": "Events.aspx"
 
    }]'
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                    data-textalign="['center','center','center','center']"
                                    data-paddingtop="[10,10,10,10]"
                                    data-paddingright="[10,10,10,10]"
                                    data-paddingbottom="[10,10,10,10]"
                                    data-paddingleft="[10,10,10,10]"
                                    style="z-index: 198; width: 152px; text-align: center; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; ">
                                    <a href="Events.aspx" style="position: relative; z-index: 150; color: white;">PROMOTIONS</a>
                                </div>





                                <a href="#" style="color: white;" onclick="ShowYouTube();return false;">
                                    <div class="tp-caption Newspaper-Button"
                                        id="slide-1599-layer-6"
                                        data-x="['center','center','center','center']" data-hoffset="['200','130','130','130']"
                                        data-y="['middle','middle','middle','middle']" data-voffset="['110',110','110','110']"
                                        data-width="none"
                                        data-height="none"
                                        data-whitespace="nowrap"
                                        data-type="button"
                                        data-responsive_offset="on"
                                        data-responsive="off"
                                        data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                        data-textalign="['center','center','center','center']"
                                        data-paddingtop="[4,4,4,4]"
                                        data-paddingright="[10,10,10,10]"
                                        data-paddingbottom="[10,10,10,10]"
                                        data-paddingleft="[10,10,10,10]"
                                        style="height: 39px; z-index: 199; white-space: nowrap; outline: none; box-shadow: none; box-sizing: border-box; cursor: pointer; font-family: Quicksand; visibility: inherit; transition: none; text-align: center !important; line-height: 0px; margin: 0px; letter-spacing: 2px; font-size: 13px; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px; color: black; background-color: white; border-radius: 0px;">
                                        <img src="../img/play-button.png" style="width: 25px; height: 25px;" />
                                        PLAY VIDEO
                                    </div>
                                </a>





                            </li>

                            <li data-index="rs-1562" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="30" data-thumb="../../assets/images/fitness-60x60.jpg" data-rotate="0" data-saveperformance="off" data-title="HTML5 Video" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="../../img/slide/slidefamily.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />
                                <!-- LAYERS -->

                                <!-- BACKGROUND VIDEO LAYER -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption tp-shape tp-shapewrapper  "
                                    id="slide-1562-layer-1"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-fontsize="['90','90','90','55']"
                                    data-lineheight="['90','90','90','60']"
                                    data-width="full"
                                    data-height="full"
                                    data-whitespace="nowrap"
                                    data-type="shape"
                                    data-basealign="slide"
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"opacity:0;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 18; text-transform: left; background-color: rgba(0, 0, 0, 0.25); border-color: rgba(0, 0, 0, 0); border-width: 0px;">
                                </div>


                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption NotGeneric-Title   tp-resizeme longtitle"
                                    id="slide-1562-layer-2"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    <%--  data-fontsize="['60']"--%>
                                    data-lineheight="['145']"
                                    <%--    data-width="['auto']"
                            data-height="['auto']"--%>
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"z:0;rX:0;rY:0;rZ:5deg;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Back.easeOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,10,10,10]"
                                    data-paddingright="[20,0,0,0]"
                                    data-paddingbottom="[20,10,10,10]"
                                    data-paddingleft="[10,0,0,0]"
                                    style="z-index: 19; white-space: nowrap; text-transform: left; font-size: 5vw; font-weight: 100; font-family: 'Josefin Sans';">
                                    A SUMMER OF POSSIBILITIES 
                                </div>



                                <div class="tp-caption Newspaper-Button rev-btn "
                                    id="slide-1562-layer-4"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['72',72','72','72']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="button"
                                    data-actions='[{
 
        "event": "click", 
        "action": "simplelink", 
        "target": "_self", 
        "url": "Camps.aspx"
 
    }]'
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[10,10,10,10]"
                                    data-paddingright="[10,10,10,10]"
                                    data-paddingbottom="[10,10,10,10]"
                                    data-paddingleft="[10,10,10,10]"
                                    style="z-index: 108; font-family:'Josefin Sans'; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; ">
                                    EXPLORE OUR CAMPS
                                </div>


                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption NotGeneric-Icon   tp-resizeme"
                                    id="slide-1562-layer-5"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 21; white-space: nowrap; text-transform: left; cursor: default;">
                                    <i class="pe-7s-ball"></i>
                                </div>


                            </li>


                            <li data-index="rs-1560" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="30" data-thumb="../../assets/images/fitness-60x60.jpg" data-rotate="0" data-saveperformance="off" data-title="HTML5 Video" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="../../img/slide/slide1.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />
                                <!-- LAYERS -->

                                <!-- BACKGROUND VIDEO LAYER -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption tp-shape tp-shapewrapper  "
                                    id="slide-1560-layer-1"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-fontsize="['90','90','90','55']"
                                    data-lineheight="['90','90','90','60']"
                                    data-width="full"
                                    data-height="full"
                                    data-whitespace="nowrap"
                                    data-type="shape"
                                    data-basealign="slide"
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"opacity:0;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 18; text-transform: left; background-color: rgba(0, 0, 0, 0.25); border-color: rgba(0, 0, 0, 0); border-width: 0px;">
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption NotGeneric-Title   tp-resizeme longtitle"
                                    id="slide-1560-layer-2"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    <%--  data-fontsize="['60']"--%>
                                    data-lineheight="['145']"
                                    <%--    data-width="['auto']"
                            data-height="['auto']"--%>
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"z:0;rX:0;rY:0;rZ:5deg;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Back.easeOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,10,10,10]"
                                    data-paddingright="[20,0,0,0]"
                                    data-paddingbottom="[20,10,10,10]"
                                    data-paddingleft="[10,0,0,0]"
                                    style="z-index: 19; white-space: nowrap; text-transform: left; font-size: 5vw; font-weight: 100; font-family: 'Josefin Sans';">
                                    WHERE HARMONY FINDS YOU
                                </div>



                                <div class="tp-caption Newspaper-Button rev-btn "
                                    id="slide-1560-layer-4"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['72',72','72','72']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="button"
                                    data-actions='[{
 
        "event": "click", 
        "action": "simplelink", 
        "target": "_self", 
        "url": "Community.aspx"
 
    }]'
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[10,10,10,10]"
                                    data-paddingright="[10,10,10,10]"
                                    data-paddingbottom="[10,10,10,10]"
                                    data-paddingleft="[10,10,10,10]"
                                    style="z-index: 108;  font-family:'Josefin Sans'; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; ">
                                    ABOUT US
                                </div>



                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption NotGeneric-Icon   tp-resizeme"
                                    id="slide-1560-layer-5"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 21; white-space: nowrap; text-transform: left; cursor: default;">
                                    <i class="pe-7s-ball"></i>
                                </div>


                            </li>


















                            <li data-index="rs-1561" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="30" data-thumb="../../assets/images/fitness-60x60.jpg" data-rotate="0" data-saveperformance="off" data-title="HTML5 Video" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="../../img/slide/slide2.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />
                                <!-- LAYERS -->

                                <!-- BACKGROUND VIDEO LAYER -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption tp-shape tp-shapewrapper  "
                                    id="slide-1561-layer-1"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-fontsize="['90','90','90','55']"
                                    data-lineheight="['90','90','90','60']"
                                    data-width="full"
                                    data-height="full"
                                    data-whitespace="nowrap"
                                    data-type="shape"
                                    data-basealign="slide"
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"opacity:0;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 18; text-transform: left; background-color: rgba(0, 0, 0, 0.25); border-color: rgba(0, 0, 0, 0); border-width: 0px;">
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption NotGeneric-Title   tp-resizeme longtitle"
                                    id="slide-1561-layer-2"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    <%--  data-fontsize="['60']"--%>
                                    data-lineheight="['145']"
                                    <%--    data-width="['auto']"
                            data-height="['auto']"--%>
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"z:0;rX:0;rY:0;rZ:5deg;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Back.easeOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,10,10,10]"
                                    data-paddingright="[20,0,0,0]"
                                    data-paddingbottom="[20,10,10,10]"
                                    data-paddingleft="[10,0,0,0]"
                                    style="z-index: 19; white-space: nowrap; text-transform: left; font-size: 5vw; font-weight: 100; font-family: 'Josefin Sans';">
                                    YOUR HOME AWAY FROM HOME
                                </div>



                                <div class="tp-caption Newspaper-Button rev-btn "
                                    id="slide-1561-layer-4"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['72',72','72','72']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="button"
                                    data-actions='[{
 
        "event": "click", 
        "action": "simplelink", 
        "target": "_self", 
        "url": "Accommodation.aspx"
 
    }]'
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[10,10,10,10]"
                                    data-paddingright="[10,10,10,10]"
                                    data-paddingbottom="[10,10,10,10]"
                                    data-paddingleft="[10,10,10,10]"
                                    style="z-index: 108;  font-family:'Josefin Sans'; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; ">
                                    VISIT ACCOMMODATION
                                </div>


                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption NotGeneric-Icon   tp-resizeme"
                                    id="slide-1561-layer-5"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 21; white-space: nowrap; text-transform: left; cursor: default;">
                                    <i class="pe-7s-ball"></i>
                                </div>


                            </li>







                            <li data-index="rs-1563" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="30" data-thumb="../../assets/images/fitness-60x60.jpg" data-rotate="0" data-saveperformance="off" data-title="HTML5 Video" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="../../img/slide/slidecamps.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />
                                <!-- LAYERS -->

                                <!-- BACKGROUND VIDEO LAYER -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption tp-shape tp-shapewrapper  "
                                    id="slide-1563-layer-1"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    data-fontsize="['90','90','90','55']"
                                    data-lineheight="['90','90','90','60']"
                                    data-width="full"
                                    data-height="full"
                                    data-whitespace="nowrap"
                                    data-type="shape"
                                    data-basealign="slide"
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"opacity:0;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 18; text-transform: left; background-color: rgba(0, 0, 0, 0.25); border-color: rgba(0, 0, 0, 0); border-width: 0px;">
                                </div>


                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption NotGeneric-Title   tp-resizeme longtitle"
                                    id="slide-1563-layer-2"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                    <%--  data-fontsize="['60']"--%>
                                    data-lineheight="['145']"
                                    <%--    data-width="['auto']"
                            data-height="['auto']"--%>
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"z:0;rX:0;rY:0;rZ:5deg;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Back.easeOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,10,10,10]"
                                    data-paddingright="[20,0,0,0]"
                                    data-paddingbottom="[20,10,10,10]"
                                    data-paddingleft="[10,0,0,0]"
                                    style="z-index: 19; white-space: nowrap; text-transform: left; font-size: 5vw; font-weight: 100; font-family: 'Josefin Sans';">
                                    THE MAGIC OF WAKANA
                                </div>



                                <div class="tp-caption Newspaper-Button rev-btn "
                                    id="slide-1563-layer-4"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['72',72','72','72']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="button"
                                    data-actions='[{
 
        "event": "click", 
        "action": "simplelink", 
        "target": "_self", 
        "url": "Place.aspx"
 
    }]'
                                    data-responsive_offset="on"
                                    data-responsive="off"
                                    data-frames='[{"from":"y:50px;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[10,10,10,10]"
                                    data-paddingright="[10,10,10,10]"
                                    data-paddingbottom="[10,10,10,10]"
                                    data-paddingleft="[10,10,10,10]"
                                    style="z-index: 108;  font-family:'Josefin Sans'; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; ">
                                    EXPLORE WAKANA
                                </div>


                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption NotGeneric-Icon   tp-resizeme"
                                    id="slide-1563-layer-5"
                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']"
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-type="text"
                                    data-responsive_offset="on"
                                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":2000,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                                    data-textalign="['left','left','left','left']"
                                    data-paddingtop="[0,0,0,0]"
                                    data-paddingright="[0,0,0,0]"
                                    data-paddingbottom="[0,0,0,0]"
                                    data-paddingleft="[0,0,0,0]"
                                    style="z-index: 21; white-space: nowrap; text-transform: left; cursor: default;">
                                    <i class="pe-7s-ball"></i>
                                </div>


                            </li>




















                        </ul>

                    </div>

                </div>
                <script type="text/javascript">


                    jQuery(document).ready(function () {

                        /* initialize the slider based on the Slider's ID attribute from the wrapper above */
                        jQuery('#rev_slider_1').show().revolution({

                            /* options are 'auto', 'fullwidth' or 'fullscreen' */
                            sliderLayout: 'fullscreen',
                            delay: 1000000,
                            /* basic navigation arrows and bullets */
                            navigation: {

                                arrows: {
                                    style: "uranus",
                                    enable: true,
                                    hide_onmobile: true,
                                    hide_under: 778,
                                    hide_onleave: true,
                                    hide_delay: 200,
                                    hide_delay_mobile: 1200,
                                    tmp: '',
                                    left: {
                                        h_align: "left",
                                        v_align: "center",
                                        h_offset: 20,
                                        v_offset: 0
                                    },
                                    right: {
                                        h_align: "right",
                                        v_align: "center",
                                        h_offset: 20,
                                        v_offset: 0
                                    }
                                },

                                bullets: {
                                    enable: false,
                                    style: "hesperiden",
                                    hide_onleave: false,
                                    h_align: "center",
                                    v_align: "bottom",
                                    h_offset: 0,
                                    v_offset: 20,
                                    space: 5

                                }
                            }
                        });
                    });

                </script>








                <footer id="footer" role="contentinfo">
                    <section class="section swatch-black">
                    <div class="container">

                        <div class="row" style="margin-top: 25px; margin-bottom: 25px;">
                            <div class="col-md-11">
                                <div class="row">

                                    <div class="col-md-2" style=" padding-left: 0px;padding-right: 0px;">
                                        <center><a class="linksub"  href="LegalNotice.aspx" style=" color:white; ">LEGAL NOTICE</a></br> <a class="linksub"  href="GeneralConditions.aspx" style=" color:white; ">GENERAL CONDITIONS</a></br><a class="linksub"  href="ReservationPolicy.aspx" style=" color:white; ">RESERVATION POLICY</a></br><a class="linksub"  href="CancelationPolicy.aspx" style=" color:white; ">CANCELATION POLICY</a>
                     </center>
                                        </br>
                                    </div>

                                    <div class="col-md-2">
                                        <center> <a  class="linksub" href="FAQ.aspx" style=" color:white; ">FAQ</a>
                       </center>
                                        </br>
                                    </div>
                                    <div class="col-md-4" style="color: white;  text-align: left;">
                                        <center>
                                        <a class="linksub" href="Map.aspx" style="color:white;  ">LOCATION</a></br></br>
                                            <a href="https://www.google.com.mx/maps/place/WAKANA+LAKE/@36.31006,-5.7429637,21z/data=!4m5!3m4!1s0x0:0x1925801980d6b5aa!8m2!3d36.3100875!4d-5.7428419"><span class="fa fa-map-marker " style="margin-right: 10px;"></span>Ctra. A 2226 Benalup - Los Barrios </br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;km 6,5, C.P. 11190 Benalup - Casas Viejas, Cádiz</br>Lat,Long: 36.3097393,-5.7433607</a>
                                        </center>
                                        </br>
                                    </div>
                                    <div class="col-md-4" style="color: white;  text-align: left;">
                                        <center>
                                        <a class="linksub" href="Contact.aspx" >CONTACT</a></br></br>
                                          <span class="fa fa-phone  " style="margin-right: 10px;"></span>+34 687 929459 </br>
                                        <span class="fa fa-envelope-o " style="margin-right: 10px;"></span>info@wakanalake.com</br>
                       
                                <%--      <div class="fb-messengermessageus"
                                          messenger_app_id="629483980570403"
                                          page_id="514860192030027"
                                          color="blue"
                                          size="large" style="    margin-top: 8px;">
                                      </div>--%>
                                            </center>
                                        </br>
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-1">
                                <div class="row">

                                    <div class="col-md-10">
                                
                                        <div class="row" style="margin-bottom: 5px;">
                                            <div class="col-sm-2  col-md-12 " style="margin:2px">
                                                <a href="https://www.facebook.com/wakanalake/?fref=ts">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485611568_2_-_Facebook.png" alt="Wakana Lake" style=" line-height:30px;">
                                                </a>
                                                </center>
                                            </div>

                                            <div class=" col-sm-2 col-md-12 " style="margin:2px">
                                                <a href="https://www.youtube.com/channel/UC7H0oHEhLyXlt326BmSPGdA">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485611571_11_-_Youtube.png" alt="Wakana Lake" style=" line-height:30px;">
                           </center>
                                                </a>
                                            </div>
                                            <div class="col-sm-2  col-md-12 " style="margin:2px">
                                                <a href="https://www.instagram.com/wakanalake/?hl=en">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485787829_9_-_Instagram.png" alt="Wakana Lake" style=" line-height:30px;">
                                                </a>
                                                </center>
                                            </div>

                                            <div class=" col-sm-2 col-md-12 " style="margin:2px">
                                                <a href="https://twitter.com/WakanaLake ">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485787832_1_-_Twitter.png" alt="Wakana Lake" style=" line-height:30px;">
                           </center>
                                                </a>
                                            </div>
                                             <div class=" col-sm-2 col-md-12 " style="margin:2px">
                                                <a href="https://vimeo.com/user42686332">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485867857_12_-_Vimeo.png" alt="Wakana Lake" style=" line-height:30px;">
                           </center>
                                                </a>
                                            </div>
                                             <div class=" col-sm-2 col-md-12 " style="margin:2px">
                                                <a href="https://www.linkedin.com/company-beta/16158262/">
                                                    <center> <img width="50px" height="50px" src="../assets/images/1485611568_2_-_LinkedIn.png" alt="Wakana Lake" style=" line-height:30px;">
                           </center>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px"></dx:ASPxCallbackPanel>
                        </div>
                    </div>
                </section>
                    <dx:ASPxPopupControl ID="pcLogin" runat="server" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
                        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcLogin"
                        HeaderText="Modal" AllowDragging="True" PopupAnimationType="None" EnableViewState="False" ShowHeader="False">
                        <ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup('entryGroup'); tbLogin.Focus(); }" />
                        <ContentCollection>
                            <dx:PopupControlContentControl runat="server">
                                Booking Modal PlaceHolder
                   
                            </dx:PopupControlContentControl>
                        </ContentCollection>
                        <ContentStyle>
                            <Paddings PaddingBottom="5px" />
                        </ContentStyle>
                    </dx:ASPxPopupControl>











                    <%--CONTACT POP UP--%>
                    <dx:ASPxPopupControl ID="ContactMod" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
                        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="ContactMod"
                        ShowHeader="false" ShowCloseButton="false" CssClass="noBackground"
                        HeaderStyle-BackgroundImage-ImageUrl="~/assets/images/Westerm.jpg"
                        HeaderStyle-BackgroundImage-Repeat="NoRepeat" AutoUpdatePosition="true" HeaderStyle-CssClass="HeaderStyle" HeaderText="BOOK NOW"
                        AllowDragging="false" AllowResize="false" PopupAnimationType="Fade" EnableViewState="False" Width="600" Height="500"
                        ContentStyle-BackColor="Transparent" CloseAnimationType="Fade">
                        <ContentStyle CssClass="noBackground">
                            <Paddings Padding="0px" />
                        </ContentStyle>

                        <ContentStyle>
                            <Paddings PaddingBottom="5px" />
                        </ContentStyle>

                        <HeaderStyle CssClass="HeaderStyle">
                            <BackgroundImage ImageUrl="~/assets/images/Westerm.jpg" Repeat="NoRepeat"></BackgroundImage>
                        </HeaderStyle>
                        <ContentCollection>

                            <dx:PopupControlContentControl runat="server">


                                <div class="row rowPopup" style="background-image: url('../assets/images/Westerm.jpg'); text-align: center !important; background-repeat: no-repeat">
                                    <center>
                                                                                                    <div class="col-md-12" style="text-align:center;">
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <span class="lobstertitlePopup">CONTACT  US</span>
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <br />
                                                                                                    </div>
                                                                                                        </center>

                                </div>

                                <dx:ASPxCallbackPanel ID="CallbackPanelContact" runat="server" Width="100%" ClientInstanceName="CallbackPanelContact" OnCallback="ASPxCallbackPanel3_Callback" EnableCallbackAnimation="True">
                                    <PanelCollection>
                                        <dx:PanelContent>
                                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" Width="100%">
                                                <PanelCollection>

                                                    <dx:PanelContent runat="server">
                                                        <div class="row rowPopup">

                                                            <div class="col-xs-10 col-xs-offset-1" style="line-height: 15px; padding: 10px;">
                                                                <center>
                                                                                                        <div style=" padding:10px; color: #333333; font-family:'Quicksand'; font-size:60px; line-height:55px;font-weight:100;" >TELL US MORE</div><br /><br />
                                                                                                            <dx:ASPxTextBox ID="yourname" ClientInstanceName="yourname" runat="server" Width="80%" Height="30px" NullText="Your Name" Font-Names="quicksand" Font-Size="20pt" style="font-weight:100; padding-left:10px; padding-right:10px;"></dx:ASPxTextBox>
                                                                                                            <br />
                                                                                                            <dx:ASPxTextBox ID="phonenumber" ClientInstanceName="phonenumber" runat="server" Width="80%" Height="30px" NullText="Phone Number" Font-Names="quicksand" Font-Size="20pt" style="font-weight:100; padding-left:10px; padding-right:10px;"></dx:ASPxTextBox>
                                                                                                            <br />
                                                                                                            <dx:ASPxTextBox ID="email" ClientInstanceName="email" runat="server" Width="80%" Height="30px" NullText="example@email.com" Font-Names="quicksand" Font-Size="20pt" style="font-weight:100; padding-left:10px; padding-right:10px;"></dx:ASPxTextBox>
                                                                                                             <br />
                                                                                                            <dx:ASPxMemo ID="memo"  ClientInstanceName="memo" runat="server" Width="80%" Height="90px" NullText="Your Message" Font-Names="quicksand" Font-Size="15pt" style="font-weight:100; padding-left:10px; "></dx:ASPxMemo>
                                                                                                             <br />
                                                                                                            <dx:ASPxButton ID="ASPxButton1" style="color: #ffffff;    font: 25px Quicksand; font-size:25px;   border: 1px solid #a9acb5;    background: #82b727;    padding: 1px;" runat="server" Text="SEND EMAIL"  AutoPostBack="False" >
                                                                                                                 <ClientSideEvents Click="OnListBoxIndexChanged" />
                                                                                                            </dx:ASPxButton>
                                                                                                            </center>
                                                                </span>                                                                                             
                                                                                                    <br />
                                                            </div>

                                                        </div>

                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                            <dx:ASPxPanel ID="ASPxPanel2" runat="server" Width="100%" Visible="false">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server">
                                                        <div class="row rowPopup">

                                                            <div class="col-xs-8 col-xs-offset-2">
                                                                <center> <span style="color: #333333; font-family:'Quicksand'; font-size:2vw";>THANK YOU<br /><br />
                                                                                                            We got your email, we are going to contact you soon.
                                                                                                        </span>     
                                                                                                        </center>
                                                                <br />
                                                            </div>

                                                        </div>

                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxCallbackPanel>
                                <br />
                                <%-- <div class="row" style="width: 600px !important;">--%>




                                <%--</div>--%>
                            </dx:PopupControlContentControl>
                        </ContentCollection>
                        <Border BorderColor="Transparent" BorderStyle="None" BorderWidth="0" />
                    </dx:ASPxPopupControl>



                    <dx:ASPxPopupControl ID="YoutubeMod" ClientInstanceName="YoutubeMod" runat="server" CloseAction="OuterMouseClick" CloseOnEscape="true" Modal="True"
                        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ShowHeader="false" AutoUpdatePosition="True" CloseAnimationType="Slide" LoadContentViaCallback="None" CssClass="videopop">

                        <ContentCollection>
                            <dx:PopupControlContentControl>
                                <div class="videoWrapper">
                                    <!-- Copy & Pasted from YouTube -->
                                    <iframe width="560" height="349" src="https://www.youtube.com/embed/7tKtCGFPlMM" frameborder="0" allowfullscreen></iframe>
                                </div>

                            </dx:PopupControlContentControl>
                        </ContentCollection>

                    </dx:ASPxPopupControl>



                      <dx:ASPxPopupControl ID="booking" runat="server" AppearAfter="100" Modal="True"
                        ClientInstanceName="booking" PopupAnimationType="Fade"
                        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter"
                        CloseAction="OuterMouseClick" ScrollBars="none" ShowHeader="false" AutoUpdatePosition="true" ShowOnPageLoad="false" ModalBackgroundStyle-BackColor="black">
                        <ClientSideEvents CloseUp="function(s, e) {s.RefreshContentUrl();}" />
                    </dx:ASPxPopupControl>





                </footer>
        </div>
        <script>

                    window.fbAsyncInit = function () {
                        FB.init({
                            appId: "629483980570403",
                            xfbml: true,
                            version: "v2.6"
                        });

                    };

                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) { return; }
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));
        </script>

    <script type="text/javascript">$crisp = []; CRISP_WEBSITE_ID = "85259242-642f-4086-a7c1-e1bd19899fe8"; (function () { d = document; s = d.createElement("script"); s.src = "https://client.crisp.im/l.js"; s.async = 1; d.getElementsByTagName("head")[0].appendChild(s); })();</script>
          </form>
</body>

</html>
