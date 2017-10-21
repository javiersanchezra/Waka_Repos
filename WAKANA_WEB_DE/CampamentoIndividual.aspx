<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CampamentoIndividual.aspx.cs" Inherits="WAKANA_WEB_DE.CampamentoIndividual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">
    <link rel="stylesheet" href="../assets/css/CampamentoIndividual.css" media="screen">
    <title>Campamento</title>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container" style="padding: 0px !important; margin: 0px !important; width: 100%;">
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12" style="padding: 0px !important;">


                    <dx:ASPxImage ID="ASPxImage2" Style="width: 100%; height: auto;" CssClass="modalcampimg" ImageUrl='../img/camps/3dias.jpg' runat="server" ShowLoadingImage="true"></dx:ASPxImage>



                </div>
            </div>
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12 " style="padding: 0px !important;">




                    <div class="cmn-t-underlinecamp" style="color: black; padding-left: 15px;">
                        <asp:Literal ID="literaltitulo" runat="server"></asp:Literal>
                    </div>
                    <div class="textocamp" style="color: black; padding-left: 15px;">
                        <asp:Literal ID="literaltexto" runat="server"></asp:Literal>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
