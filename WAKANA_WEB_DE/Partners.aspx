<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Partners.aspx.cs" Inherits="WAKANA_WEB_DE.Partners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/slide1.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle">Our Partners</a></div>
                
            </div>
        <div class="row">
              <div class="col-sm-6 col-xs-12">

                  <div class="cmn-t-underline" >GISELA PULIDO</div></br>
                  <a href="http://giselapulidoprocenter.com" />
                  <img src="../assets/images/giselalogo.png"  width="80%" height="80%"/></a></br></br>
                  <a href="Activities.aspx" class="wakanasublink">EXPLORE ACTIVITIES</a>
            </div>
              <div class="col-sm-6 col-xs-12">
                  <div class="cmn-t-underline ">SPARTAN RACE</div></br>
                    <a href="http://www.spartanrace.es/es" /><img src="../assets/images/spartanlogo.png"  width="80%" height="80%"/></a></br></br>
                  <a href="Activities.aspx" class="wakanasublink">EXPLORE ACTIVITIES</a></br>
            </div>
            </div></br></br>
            <div class="row">
                  <div class="col-xs-12" >
                <a  href="#" onclick="ShowContactMod();return false;" style="color:white;"  class="cmn-t-underline" >PARTNER WITH US</a></br>
                      </div>
            </div>
           </br>
         </div>
    </section>
</asp:Content>
