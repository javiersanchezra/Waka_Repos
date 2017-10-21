<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="Andalusian.aspx.cs" Inherits="WAKANA_WEB_DE.es.Andalusian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/backandalusian.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle">Cortijo Andaluz</a></div>
            </div>
  <div class="row">
                <div class="col-md-3 col-sm-4 col-xs-6 ">


                    <a href="../../Precios Web_ENG.pdf" target="_blank">
                        <div id="facesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; text-align:center; font-family: 'Quicksand';">PRECIOS</div>
                    </a>
                </div>

            </div>            <div class="row">
                <div class="col-md-12">
                    <div class="portfolio-container element-normal-top element-no-bottom debajotitulo" style="margin-top: 20px !important">
                        <div class="portfolio masonry use-masonry " data-padding="0" data-col-xs="1" data-col-sm="2" data-col-md="4" data-col-lg="6" data-layout="masonry">




                            <asp:Literal ID="GalleryPlaceHolder" runat="server"></asp:Literal>
            







                        </div>
                    </div>
                </div>
                <header class="text-center  element-normal-top element-no-bottom not-condensed">
                    <h2 class="big hairline"></h2>
                </header>
                <img src="../assets/images/blank.png" alt="Wakana Lake" style="line-height: 30px;">
            </div>
        </div>
        </div>
         
    </section>

</asp:Content>
