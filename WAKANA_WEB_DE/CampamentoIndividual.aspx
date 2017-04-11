<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CampamentoIndividual.aspx.cs" Inherits="WAKANA_WEB_DE.CampamentoIndividual" %>

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

        .textocamp {
            white-space: pre-line;
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
