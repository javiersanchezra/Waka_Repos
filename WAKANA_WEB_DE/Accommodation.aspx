<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="WAKANA_WEB_DE.Accommodation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../assets/images/DSCF2765w.jpg'); background-repeat: repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
               <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle">Wakana Homes </a></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-container element-normal-top element-no-bottom  debajotitulo" style="margin-top:0px !important">
                        <div class="ImgEscalera"> 
                            <a href="Yurtas.aspx" style="z-index:40">
                                <div   style="color: white; text-shadow: 2px 2px 4px #000000 !important; background: url(../../img/YURTAS.jpg) !important;" class="DOSX">
                                    Yurts <span class="flechitaDer fa fa-caret-right"></span>

                                </div>

                            </a>

                            <a href="Andalusian.aspx"> <div  style="color:white; text-shadow: 2px 2px 4px #000000 !important; "class="DOSX"> Andalusian Cortijo <span class="flechitaDer fa fa-caret-right"></span></div> </a>
                            <a href="Tepees.aspx" ><div  style="color:white; text-shadow: 2px 2px 4px #000000 !important; background: url(../../img/TEEPES.jpg) !important;"class="DOSX" >Tepees <span class="flechitaDer fa fa-caret-right"></span></div></a>
                        </div>
                        
                        <center>
                              <a href="#" onclick="ShowContactMod();return false;" class="wakanasublink" style="font-family: Quicksand; text-align: center;">
                            <button class="Redondito">BOOK NOW</button></a>
                        </center>
                        </br>
                        </br>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
