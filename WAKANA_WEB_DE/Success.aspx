﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="WAKANA_WEB_DE.Success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       
    </style>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/caballitos.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.3);"></div>
        <div class="container">
            </br> </br> </br>
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle3">“Thank You for your payment:”</a></div>
            </div>

            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton" OnClick="ASPxButton1_Click"></dx:ASPxButton>

            </br>
              </br>
        </div>

    </section>
</asp:Content>
