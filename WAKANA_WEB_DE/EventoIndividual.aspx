<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventoIndividual.aspx.cs" Inherits="WAKANA_WEB_DE.EventoIndividual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">
    <link rel="stylesheet" href="../assets/css/EventoIndividual.css" media="screen">

    <title>Evento</title>
    <script>
        function openInNewTab(url) {
            var win = window.open(url, '_blank');
            win.focus();
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container" style="padding: 0px !important; margin: 0px !important; width: 100%;">
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12" style="padding: 0px !important;">


                    <dx:ASPxImage ID="ASPxImage2" Style="width: 100%; height: auto;" CssClass="modalcampimg" ImageUrl='../img/events/hercules.jpg' runat="server" ShowLoadingImage="true"></dx:ASPxImage>



                </div>
            </div>
            </br>
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:20px; font-weight:600;"><asp:Literal ID="literalfecha" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="lobstertitle" ><asp:Literal ID="Literaltitulo" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:30px;  line-height:30px;  padding:0px !important;"><asp:Literal ID="Literallinea1" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:30px; line-height:30px; padding:0px !important;"><asp:Literal ID="Literallinea2" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-10 col-xs-offset-1" style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:25px;  line-height:25px; font-weight:100; padding:0px !important;"><asp:Literal ID="Literaldescripcion" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <asp:Literal ID="rowlinkliteral" runat="server"></asp:Literal>
                  
                    <center>
                                        <dx:ASPxButton ID="moreinfobutton" runat="server" Text="MAS INFORMACIÓN" AutoPostBack="False" ClientInstanceName="close"
                                Style="color: #ffffff; font: 25px Quicksand; font-size: 25px; border: 1px solid #a9acb5; background: #82b727; padding: 1px;">
                                <ClientSideEvents Click="function(s, e) { closePopup(); }"></ClientSideEvents>
                            </dx:ASPxButton>  </center>

                </div>
                   
            </div>
        </div>
    </form>
</body>
</html>
