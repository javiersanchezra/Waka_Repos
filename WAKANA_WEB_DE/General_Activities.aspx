<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="General_Activities.aspx.cs" Inherits="WAKANA_WEB_DE.General_Activities" %>

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


    <!-- Slider Revolution CSS Files -->
    <link rel="stylesheet" type="text/css" href="../revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="../revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="../revolution/css/navigation.css">

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

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

    window.fbAsyncInit = function() {
      FB.init({
          appId: "1703294839696411",
        xfbml: true,
        version: "v2.6"
      });

    };

    (function(d, s, id){
       var js, fjs = d.getElementsByTagName(s)[0];
       if (d.getElementById(id)) { return; }
       js = d.createElement(s); js.id = id;
       js.src = "//connect.facebook.net/en_US/sdk.js";
       fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

  </script>

    <style type="text/css">
        .swatch-black, [class*=swatch-] .swatch-black {
            background: #eef7e6;
            color: #fff;
        }

        .element-normal-bottom {
            margin-bottom: 72px !important;
        }

        .element-normal-top {
            margin-top: 72px !important;
        }

        .mfp-fade.mfp-bg.mfp-ready {
            opacity: .60;
            background-color: black;
        }

        button.mfp-arrow {
            background: rgba(0, 0, 0, 0) !important;
        }

        .mfp-arrow .mfp-a, .mfp-arrow .mfp-b, .mfp-arrow:before {
            display: inline-block;
            font-family: FontAwesome;
            font-size: 60px;
            line-height: 60px;
        }

        .mfp-iframe-holder .mfp-close, .mfp-image-holder .mfp-close {
            background-color: rgba(0,0,0,.0) !important;
            color: #fff;
            margin: -20px;
        }

        .texto {
            margin-bottom: 0rem;
            position: relative;
            color: #fff;
            margin-top: 0rem;
            margin-left:15rem;
            font-size: 15px;
            margin-bottom: 3rem;
            font-family: Quicksand;
            font-weight: 100;
            text-align: left;
        }

        .cmn-t-underline {
            position: relative;
            color: #fff;
            margin-top: 0rem;
            font-size: 45px;
            margin-bottom: 3rem;
            font-family: 'Josefin Sans';
            text-align: left;
        }

            .cmn-t-underline:after {
                content: "";
                position: absolute;
                width: 20%;
                height: 1px;
                bottom: 0;
                left: -2%;
                border-bottom: 1px solid white;
            }
    </style>

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
                 <a href="Default.aspx" class="navbar-brand"  style=" height:60px; font-weight:lighter; font-size: 30px; font-family: 'Josefin Sans';">
                        <img src="../assets/images/logobar.png" alt="Wakana Lake"/>
                    </a>
            </div>
            <nav class="collapse navbar-collapse main-navbar" role="navigation">
                <div class="menu-sidebar pull-right">
                </div>
            
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown menu-item-object-oxy_mega_menu ">
                       <a href="#" onclick="ShowLoginWindow();return false;" style="font-family: 'Quicksand';">BOOK NOW</a>
                    </li>

                    <li class="dropdown">
                        <a href="Place.aspx"  class="dropdown-toggle" data-toggle="dropdown" style="font-family: 'Quicksand';">Place</a>
                        <ul class="dropdown-menu">
                                <li>
                                    <a href="Place.aspx">Wakana Lake
                                                    
                                                </a>
                                </li>
                                <li>
                                    <a href="Map.aspx">Map of Wakana
                                                    
                                                </a>
                                </li>
                                <li>
                                    <a href="Accommodation.aspx">Accommodation
                                                    
                                                </a>
                                </li>
                            
  
                            </ul>
                    </li>

                    <li class="dropdown">
                        <a href="MeettheCommunity.aspx"  style="font-family: 'Quicksand';">Community</a>
                  
                         </li>

                    <li class="dropdown">
                        <a href="Experience.aspx"  style="font-family: 'Quicksand';">The Experience</a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="font-family: 'Quicksand';">Activities</a>
                      <ul class="dropdown-menu">
                                <li>
                                    <a href="General_Activities.aspx">General Activities
                                                    
                                                </a>
                                </li>
                                <li>
                                    <a href="#">Special Activities
                                                    
                                                </a>
                                </li>
                                
                            
  
                            </ul>
                    </li>

                    <li class="dropdown">
                        <a href="Contact.aspx" style="font-family: 'Quicksand';">Contact</a>
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
                <div class="col-md-12">
                    <div class="portfolio-container element-normal-top element-no-bottom">
                        <div id="content">

                            <!-- SERVICES -->
                            <section class="example">
                                <article class="content">


                                    <div id="rev_slider_158_1_wrapper" class="rev_slider_wrapper" data-alias="nice-and-clean-services" data-source="gallery" style="margin: 0px auto; background-color: #2d3032; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
                                        <!-- START REVOLUTION SLIDER 5.3.1.6 fullwidth mode -->
                                        <div id="rev_slider_158_1" class="rev_slider fullwidthabanner" style="display: none;" data-version="5.3.1.6">
                                            <ul>
                                                <!-- SLIDE  -->
                                                <li data-index="rs-420" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                                    <!-- MAIN IMAGE -->
                                                    <img src="../../assets/images/transparent.png" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                                    <!-- LAYERS -->

                                                    <!-- LAYER NR. 1 -->
                                                    <div class="tp-caption   tp-resizeme   rev_group"
                                                        id="slide-420-layer-12"
                                                        data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                        data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                        data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                        data-height="360"
                                                        data-whitespace="nowrap"
                                                        data-type="group"
                                                        data-basealign="slide"
                                                        data-responsive_offset="on"
                                                        data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                        data-margintop="[0,0,0,0]"
                                                        data-marginright="[0,0,0,0]"
                                                        data-marginbottom="[0,0,0,0]"
                                                        data-marginleft="[0,0,0,0]"
                                                        data-textalign="['inherit','inherit','inherit','inherit']"
                                                        data-paddingtop="[0,0,0,0]"
                                                        data-paddingright="[0,0,0,0]"
                                                        data-paddingbottom="[0,0,0,0]"
                                                        data-paddingleft="[0,0,0,0]"
                                                        style="z-index: 5; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                        <!-- LAYER NR. 2 -->
                                                        <div class="tp-caption   tp-resizeme"
                                                            id="slide-420-layer-13"
                                                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                            data-whitespace="nowrap"
                                                            data-type="image"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-autoplay="off"
                                                            style="z-index: 6;">
                                                            <img src="../assets/images/_MG_2920.jpg" />
                                                        </div>

                                                        <!-- LAYER NR. 3 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-14"
                                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-lasttriggerstate="reset"
                                                            style="z-index: 7; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                        </div>

                                                        <!-- LAYER NR. 4 -->
                                                        <div class="tp-caption  "
                                                            id="slide-420-layer-9"
                                                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                            data-width="['300','250','480','320']"
                                                            data-height="none"
                                                            data-whitespace="normal"
                                                            data-type="text"
                                                            data-basealign="slide"
                                                            data-responsive_offset="off"
                                                            data-responsive="off"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['center','center','center','center']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 8; min-width: 300px; max-width: 300px; white-space: normal; font-size: 80px; line-height: 30px; font-weight: 500; color: rgba(255, 255, 255, 1.00); font-family: Lobster; cursor: pointer;">
                                                            Activities<br />

                                                        </div>

                                                        <!-- LAYER NR. 5 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-15"
                                                            data-x="['left','left','left','left']" data-hoffset="['-1','-1','-1','-1']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-13","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-13","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-14","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-14","delay":""}]'
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 9; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                        </div>
                                                    </div>

                                                    <!-- LAYER NR. 6 -->
                                                    <div class="tp-caption   tp-resizeme   rev_group"
                                                        id="slide-420-layer-16"
                                                        data-x="['center','center','left','left']" data-hoffset="['0','0','0','0']"
                                                        data-y="['top','top','top','top']" data-voffset="['0','0','360','360']"
                                                        data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                        data-height="360"
                                                        data-whitespace="nowrap"
                                                        data-type="group"
                                                        data-basealign="slide"
                                                        data-responsive_offset="on"
                                                        data-frames='[{"delay":400,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                        data-margintop="[0,0,0,0]"
                                                        data-marginright="[0,0,0,0]"
                                                        data-marginbottom="[0,0,0,0]"
                                                        data-marginleft="[0,0,0,0]"
                                                        data-textalign="['inherit','inherit','inherit','inherit']"
                                                        data-paddingtop="[0,0,0,0]"
                                                        data-paddingright="[0,0,0,0]"
                                                        data-paddingbottom="[0,0,0,0]"
                                                        data-paddingleft="[0,0,0,0]"
                                                        style="z-index: 10; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                        <!-- LAYER NR. 7 -->
                                                        <div class="tp-caption   tp-resizeme"
                                                            id="slide-420-layer-17"
                                                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                            data-whitespace="nowrap"
                                                            data-type="image"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-autoplay="off"
                                                            style="z-index: 11;">
                                                            <img src="../assets/images/DSCF2869w.jpg" />
                                                        </div>

                                                        <!-- LAYER NR. 8 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-18"
                                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-lasttriggerstate="reset"
                                                            style="z-index: 12; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                        </div>

                                                         <!-- LAYER NR. 14 -->
                                                        <div class="tp-caption"
                                                            id="slide-420-layer-181"
                                                            data-x="['left']" data-hoffset="15"
                                                            data-y="['top']" data-voffset="60"
                                                            data-width="['300']"
                                                            data-height="none"
                                                            data-whitespace="normal"
                                                            data-type="text"
                                                            data-basealign="slide"
                                                            data-responsive_offset="off"
                                                            data-responsive="off"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['left']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 18; min-width: 300px; max-width: 300px; white-space: normal; font-size: 30px; line-height: 30px; font-weight: 500; color: rgba(255, 255, 255, 1.00); font-family: Quicksand; cursor: pointer;">
                                                            CAMPING<br />   
                                                        </div>

                                                         <!--LAYER EXTRA -->
                                                        <div class="tp-caption"
                                                            id="slide-42-layer-255"
                                                            data-x="['left','left','left','left']" data-hoffset="15"
                                                            data-y="['top','top','top','top']" data-voffset="115"
                                                            data-width="['300']"
                                                            data-height="none"
                                                            data-whitespace="normal"
                                                            data-type="text"
                                                            data-basealign="slide"
                                                            data-responsive_offset="off"
                                                            data-responsive="off"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['left']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 18; min-width: 300px; max-width: 300px; font-family:Quicksand; white-space: normal; font-size: 15px; line-height: 15px; font-weight: 100; color: rgba(255, 255, 255, 1.00);cursor: pointer;">
                                                            <p >Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p><br />
                                                            
                                                        </div>



                                                        <!-- LAYER NR. 10 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-20"
                                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-17","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-17","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-18","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-18","delay":""}]'
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 18; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                        </div>
                                                    </div>

                                                    <!-- LAYER NR. 11 -->
                                                    <div class="tp-caption   tp-resizeme   rev_group"
                                                        id="slide-420-layer-22"
                                                        data-x="['right','right','left','left']" data-hoffset="['0','0','0','0']"
                                                        data-y="['top','top','top','top']" data-voffset="['0','0','720','720']"
                                                        data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                        data-height="360"
                                                        data-whitespace="nowrap"
                                                        data-type="group"
                                                        data-basealign="slide"
                                                        data-responsive_offset="on"
                                                        data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                        data-margintop="[0,0,0,0]"
                                                        data-marginright="[0,0,0,0]"
                                                        data-marginbottom="[0,0,0,0]"
                                                        data-marginleft="[0,0,0,0]"
                                                        data-textalign="['inherit','inherit','inherit','inherit']"
                                                        data-paddingtop="[0,0,0,0]"
                                                        data-paddingright="[0,0,0,0]"
                                                        data-paddingbottom="[0,0,0,0]"
                                                        data-paddingleft="[0,0,0,0]"
                                                        style="z-index: 15; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                        
                                                        <!-- LAYER NR. 12 -->
                                                        <div class="tp-caption   tp-resizeme"
                                                            id="slide-420-layer-23"
                                                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                            data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                            data-whitespace="nowrap"
                                                            data-type="video"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-autoplay="off"
                                                            style="z-index: 16;">
                                                            <img src="../assets/images/_MG_2855.jpg" />
                                                        </div>

                                                        <!-- LAYER NR. 13 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-24"
                                                            data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            data-lasttriggerstate="reset"
                                                            style="z-index: 17; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                        </div>

                                                        <!-- LAYER NR. 14 -->
                                                        <div class="tp-caption"
                                                            id="slide-420-layer-25"
                                                            data-x="['left']" data-hoffset="15"
                                                            data-y="['top']" data-voffset="60"
                                                            data-width="['300']"
                                                            data-height="none"
                                                            data-whitespace="normal"
                                                            data-type="text"
                                                            data-basealign="slide"
                                                            data-responsive_offset="off"
                                                            data-responsive="off"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['left']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 18; min-width: 300px; max-width: 300px; white-space: normal; font-size: 30px; line-height: 30px; font-weight: 500; color: rgba(255, 255, 255, 1.00); font-family: Quicksand; cursor: pointer;">
                                                            ARCHERY<br />   
                                                        </div>

                                                        <!--LAYER EXTRA -->
                                                        <div class="tp-caption"
                                                            id="slide-42-layer-25"
                                                            data-x="['left','left','left','left']" data-hoffset="15"
                                                            data-y="['top','top','top','top']" data-voffset="115"
                                                            data-width="['300']"
                                                            data-height="none"
                                                            data-whitespace="normal"
                                                            data-type="text"
                                                            data-basealign="slide"
                                                            data-responsive_offset="off"
                                                            data-responsive="off"
                                                            data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['left']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 18; min-width: 300px; max-width: 300px; font-family:Quicksand; white-space: normal; font-size: 15px; line-height: 15px; font-weight: 100; color: rgba(255, 255, 255, 1.00);cursor: pointer;">
                                                            <p >Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p><br />
                                                            
                                                        </div>

                                                        <!-- LAYER NR. 15 -->
                                                        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                            id="slide-420-layer-26"
                                                            data-x="['right','right','right','right']" data-hoffset="['0','0','0','0']"
                                                            data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                            data-width="100%"
                                                            data-height="360"
                                                            data-whitespace="nowrap"
                                                            data-type="shape"
                                                            data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-23","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-23","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-24","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-24","delay":""}]'
                                                            data-responsive_offset="on"
                                                            data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                            data-margintop="[0,0,0,0]"
                                                            data-marginright="[0,0,0,0]"
                                                            data-marginbottom="[0,0,0,0]"
                                                            data-marginleft="[0,0,0,0]"
                                                            data-textalign="['inherit','inherit','inherit','inherit']"
                                                            data-paddingtop="[0,0,0,0]"
                                                            data-paddingright="[0,0,0,0]"
                                                            data-paddingbottom="[0,0,0,0]"
                                                            data-paddingleft="[0,0,0,0]"
                                                            style="z-index: 19; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                        </div>
                                    </div>
                                    <!-- END REVOLUTION SLIDER -->

                                   <%-- <!-- SERVICES -->
                                    <section class="example">
                                        <article class="content">


                                            <div id="rev_slider_158_2_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="nice-and-clean-services" data-source="gallery" style="margin: 0px auto; background-color: #2d3032; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
                                                <!-- START REVOLUTION SLIDER 5.3.1.6 fullwidth mode -->
                                                <div id="rev_slider_158_2" class="rev_slider fullwidthabanner" style="display: none;" data-version="5.3.1.6">
                                                    <ul>
                                                        <!-- SLIDE  -->
                                                        <li data-index="rs-420" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                                            <!-- MAIN IMAGE -->
                                                            <img src="../../assets/images/transparent.png" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                                            <!-- LAYERS -->

                                                            <!-- LAYER NR. 1 -->
                                                            <div class="tp-caption   tp-resizeme   rev_group"
                                                                id="slide-420-layer-27"
                                                                data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                                data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                                data-height="360"
                                                                data-whitespace="nowrap"
                                                                data-type="group"
                                                                data-basealign="slide"
                                                                data-responsive_offset="on"
                                                                data-frames='[{"delay":300,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                                data-margintop="[0,0,0,0]"
                                                                data-marginright="[0,0,0,0]"
                                                                data-marginbottom="[0,0,0,0]"
                                                                data-marginleft="[0,0,0,0]"
                                                                data-textalign="['inherit','inherit','inherit','inherit']"
                                                                data-paddingtop="[0,0,0,0]"
                                                                data-paddingright="[0,0,0,0]"
                                                                data-paddingbottom="[0,0,0,0]"
                                                                data-paddingleft="[0,0,0,0]"
                                                                style="z-index: 5; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                                <!-- LAYER NR. 2 -->
                                                                <div class="tp-caption   tp-resizeme"
                                                                    id="slide-420-layer-28"
                                                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                                    data-whitespace="nowrap"
                                                                    data-type="image"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-autoplay="off"
                                                                    style="z-index: 6;">
                                                                    <img src="../assets/images/Captura de pantalla 2016-07-04 a las 21.51.12.png" />
                                                                </div>

                                                                <!-- LAYER NR. 3 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-29"
                                                                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-lasttriggerstate="reset"
                                                                    style="z-index: 7; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                                </div>



                                                                <!-- LAYER NR. 5 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-31"
                                                                    data-x="['left','left','left','left']" data-hoffset="['-1','-1','-1','-1']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-13","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-13","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-14","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-14","delay":""}]'
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    style="z-index: 9; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                                </div>
                                                            </div>

                                                            <!-- LAYER NR. 6 -->
                                                            <div class="tp-caption   tp-resizeme   rev_group"
                                                                id="slide-420-layer-32"
                                                                data-x="['center','center','left','left']" data-hoffset="['0','0','0','0']"
                                                                data-y="['top','top','top','top']" data-voffset="['0','0','360','360']"
                                                                data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                                data-height="360"
                                                                data-whitespace="nowrap"
                                                                data-type="group"
                                                                data-basealign="slide"
                                                                data-responsive_offset="on"
                                                                data-frames='[{"delay":400,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                                data-margintop="[0,0,0,0]"
                                                                data-marginright="[0,0,0,0]"
                                                                data-marginbottom="[0,0,0,0]"
                                                                data-marginleft="[0,0,0,0]"
                                                                data-textalign="['inherit','inherit','inherit','inherit']"
                                                                data-paddingtop="[0,0,0,0]"
                                                                data-paddingright="[0,0,0,0]"
                                                                data-paddingbottom="[0,0,0,0]"
                                                                data-paddingleft="[0,0,0,0]"
                                                                style="z-index: 10; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                                <!-- LAYER NR. 7 -->
                                                                <div class="tp-caption   tp-resizeme"
                                                                    id="slide-420-layer-33"
                                                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                                    data-whitespace="nowrap"
                                                                    data-type="image"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-autoplay="off"
                                                                    style="z-index: 11;">
                                                                    <img src="../assets/images/Paddle surf.jpg" />
                                                                </div>

                                                                <!-- LAYER NR. 8 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-34"
                                                                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-lasttriggerstate="reset"
                                                                    style="z-index: 12; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                                </div>



                                                                <!-- LAYER NR. 10 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-36"
                                                                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-17","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-17","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-18","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-18","delay":""}]'
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    style="z-index: 14; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                                </div>
                                                            </div>

                                                            <!-- LAYER NR. 11 -->
                                                            <div class="tp-caption   tp-resizeme   rev_group"
                                                                id="slide-420-layer-37"
                                                                data-x="['right','right','left','left']" data-hoffset="['0','0','0','0']"
                                                                data-y="['top','top','top','top']" data-voffset="['0','0','720','720']"
                                                                data-width="['#1/3#','#1/3#','#1/1#','#1/1#']"
                                                                data-height="360"
                                                                data-whitespace="nowrap"
                                                                data-type="group"
                                                                data-basealign="slide"
                                                                data-responsive_offset="on"
                                                                data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;fb:10px;","mask":"x:0px;y:[-100%];s:inherit;e:inherit;","to":"o:1;fb:0;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]'
                                                                data-margintop="[0,0,0,0]"
                                                                data-marginright="[0,0,0,0]"
                                                                data-marginbottom="[0,0,0,0]"
                                                                data-marginleft="[0,0,0,0]"
                                                                data-textalign="['inherit','inherit','inherit','inherit']"
                                                                data-paddingtop="[0,0,0,0]"
                                                                data-paddingright="[0,0,0,0]"
                                                                data-paddingbottom="[0,0,0,0]"
                                                                data-paddingleft="[0,0,0,0]"
                                                                style="z-index: 15; min-width: #1/3#px; max-width: #1/3#px; max-width: 360px; max-width: 360px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00); font-family: Open Sans;">
                                                                <!-- LAYER NR. 12 -->
                                                                <div class="tp-caption   tp-resizeme"
                                                                    id="slide-420-layer-38"
                                                                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                                                    data-whitespace="nowrap"
                                                                    data-type="image"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-autoplay="off"
                                                                    style="z-index: 16;">
                                                                    <img src="../assets/images/Captura de pantalla 2016-07-04 a las 21.44.25.png" />
                                                                </div>

                                                                <!-- LAYER NR. 13 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-39"
                                                                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":600,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"bytrigger","speed":600,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    data-lasttriggerstate="reset"
                                                                    style="z-index: 17; font-family: Open Sans; background-color: rgba(45, 48, 50, 0.65); cursor: pointer;">
                                                                </div>



                                                                <!-- LAYER NR. 15 -->
                                                                <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
                                                                    id="slide-420-layer-41"
                                                                    data-x="['right','right','right','right']" data-hoffset="['0','0','0','0']"
                                                                    data-y="['top','top','top','top']" data-voffset="['0','0','0','0']"
                                                                    data-width="100%"
                                                                    data-height="360"
                                                                    data-whitespace="nowrap"
                                                                    data-type="shape"
                                                                    data-actions='[{"event":"mouseenter","action":"playvideo","layer":"slide-420-layer-23","delay":""},{"event":"mouseleave","action":"stopvideo","layer":"slide-420-layer-23","delay":""},{"event":"mouseenter","action":"stoplayer","layer":"slide-420-layer-24","delay":""},{"event":"mouseleave","action":"startlayer","layer":"slide-420-layer-24","delay":""}]'
                                                                    data-responsive_offset="on"
                                                                    data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bs:solid;bw:0 0 0 0;"}]'
                                                                    data-margintop="[0,0,0,0]"
                                                                    data-marginright="[0,0,0,0]"
                                                                    data-marginbottom="[0,0,0,0]"
                                                                    data-marginleft="[0,0,0,0]"
                                                                    data-textalign="['inherit','inherit','inherit','inherit']"
                                                                    data-paddingtop="[0,0,0,0]"
                                                                    data-paddingright="[0,0,0,0]"
                                                                    data-paddingbottom="[0,0,0,0]"
                                                                    data-paddingleft="[0,0,0,0]"
                                                                    style="z-index: 19; font-family: Open Sans; background-color: rgba(0, 0, 0, 0); border-color: rgba(0, 0, 0, 0); cursor: pointer;">
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                                </div>
                                            </div>
                                            <!-- END REVOLUTION SLIDER -->--%>









                                            <script type="text/javascript">
                                                var tpj = jQuery;

                                          
                                                var revapi154;
                                                tpj(document).ready(function () {
                                                    if (tpj("#menu").revolution == undefined) {
                                                        revslider_showDoubleJqueryError("#menu");
                                                    } else {

                                                        revapi158 = tpj("#rev_slider_158_1").show().revolution({
                                                            sliderType: "standard",
                                                            jsFileLocation: "//server.local/revslider/wp-content/plugins/revslider/public/assets/js/",
                                                            //sliderLayout: "fullwidth",
                                                            dottedOverlay: "none",
                                                            delay: 9000,
                                                            navigation: {
                                                                onHoverStop: "off",
                                                            },
                                                            viewPort: {
                                                                enable: true,
                                                                outof: "wait",
                                                                visible_area: "80%",
                                                                presize: false
                                                            },
                                                            responsiveLevels: [1240, 1024, 778, 480],
                                                            visibilityLevels: [1240, 1024, 778, 480],
                                                            gridwidth: [1240, 1024, 778, 480],
                                                            gridheight: [360, 360, 1080, 1080],
                                                            lazyType: "none",
                                                            shadow: 0,
                                                            spinner: "off",
                                                            stopLoop: "on",
                                                            stopAfterLoops: 0,
                                                            stopAtSlide: 1,
                                                            shuffle: "off",
                                                            autoHeight: "off",
                                                            disableProgressBar: "on",
                                                            hideThumbsOnMobile: "off",
                                                            hideSliderAtLimit: 0,
                                                            hideCaptionAtLimit: 0,
                                                            hideAllCaptionAtLilmit: 0,
                                                            debugMode: false,
                                                            fallbacks: {
                                                                simplifyAll: "off",
                                                                nextSlideOnWindowFocus: "off",
                                                                disableFocusListener: false,
                                                            }
                                                        });




                                                        //revapi154.bind("revolution.slide.onloaded", function (e) {
                                                        //    var menubg = jQuery('#tp-menubg');
                                                        //    punchgs.TweenLite.set(menubg, { autoAlpha: 0 });
                                                        //    punchgs.TweenLite.set(menubg.closest('.tp-parallax-wrap'), { autoAlpha: 0 });
                                                        //    function fadeInOutBG() {
                                                        //        if (document.documentElement.scrollTop > 50 || document.body.scrollTop > 50) {
                                                        //            punchgs.TweenLite.to(menubg, 0.3, { autoAlpha: 1 });
                                                        //            punchgs.TweenLite.to(menubg.closest('.tp-parallax-wrap'), 0.3, { autoAlpha: 1 });
                                                        //        } else {

                                                        //            punchgs.TweenLite.to(menubg, 0.3, { autoAlpha: 0 });
                                                        //            //punchgs.TweenLite.to(menubg.closest('.tp-parallax-wrap'),0.3,{autoAlpha:0});
                                                        //        }
                                                        //    }
                                                        //    jQuery(document).on('scroll', function () {
                                                        //        fadeInOutBG();
                                                        //    });
                                                        //    fadeInOutBG();
                                                        //});

                                                        function sliderAnchors() {

                                                            var anchorarray = new Array;
                                                            lastknowheaderheight = 0; //jQuery('').height();

                                                            // ANCHOR AND ITS HIGHLITS
                                                            jQuery('.tp-rs-menulink').each(function (i) {
                                                                var a = jQuery(this),
                                                                    obj = new Object();

                                                                obj.button = a;
                                                                obj.href = a.attr("href");
                                                                if (obj.href != undefined) {
                                                                    obj.fakehref = obj.href.replace("#", "#!");

                                                                    if (obj.href != undefined && obj.href.split("http").length < 2 && obj.href != "#wp-toolbar") {
                                                                        obj.target = jQuery(obj.href);
                                                                        obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                                    }

                                                                    if (obj.target != undefined && obj.target.length > 0)
                                                                        anchorarray.push(obj);
                                                                }
                                                            });

                                                            jQuery('.tp-rs-menulink').each(function (i) {
                                                                var a = jQuery(this);
                                                                a.click(function () {

                                                                    var obj = new Object(),
                                                                        ypos = 0;

                                                                    if (a.attr('href') != undefined) {
                                                                        obj.href = a.attr("href");
                                                                        obj.target = jQuery(obj.href);
                                                                        if (obj.href != undefined && obj.target != undefined && jQuery(obj.target).length > 0) {


                                                                            //if (jQuery(this).hasClass("tp-rs-menu-selected")) return false;

                                                                            obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                                            obj.top = jQuery(obj.target).offset().top;
                                                                            ypos = obj.top + obj.offset;
                                                                            var counter = { val: jQuery(document).scrollTop() };


                                                                            if (jQuery('body').data('currenscrollanim') != undefined)
                                                                                jQuery('body').data('currenscrollanim').pause();


                                                                            var sanim = punchgs.TweenLite.to(counter, 1, {
                                                                                val: ypos, ease: punchgs.Power4.easeOut,
                                                                                onUpdate: function () {
                                                                                    forcescrolled = true;
                                                                                    punchgs.TweenLite.set(jQuery('body, html'), { scrollTop: counter.val - 90 });
                                                                                },
                                                                                onComplete: function () {
                                                                                    forcescrolled = false;
                                                                                    jQuery(window).trigger("scroll.tprsmenu");
                                                                                }
                                                                            });

                                                                            forcescrolled = true;
                                                                            jQuery.each(anchorarray, function (index, o) {
                                                                                if (obj.href !== o.href) {
                                                                                    o.button.removeClass("tp-rs-menu-selected");
                                                                                } else {
                                                                                    o.button.addClass("tp-rs-menu-selected");
                                                                                    window.history.pushState('', '', obj.href)
                                                                                }
                                                                            });


                                                                            jQuery('body').data('currenscrollanim', sanim);
                                                                            return false;
                                                                        } else {
                                                                            return true;
                                                                        }
                                                                    } else {
                                                                        return true;
                                                                    }
                                                                })
                                                            });

                                                        }

                                                        sliderAnchors();
                                                    }
                                                });	/*ready*/
                                                //var revapi159;
                                                //tpj(document).ready(function () {
                                                //    if (tpj("#menu").revolution == undefined) {
                                                //        revslider_showDoubleJqueryError("#menu");
                                                //    } else {

                                                //        revapi159 = tpj("#rev_slider_158_2").show().revolution({
                                                //            sliderType: "standard",
                                                //            jsFileLocation: "//server.local/revslider/wp-content/plugins/revslider/public/assets/js/",
                                                //            //sliderLayout: "fullwidth",
                                                //            dottedOverlay: "none",
                                                //            delay: 9000,
                                                //            navigation: {
                                                //                onHoverStop: "off",
                                                //            },
                                                //            viewPort: {
                                                //                enable: true,
                                                //                outof: "wait",
                                                //                visible_area: "80%",
                                                //                presize: false
                                                //            },
                                                //            responsiveLevels: [1240, 1024, 778, 480],
                                                //            visibilityLevels: [1240, 1024, 778, 480],
                                                //            gridwidth: [1240, 1024, 778, 480],
                                                //            gridheight: [360, 360, 1080, 1080],
                                                //            lazyType: "none",
                                                //            shadow: 0,
                                                //            spinner: "off",
                                                //            stopLoop: "on",
                                                //            stopAfterLoops: 0,
                                                //            stopAtSlide: 1,
                                                //            shuffle: "off",
                                                //            autoHeight: "off",
                                                //            disableProgressBar: "on",
                                                //            hideThumbsOnMobile: "off",
                                                //            hideSliderAtLimit: 0,
                                                //            hideCaptionAtLimit: 0,
                                                //            hideAllCaptionAtLilmit: 0,
                                                //            debugMode: false,
                                                //            fallbacks: {
                                                //                simplifyAll: "off",
                                                //                nextSlideOnWindowFocus: "off",
                                                //                disableFocusListener: false,
                                                //            }
                                                //        });




                                                //        revapi159.bind("revolution.slide.onloaded", function (e) {
                                                //            var menubg = jQuery('#tp-menubg');
                                                //            punchgs.TweenLite.set(menubg, { autoAlpha: 0 });
                                                //            punchgs.TweenLite.set(menubg.closest('.tp-parallax-wrap'), { autoAlpha: 0 });
                                                //            function fadeInOutBG() {
                                                //                if (document.documentElement.scrollTop > 50 || document.body.scrollTop > 50) {
                                                //                    punchgs.TweenLite.to(menubg, 0.3, { autoAlpha: 1 });
                                                //                    punchgs.TweenLite.to(menubg.closest('.tp-parallax-wrap'), 0.3, { autoAlpha: 1 });
                                                //                } else {

                                                //                    punchgs.TweenLite.to(menubg, 0.3, { autoAlpha: 0 });
                                                //                    //punchgs.TweenLite.to(menubg.closest('.tp-parallax-wrap'),0.3,{autoAlpha:0});
                                                //                }
                                                //            }
                                                //            jQuery(document).on('scroll', function () {
                                                //                fadeInOutBG();
                                                //            });
                                                //            fadeInOutBG();
                                                //        });

                                                //        function sliderAnchors() {

                                                //            var anchorarray = new Array;
                                                //            lastknowheaderheight = 0; //jQuery('').height();

                                                //            // ANCHOR AND ITS HIGHLITS
                                                //            jQuery('.tp-rs-menulink').each(function (i) {
                                                //                var a = jQuery(this),
                                                //                    obj = new Object();

                                                //                obj.button = a;
                                                //                obj.href = a.attr("href");
                                                //                if (obj.href != undefined) {
                                                //                    obj.fakehref = obj.href.replace("#", "#!");

                                                //                    if (obj.href != undefined && obj.href.split("http").length < 2 && obj.href != "#wp-toolbar") {
                                                //                        obj.target = jQuery(obj.href);
                                                //                        obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                //                    }

                                                //                    if (obj.target != undefined && obj.target.length > 0)
                                                //                        anchorarray.push(obj);
                                                //                }
                                                //            });

                                                //            jQuery('.tp-rs-menulink').each(function (i) {
                                                //                var a = jQuery(this);
                                                //                a.click(function () {

                                                //                    var obj = new Object(),
                                                //                        ypos = 0;

                                                //                    if (a.attr('href') != undefined) {
                                                //                        obj.href = a.attr("href");
                                                //                        obj.target = jQuery(obj.href);
                                                //                        if (obj.href != undefined && obj.target != undefined && jQuery(obj.target).length > 0) {


                                                //                            //if (jQuery(this).hasClass("tp-rs-menu-selected")) return false;

                                                //                            obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                //                            obj.top = jQuery(obj.target).offset().top;
                                                //                            ypos = obj.top + obj.offset;
                                                //                            var counter = { val: jQuery(document).scrollTop() };


                                                //                            if (jQuery('body').data('currenscrollanim') != undefined)
                                                //                                jQuery('body').data('currenscrollanim').pause();


                                                //                            var sanim = punchgs.TweenLite.to(counter, 1, {
                                                //                                val: ypos, ease: punchgs.Power4.easeOut,
                                                //                                onUpdate: function () {
                                                //                                    forcescrolled = true;
                                                //                                    punchgs.TweenLite.set(jQuery('body, html'), { scrollTop: counter.val - 90 });
                                                //                                },
                                                //                                onComplete: function () {
                                                //                                    forcescrolled = false;
                                                //                                    jQuery(window).trigger("scroll.tprsmenu");
                                                //                                }
                                                //                            });

                                                //                            forcescrolled = true;
                                                //                            jQuery.each(anchorarray, function (index, o) {
                                                //                                if (obj.href !== o.href) {
                                                //                                    o.button.removeClass("tp-rs-menu-selected");
                                                //                                } else {
                                                //                                    o.button.addClass("tp-rs-menu-selected");
                                                //                                    window.history.pushState('', '', obj.href)
                                                //                                }
                                                //                            });


                                                //                            jQuery('body').data('currenscrollanim', sanim);
                                                //                            return false;
                                                //                        } else {
                                                //                            return true;
                                                //                        }
                                                //                    } else {
                                                //                        return true;
                                                //                    }
                                                //                })
                                                //            });

                                                //        }

                                                //        sliderAnchors();
                                                //    }
                                                //});	/*ready*/
                                            </script>
                                              <%-- <script type="text/javascript">
                                                var tpj = jQuery;

                                          
                                                var revapi154;
                                                tpj(document).ready(function () {
                                                    if (tpj("#menu").revolution == undefined) {
                                                        revslider_showDoubleJqueryError("#menu");
                                                    } else {

                                                        revapi158 = tpj("#rev_slider_158_2").show().revolution({
                                                            sliderType: "standard",
                                                            jsFileLocation: "//server.local/revslider/wp-content/plugins/revslider/public/assets/js/",
                                                            //sliderLayout: "fullwidth",
                                                            dottedOverlay: "none",
                                                            delay: 9000,
                                                            navigation: {
                                                                onHoverStop: "off",
                                                            },
                                                            viewPort: {
                                                                enable: true,
                                                                outof: "wait",
                                                                visible_area: "80%",
                                                                presize: false
                                                            },
                                                            responsiveLevels: [1240, 1024, 778, 480],
                                                            visibilityLevels: [1240, 1024, 778, 480],
                                                            gridwidth: [1240, 1024, 778, 480],
                                                            gridheight: [360, 360, 1080, 1080],
                                                            lazyType: "none",
                                                            shadow: 0,
                                                            spinner: "off",
                                                            stopLoop: "on",
                                                            stopAfterLoops: 0,
                                                            stopAtSlide: 1,
                                                            shuffle: "off",
                                                            autoHeight: "off",
                                                            disableProgressBar: "on",
                                                            hideThumbsOnMobile: "off",
                                                            hideSliderAtLimit: 0,
                                                            hideCaptionAtLimit: 0,
                                                            hideAllCaptionAtLilmit: 0,
                                                            debugMode: false,
                                                            fallbacks: {
                                                                simplifyAll: "off",
                                                                nextSlideOnWindowFocus: "off",
                                                                disableFocusListener: false,
                                                            }
                                                        });





                                                        function sliderAnchors() {

                                                            var anchorarray = new Array;
                                                            lastknowheaderheight = 0; //jQuery('').height();

                                                            // ANCHOR AND ITS HIGHLITS
                                                            jQuery('.tp-rs-menulink').each(function (i) {
                                                                var a = jQuery(this),
                                                                    obj = new Object();

                                                                obj.button = a;
                                                                obj.href = a.attr("href");
                                                                if (obj.href != undefined) {
                                                                    obj.fakehref = obj.href.replace("#", "#!");

                                                                    if (obj.href != undefined && obj.href.split("http").length < 2 && obj.href != "#wp-toolbar") {
                                                                        obj.target = jQuery(obj.href);
                                                                        obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                                    }

                                                                    if (obj.target != undefined && obj.target.length > 0)
                                                                        anchorarray.push(obj);
                                                                }
                                                            });

                                                            jQuery('.tp-rs-menulink').each(function (i) {
                                                                var a = jQuery(this);
                                                                a.click(function () {

                                                                    var obj = new Object(),
                                                                        ypos = 0;

                                                                    if (a.attr('href') != undefined) {
                                                                        obj.href = a.attr("href");
                                                                        obj.target = jQuery(obj.href);
                                                                        if (obj.href != undefined && obj.target != undefined && jQuery(obj.target).length > 0) {


                                                                            //if (jQuery(this).hasClass("tp-rs-menu-selected")) return false;

                                                                            obj.offset = obj.target.data('offset') == undefined ? 0 : obj.target.data('offset');
                                                                            obj.top = jQuery(obj.target).offset().top;
                                                                            ypos = obj.top + obj.offset;
                                                                            var counter = { val: jQuery(document).scrollTop() };


                                                                            if (jQuery('body').data('currenscrollanim') != undefined)
                                                                                jQuery('body').data('currenscrollanim').pause();


                                                                            var sanim = punchgs.TweenLite.to(counter, 1, {
                                                                                val: ypos, ease: punchgs.Power4.easeOut,
                                                                                onUpdate: function () {
                                                                                    forcescrolled = true;
                                                                                    punchgs.TweenLite.set(jQuery('body, html'), { scrollTop: counter.val - 90 });
                                                                                },
                                                                                onComplete: function () {
                                                                                    forcescrolled = false;
                                                                                    jQuery(window).trigger("scroll.tprsmenu");
                                                                                }
                                                                            });

                                                                            forcescrolled = true;
                                                                            jQuery.each(anchorarray, function (index, o) {
                                                                                if (obj.href !== o.href) {
                                                                                    o.button.removeClass("tp-rs-menu-selected");
                                                                                } else {
                                                                                    o.button.addClass("tp-rs-menu-selected");
                                                                                    window.history.pushState('', '', obj.href)
                                                                                }
                                                                            });


                                                                            jQuery('body').data('currenscrollanim', sanim);
                                                                            return false;
                                                                        } else {
                                                                            return true;
                                                                        }
                                                                    } else {
                                                                        return true;
                                                                    }
                                                                })
                                                            });

                                                        }

                                                        sliderAnchors();
                                                    }
                                                });	
                                            </script>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


       <footer id="footer" role="contentinfo">
                <section class="section swatch-black">
                    <div class="container">

                        <div class="row" style="margin-top:25px; margin-bottom:25px;">
                            <div class="col-md-8">
            <div class="row">
                <div class="col-md-2">
                  <center><a href="#" class="dropdown-toggle" data-toggle="dropdown" style=" color: black; font-family: 'Quicksand';">SITE MAP</a>
                     </center>      
                </div>
                <div class="col-md-2">
                  <center><a href="LegalNotice.aspx" style=" color: black; font-family: 'Quicksand';">LEGAL NOTICE</a>
                     </center>      
                </div>
                <div class="col-md-2">
                 <center> <a href="#" class="dropdown-toggle" data-toggle="dropdown" style=" color: black; font-family: 'Quicksand';">PRESS</a>
                       </center>    
                </div>
                 <div class="col-md-2">
                 <center> <a href="FAQ.aspx" style=" color: black; font-family: 'Quicksand';">FAQ</a>
                       </center>    
                </div>
                <div class="col-md-2">
                 <center> <a href="Contact.aspx" style=" color: black; font-family: 'Quicksand';">CONTACT</a>
                       </center>    
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                          <center><a href="#" class="dropdown-toggle" data-toggle="dropdown" style=" font-size:30px; color: black; font-family: 'Quicksand';">ES</a>
                           </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12"><a href="https://www.facebook.com/wakanalake/?fref=ts">
                         <center> <img src="../assets/images/facebook.png" alt="Wakana Lake" style=" line-height:30px;"></a>
                           </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="https://www.youtube.com/channel/UC7H0oHEhLyXlt326BmSPGdA">
                          <center> <img src="../assets/images/youtube.png" alt="Wakana Lake" style=" line-height:30px;">
                           </center></a>
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
 
            </footer>
          </form>
</body>

</html>
