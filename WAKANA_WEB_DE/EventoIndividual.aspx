<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventoIndividual.aspx.cs" Inherits="WAKANA_WEB_DE.EventoIndividual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">
    <title></title>
    <style>
        .scrollbar {
        }

            .scrollbar::-webkit-scrollbar {
                width: 6px !important;
                background-color: transparent !important;
            }

            .scrollbar::-webkit-scrollbar-thumb {
                background-color: lightgray !important;
                border-radius: 10px !important;
            }

                .scrollbar::-webkit-scrollbar-thumb:hover {
                    background-color: dimgray !important;
                }

                .scrollbar::-webkit-scrollbar-thumb:active {
                    background-color: gray !important;
                }

        .modalcamp {
            width: 50vw;
            height: 80vh;
        }

        @media (max-height: 600px) {

            .modalcamp {
                height: 95vh;
            }
        }

        @media (max-width: 768px) {
            .modalcamp {
                width: 90vw;
                height: 90vh;
            }
        }


        /*LOCAL OVERRIDES*/
        .textocamp {
            white-space: pre-line;
            text-align: center !important;
        }

        .lobstertitle {
            color: black !important;
        }

        .campimage {
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container" style="padding: 0px !important; margin: 0px !important; width: 100%;">
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12" style="padding: 0px !important;">


                    <dx:ASPxImage ID="ASPxImage2" Style="width: 100%; height: auto;" CssClass="modalcampimg" ImageUrl='../img/events/hercules.jpg' runat="server" ShowLoadingImage="true"></dx:ASPxImage>



                </div>
            </div>
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:35px; font-weight:600;"><asp:Literal ID="literalfecha" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="lobstertitle" ><asp:Literal ID="Literaltitulo" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:30px; padding:0px !important;"><asp:Literal ID="Literallinea1" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-12 " style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:30px; padding:0px !important;"><asp:Literal ID="Literallinea2" runat="server"></asp:Literal></div>
                                    </center>

                </div>
                <div class="col-xs-10 col-xs-offset-1" style="padding: 0px !important;">
                    <center>
                                        <div class="textocamp" style="font-size:25px; font-weight:100; padding:0px !important;"><asp:Literal ID="Literaldescripcion" runat="server"></asp:Literal></div>
                                    </center>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
