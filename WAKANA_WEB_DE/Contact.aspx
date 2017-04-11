<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WAKANA_WEB_DE.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @media only screen and (min-width: 1501px) {
            .ImagenContact {
                margin-top: 0rem;
                height: auto;
                width: 120%;
                margin-left: 4rem;
            }

            div.margenazo {
                margin-left: -3rem;
            }
        }

        @media only screen and (max-width: 500px) {
            .ImagenContact {
                height: auto;
            }
        }

        a.ReserveNow {
            color: #fff;
            position: relative;
            font-size: 20px;
            font-family: 'Josefin Sans';
        }

            a.ReserveNow:focus {
                text-decoration: none;
            }

            a.ReserveNow:hover {
                text-decoration: none;
                color: #ccc;
            }

            a.ReserveNow:after {
                content: "";
                position: absolute;
                width: 50%;
                height: 1px;
                bottom: 0;
                left: 25%;
                margin-bottom: -5px;
                border-bottom: 2px solid white;
            }

        @media only screen and (max-width: 1500px) {
            div.margenazo {
                margin-left: -60px;
            }

            .ImagenContact {
                width: 120%;
            }
        }

        @media only screen and (min-width: 1px) and (max-width: 500px) {
            .ImagenContact {
                margin-left: 0rem;
                height: auto;
            }
        }

        .texto {
            margin-bottom: 0rem;
            position: relative;
            color: #fff;
            margin-top: 0rem;
            font-size: 20px;
            margin-bottom: 3rem;
            font-family: Quicksand;
            font-weight: 100;
            text-align: left;
        }

        .textob {
            margin-bottom: 0rem;
            position: relative;
            color: #fff !important;
            margin-top: 10px;
            font-size: 20px;
            margin-left: 10px;
            margin-bottom: 3rem;
            font-family: Quicksand;
            font-weight: 100;
            text-align: center;
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
    <script type="text/javascript">
    
    </script>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/back1.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="portfolio-container element-normal-top element-no-bottom">
                </br>
                        <div class="row" style="margin-top: 20px;">

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-8">

                                        <img src="../assets/images/contact.jpg" alt="" class="ImagenContact" />

                                    </div>

                                    <div class="col-md-4 hidden-xs hidden-sm margenazo " style="margin-top: 40px; background-color: #262626;">
                                        <p class="texto " style="margin-top: 40px; margin-left: 10px; font-size: 45px">CONTACT US</p>
                                        <p class="lobstertitle" style="margin-top: -25px;">Let's talk</p>

                                    </div>
                                    <div class="col-md-4  visible-sm visible-xs " style="background-color: #262626;">
                                        <p class="texto " style="margin-top: 40px; text-align: center; font-size: 45px">CONTACT US</p>
                                        <p class="lobstertitle" style="margin-top: -25px;">Let's talk</p>

                                    </div>

                                </div>
                                </br>
          
                            </div>

                        </div>
                <div class="row">
                    <div class="col-md-12" style="background-color: rgba(0, 0, 0, 0.50)">
                        <div class="row">
                            <div class="col-md-4">

                            
                                    <p class="textob">General Inquiries</p>
                              
                                <a href="#" onclick="ShowContactMod();return false;" class="wakanasublink" style="font-family: Quicksand; text-align: center;">Email Us!</a>
                                </br> </br><center>
<%--  <div class="fb-messengermessageus" 
  messenger_app_id="629483980570403" 
  page_id="514860192030027"
  color="blue"
  size="large" >
</div> --%>  </center>
                                </br>
                                           <a class="textob">Phone: +34 687 92 94 59</a>

                            </div>
                            <div class="col-md-4">
                                <p class="textob">Careers</p>
                                <a class="textob">careers@wakanalake.com</a>

                            </div>
                            <div class="col-md-4">
                                <p class="textob">Our Location</p>
                                <a class="textob">Ctra. A-2226 Benalup - Los Barrios, km. 6,5</a> </br>
                                             <a class="textob">11190 Benalup - Casas Viejas (Cádiz) </a></br>
                                             <a class="textob">España</a>
                                </br> </br>
                                             <a href="https://www.google.com.mx/maps/place/WAKANA+LAKE/@36.3100875,-5.7428419,15z/data=!4m2!3m1!1s0x0:0x1925801980d6b5aa?sa=X&ved=0ahUKEwjNoJqt-MXRAhUBw4MKHcgtBLwQ_BIIeDAP" class="wakanasublink" style="font-family: Quicksand; text-align: center;">Get Directions</a>

                            </div>
                        </div>
                        <div class="row">
                            </br>
                                    <div class="col-md-12">
                                        </br></br>
                                        <a href="#" onclick="ShowContactMod();return false;" class="wakanasublink" style="font-family: Quicksand; text-align: center;">Interested in partnering with us? - GET IN TOUCH</a>
                                    </div>

                        </div>
                        </br>
                    </div>


                </div>

            </div>
        </div>


    </section>


</asp:Content>
