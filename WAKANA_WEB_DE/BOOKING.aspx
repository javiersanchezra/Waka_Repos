<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BOOKING.aspx.cs" Inherits="WAKANA_WEB_DE.BOOKING" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">


    <!--FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,300italic,400italic,600italic' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    <!--MELCOCHA DATEPICKER-->
    <%--<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


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

        .row {
            margin-left: 0px !important;
            margin-right: 0px !important;
        }

        .overlay {
            z-index: 99;
            width: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }

        .poverlay {
            text-align: center;
            color: white;
            font-size: 165px;
            font-weight: lighter;
            line-height: 2;
            font-family: 'Josefin Sans';
            /*font-family: Lobster,cursive;*/
            text-shadow: rgba(0, 0, 0, 0.6) 2px 2px 2px;
        }

        @media (max-width: 900px) {
            .poverlay {
                text-align: center;
                color: white;
                font-size: 65px;
                font-weight: lighter;
                line-height: 2;
                font-family: 'Josefin Sans';
                /*font-family: Lobster,cursive;*/
                text-shadow: rgba(0, 0, 0, 0.6) 2px 2px 2px;
            }
        }

        .imgquoute {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .dxbButtonChecked_DevEx {
            color: #3c3c3c;
            background: #dbdde2 url(/DXR.axd?r=0_618-nKxBd) repeat-x left top;
            border: 4px solid #82b727;
        }




                           
    </style>

    <script type="text/javascript">
        function changeButtonState(dbutton) {
            dbutton.SetChecked(!dbutton.GetChecked());
        }

        function ShowLoginWindow() {
            pcLogin.Show();
        }

        function ShowPrevPage() {
            PerformCallback('prev');
        }

        //$("#example-basic").steps({
        //    headerTag: "h3",
        //    bodyTag: "section",
        //    transitionEffect: "slideLeft",
        //    autoFocus: true
        //});

        function ShowNextPage() {
            PerformCallback('next');
        }

        function PerformCallback(command) {
            CallbackPanel.PerformCallback(CallbackPanel.cpPageIndex + ':' + command);
        }
        function UpdatePager() {
            var pageNumber = CallbackPanel.cpPageIndex + 1;
            if (CallbackPanel.cpPageIndex == 4) {
                btPrev.SetVisible(false);
                btNext.SetVisible(false);
            }
            else {
                var isFirst = (CallbackPanel.cpPageIndex == 0);
                var isLast = (CallbackPanel.cpPageIndex == 7);

                if (isFirst) {
                    btPrev.SetVisible(false);
                }
                else {
                    btPrev.SetVisible(true);

                }
                if (isLast) {
                    btNext.SetVisible(false);
                } else { btNext.SetVisible(true); }
            }
        }


        function FINALIZAR() {
            var tt1 = t1.GetText();
            var tt2 = t2.GetText();
            var tt3 = t3.GetText();
            alert("Enviar Email Textbox 1 + 2+ 3" + tt1 + tt2 + tt3);
        }

        //$('#inputchidori').daterangepicker({
        //    "startDate": "02/28/2017",
        //    "endDate": "03/04/2017",
        //    "opens": "center"
        //}, function (start, end) {

        //});

        function UpdateInfo() {
            var daysTotal = deEnd.GetRangeDayCount();
            tbInfo.SetText(daysTotal !== -1 ? daysTotal + ' days' : '');
        }
    </script>



</head>

<body>
    <form id="form1" runat="server">
        <div class="container" style="padding: 0px !important; margin: 0px !important; width: 100%;">
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12" style="background-color: #333333; padding: 0px !important">


                    <img class="imgquoute" src='../../img/bookcover.jpg' style="width: 100%; opacity: 1;"> </img>
                    <div class='overlay'>
                        <p class="poverlay">Booking</p>
                    </div>


                </div>
            </div>



            <div class="row" style="margin: 0px !important">
            </div>
        </div>

        <dx:ASPxCallbackPanel runat="server" ID="ASPxCallbackPanel" ClientInstanceName="CallbackPanel"
            Width="100%" OnCallback="CallbackPanel_Callback" OnCustomJSProperties="rpFilmCollection_CustomJSProperties" EnableCallbackAnimation="True">
            <PanelCollection>
                <dx:PanelContent runat="server">
                    <div class="row" style="height: 420px">
                        <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View0" runat="server">


                                <div class="col-sm-12 " style="line-height: 15px; margin: 0">


                                    <center><br /><br />
                                                                    <span style="color: #333333; font-family: 'Quicksand'; font-size: 7vw;">Personal Information<br /></span>
                                                                        <br />
                                                                        <dx:ASPxTextBox ID="tfirstname" ClientInstanceName="t1" runat="server" Width="80%" Height="30px" NullText="First Name"  Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="tlastname" ClientInstanceName="t6" runat="server" Width="80%" Height="30px" NullText="Last Name"  Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="tphonenumber" ClientInstanceName="t7" runat="server" Width="80%" Height="30px" NullText="Phone Number"    Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="temail" ClientInstanceName="t8" runat="server" Width="80%" Height="30px" NullText="example@email.com"   Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                    <br />    
                                                                        <dx:ASPxLabel ID="errorPersonalInfo" runat="server"  Width="80%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"  Text="" ForeColor="#FF6600"></dx:ASPxLabel>
                                                                        </center>


                                </div>

                            </asp:View>
                            <asp:View ID="View1" runat="server">

                                <div class="row" style="text-align: center;">
                                    <div class="col-xs-12">
                                        <span style="color: #333333; font-family: 'Quicksand'; font-size: 7vw;">Select Date<br />
                                        </span>


                                    </div>
                                </div>

                                <div class="row" style="margin-left: 0; margin-right: 0;">
                                    <div class="col-xs-12" style="line-height: 18px">
                                        <center>
                                                             <dx:ASPxLabel ID="ASPxLabel2" runat="server" style="color: #333333; font-family:'Quicksand'; font-size:5vw;" Text="Arrival Date"></dx:ASPxLabel>
                                                                                                                       <br></br>
                                                             <dx:ASPxDateEdit ID="deStart" runat="server" ClientInstanceName="deStart" Font-Size="18px" Theme="Youthful">
                                                                 <DateRangeSettings CalendarColumnCount="1" />
                                                                 <ClientSideEvents DateChanged="UpdateInfo" />
                                                                 <ValidationSettings CausesValidation="True" Display="Dynamic" ErrorDisplayMode="ImageWithTooltip" SetFocusOnError="True">
                                                                     <RequiredField ErrorText="Start date is required" IsRequired="True" />
                                                                 </ValidationSettings>
                                                             </dx:ASPxDateEdit>
                                                      
                                                             <br></br>
                                                             <dx:ASPxLabel ID="ASPxLabel3" runat="server" style="color: #333333; font-family:'Quicksand'; font-size:5vw;" Text="Departure Date">
                                                             </dx:ASPxLabel>
                                                       
                                                             <br></br>
                                                             <dx:ASPxDateEdit ID="deEnd" runat="server" ClientInstanceName="deEnd" Font-Size="18px" Theme="Youthful">
                                                                 <DateRangeSettings CalendarColumnCount="1" StartDateEditID="deStart" />
                                                                 <ClientSideEvents DateChanged="UpdateInfo" />
                                                                 <ValidationSettings CausesValidation="True" Display="Dynamic" ErrorDisplayMode="ImageWithTooltip" SetFocusOnError="True">
                                                                     <RequiredField ErrorText="End date is required" IsRequired="True" />
                                                                 </ValidationSettings>
                                                             </dx:ASPxDateEdit>
                                                             <br>
                                                           </br>
                                                             <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientInstanceName="tbInfo" Text="Please select  arrival and departure date" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">
                                                             </dx:ASPxLabel>
                                                             <br>
                                                              <dx:ASPxLabel ID="errorDate" runat="server"  Width="80%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"  Text="" ForeColor="#FF6600"></dx:ASPxLabel>
                                                                       
                                                             <br>
                                                         
                                                         </center>
                                    </div>

                                </div>

                            </asp:View>
                            <asp:View ID="View2" runat="server">

                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-8 col-xs-offset-2">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:7vw;";>TYPE OF STAY
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                   
                                                                                                    </center>


                                </div>

                                <br />
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonCamp" runat="server" AutoPostBack="False" Checked="True"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/Camp.jpg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Camp.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Camp</label>
                                                                    </div>
                                                                    <div class="col-xs-4 " style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonOver" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/caballo.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/caballo.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Overnight<br />
                                                                            Stay</label>
                                                                    </div>
                                                                    <div class="col-xs-42" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonGroup" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/Group.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Group.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Group<br />
                                                                            Event</label>
                                                                    </div>

                                                                    </center>
                                </div>
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonEvent" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/event.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/event.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Event</label>
                                                                    </div>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonDay" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/visit.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/visit.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Day<br />
                                                                            Visit</label>
                                                                    </div>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonCorporate" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/corporation.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/corporation.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                     
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Corporate</label>
                                                                    </div>

                                                                       </center>
                                </div>


                            </asp:View>



                            <asp:View ID="View3" runat="server">


                                <div style="line-height: 18px;">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 7vw;">
                                            <br>
                                            </br>   
                                            <br>   </br>
                                                    TELL US MORE   
                                            <br>   </br>
                                            <br>
                                          </br>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-xs-10 col-xs-offset-1" style="text-align: center;">
                                            <center>
                                                                    <dx:ASPxTextBox ID="companyname" NullText="Company Name*" runat="server" Width="100%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">                                                                      

                                                                    </dx:ASPxTextBox>
                                                                        </center>

                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-xs-10 col-xs-offset-1" style="text-align: center;">
                                            <center>
                                                                    <dx:ASPxTextBox ID="website" NullText="Website" runat="server" Width="100%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">                                                                       

                                                                    </dx:ASPxTextBox>
                                                                    </center>
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <center>
                                                                <div class="col-xs-5 col-xs-offset-1" style="text-align: center;">
                                                                    <dx:ASPxTextBox ID="amount" NullText="Amount of People" runat="server" Width="100%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">

                                                                    </dx:ASPxTextBox>
                                                                    
                                                                </div>
                                                                <div class="col-xs-5" style="text-align:center; ">
                                                                    <dx:ASPxTextBox ID="budget" NullText="Budget" runat="server" Width="100%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">

                                                                    </dx:ASPxTextBox>
                                                                </div>
                                                                    </center>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <center>
                                                                <div class="col-xs-10 col-xs-offset-1" style="text-align: center;">
                                                                  <dx:ASPxMemo ID="tellusmore" runat="server" Width="100%" Height="100px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;" NullText="Tell us more about your event"></dx:ASPxMemo>
                                                               
                                                                    <br>
                                                               
                                                                </br>
                                                                       <dx:ASPxLabel ID="errortellusmore" runat="server"  Width="80%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"  Text="" ForeColor="#FF6600"></dx:ASPxLabel>
                                                                     
                                                                </div>
                                                                    </center>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <div style="line-height: 30px;">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 7vw;">
                                            <br>
                                            THANK YOU
                                        
                                        </div>
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 5vw;">
                                            <br>A contact sales representative will contact you in less than 24 Hours.
                                              <br>
                                                  <br></br>
                                              </br>
                                            </br>
                                        </div>
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 3vw;">
                                            <br></br>
                                            You will be contacted via email or phone call. 
                                                <br>
                                                    <br></br>
                                                </br>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-8 col-xs-offset-2">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:7vw;";>TYPE OF ACCOMODATION
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                   
                                                                                                    </center>


                                </div>

                                <br />
                                <br />
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="Teepes" runat="server" AutoPostBack="False" Checked="True"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/Teepes.jpg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Teepes.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Teepes</label>
                                                                    </div>
                                           <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="Andalusian" runat="server" AutoPostBack="False" Checked="False"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/.jpg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Andalusian.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Andalusian House</label>
                                                                    </div>
                                                                    <div class="col-xs-4 " style="padding: 0 !important">
                                                                       
                                                                    </div>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                     <dx:ASPxButton ID="Yurtas" runat="server" AutoPostBack="False"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/Yurts.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Yurts.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Yurts</label>
                                                                        
<%--                                                                            <dx:ASPxButton ID="ASPxButton3" runat="server" AutoPostBack="False"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/Andalusian.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Andalusian.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Andalusian<br />
                                                                            House</label>--%>
                                                                    </div>

                                                                    </center>
                                </div>
                            </asp:View>
                            <asp:View ID="View6" runat="server">
                                <%--   <dx:ListEditItem Text="Canopy Park" Value="Canopy Park" />
                                                                                                                            <dx:ListEditItem Text="Arc Attack" Value="Arc Attack" />
                                                                                                                            <dx:ListEditItem Text="Kayak" Value="Kayak" />
                                                                                                                            <dx:ListEditItem Text="Kite & Wind Surf" Value="Kite & Wind Surf" />
                                                                                                                            <dx:ListEditItem Text="Cycling Routes" Value="Cycling Routes" />
                                                                                                                            <dx:ListEditItem Text="Horse Riding" Value="Horse Riding" />
                                                                                                                            <dx:ListEditItem Text="Swimming" Value="Swimming" />
                                --%>

                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-10 col-xs-offset-1">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:7vw;";>SELECT ACTIVITIES
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                    
                                  </center>
                                </div>
                              
                                </br> 
                    <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                                   <center>
                                           <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="canopybutton" ClientInstanceName="canopybutton" runat="server" AutoPostBack="False" 
                                                                             Width="80px" Height="80px" Image-Url="~/assets/images/book/canopy.jpg" GroupName="cang" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/canopy.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>
                                                                            <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Canopy Park</label>
                                                                    </div>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="arcbutton" ClientInstanceName="arcbutton" runat="server" AutoPostBack="False" 
                                                                             Width="80px" Height="80px" Image-Url="~/assets/images/book/archery.jpg" GroupName="arcg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/archery.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>
                                                                               <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Arc Attack</label>
                                                                    </div>
                                           <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="kayakbutton" ClientInstanceName="kayakbutton" runat="server" AutoPostBack="False" Checked="False"
                                                                            Width="80px" Height="80px" Image-Url="~/assets/images/book/kayak.jpg"  GroupName="kayg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/kayak.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>
                                                                             <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Kayak</label>
                                                                    </div>
                                        </center>
                                               </div>
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                     <dx:ASPxButton ID="kitebutton" ClientInstanceName="kitebutton" runat="server" AutoPostBack="False"
                                                                            Width="80px" Height="80px" Image-Url="~/assets/images/book/Kitesurf.jpg" GroupName="kiteg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Kitesurf.jpg"></Image>
                                                                          <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }"/>
                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Kite & Wind Surf</label>
                                                                        
                                                                    </div>
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                     <dx:ASPxButton ID="horsebutton" ClientInstanceName="horsebutton" runat="server" AutoPostBack="False"
                                                                            Width="80px" Height="80px" Image-Url="~/assets/images/book/riding.jpg" GroupName="horg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/riding.jpg"></Image>
                                                                          <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }"/>
                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Horse Riding</label>
                                                                        
                                                                    </div>

                                                                                         
                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                     <dx:ASPxButton ID="swimbutton" ClientInstanceName="swimbutton" runat="server" AutoPostBack="False"
                                                                           Width="80px" Height="80px"  Image-Url="~/assets/images/book/swimming.jpg" GroupName="swimgg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/swimming.jpg"></Image>
                                                                          <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }"/>
                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Swimming</label>
                                                                        
                                                                    </div>

                                                                                         
       

                                                                    </center>
                                </div>
                                    <center>
                                                                       <dx:ASPxLabel ID="errorActi" runat="server"  Width="80%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"  Text="" ForeColor="#FF6600"></dx:ASPxLabel>
                                             </center>                
                            </asp:View>
                            <asp:View ID="View7" runat="server">

                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-10 col-xs-offset-1">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:3vw;";>YOU SELECTED<asp:Literal ID="typeofacco" runat="server"></asp:Literal>
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                              
                                                                                                 
                                                                                             
                                                                                                    </center>


                                </div>

                             </br>
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">

                                    <center>
                                                                    <div class="col-xs-4" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;">
                                                                           <div class="col-xs-10 col-xs-offset-1">
                                                                                                        <span ;="" style="color: #333333; font-family:'Quicksand'; font-size:2vw;">PLEASE SELECT THE AMOUNT OF VISITORS:</span>
                                                                                                    </div>
                                                                        PERSONS:
                                                                <dx:ASPxSpinEdit ID="spin" ClientInstanceName="spin" runat="server" Number="1" MaxValue="6" MinValue="1" style="width:50px; font-family:'Quicksand'; font-size:3vw;">
                                                                    <ClientSideEvents NumberChanged="function(s, e) { 
                                                                                 if(spin.GetNumber() ==5){extra.SetText('30');} else if(spin.GetNumber() ==6){extra.SetText('60');} else{extra.SetText('0');} 
                                                                        var hdays = highdays.GetText();
                                                                        var ldays = lowdays.GetText();
                                                                        var hcost = highcost.GetText();
                                                                        var lcost = lowcost.GetText();
                                                                        var costoextra = extra.GetText();
                                                                        var costo = (hdays * hcost) + (lcost * ldays) + (hdays * costoextra * 1) + (ldays * costoextra * 1);
                                                                        total.SetText(costo);
                                                                        }" />
   
                                                                </dx:ASPxSpinEdit>
                                                                    </div>
                                                                    <div class="col-xs-8" style="padding: 0 !important; font-family:'Quicksand'; font-size:2.5vw; line-height:2vw;">
                                                                        HIGH SEASON DAYS: <dx:ASPxLabel ID="highdays" ClientInstanceName="highdays" runat="server" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;"></dx:ASPxLabel><br />
                                                                        LOW SEASON DAYS: <dx:ASPxLabel ID="lowdays" ClientInstanceName="lowdays" runat="server" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;"></dx:ASPxLabel>
                                                                        <br /><br />
                                                                        HIGH SEASON RATE: <dx:ASPxLabel ID="highcost" ClientInstanceName="highcost" runat="server" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;"></dx:ASPxLabel>€<br>
                                                                        LOW SEASON RATE:
                                                                        <dx:ASPxLabel ID="lowcost" runat="server" ClientInstanceName="lowcost" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;">
                                                                        </dx:ASPxLabel>
                                                                        €
                                                                        <br></br>
                                                                        <br />
                                                                        EXTRA PERSONS COST PER NIGHT:
                                                                        <dx:ASPxLabel ID="extra" runat="server" ClientInstanceName="extra" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;" Text="0">
                                                                        </dx:ASPxLabel>
                                                                        €<br>
                                                                        <br>TOTAL:
                                                                        <dx:ASPxLabel ID="total" runat="server" ClientInstanceName="total" style="padding: 0 !important; font-family:'Quicksand'; font-size:3vw;">
                                                                        </dx:ASPxLabel>
                                                                        €<br>
                                                                        <br></br>
                                                                        <dx:ASPxButton ID="ASPxButton1" runat="server" Height="59px" OnClick="ASPxButton1_Click" SpriteImageUrl="Paypal.png" Width="200px">
                                                                            <Image Url="Paypal.png">
                                                                            </Image>
                                                                            <BackgroundImage Repeat="NoRepeat" />
                                                                        </dx:ASPxButton>
                                          
                                                                    </div>
                                        

                                                                    </center>
                                </div>

                                <%--                                <div style="line-height: 18px; font-size: 18px;">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 7vw;">
                                           ESCAPE VISIT
                                        </div>
                                    </div>
                                    <div class="row" style="line-height: 18px; font-size: 18px;">

                                        <div class="col-xs-10 col-xs-offset-1" style="text-align: center;">
                                            <center>
                                                                    You Have Selected SCAPE VISIT
                                                                        </center>

                                        </div>

                                    </div>
                                    <br />
                                    <br />

                                    <div class="row" style="line-height: 18px; font-size: 18px;">
                                        <center>
                                                                <div class="col-xs-5 col-xs-offset-1" style="text-align: center;">
                                                                    Visitors
                                                               
                                                                    Adults:<dx:ASPxSpinEdit ID="ASPxSpinEdit1" runat="server" Number="1">
                                                                    </dx:ASPxSpinEdit>
                                                                
                                                                    Kids:<dx:ASPxSpinEdit ID="ASPxSpinEdit2" runat="server" Number="1">
                                                                    </dx:ASPxSpinEdit>
                                                                    
                                                                </div>
                                                                <div class="col-xs-5" style="text-align:center; ">
                                                                    Adults 200 EACH.
                                                                    Kids 200 EACH.
                                                                    
                                                                </div>
                                                                    </center>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row" style="line-height: 18px; font-size: 18px;">
                                        <center>
                                                                <div class="col-xs-3 col-xs-offset-9" style="text-align: center;">
                                                                  <dx:ASPxImage ImageUrl="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSUd4SD8NNb2Q_4Kv7ULfpq2u0005xG0xp0ZxtMGjd5HpYOX8SI_A"></dx:ASPxImage>
                                                                </div>
                                                                    </center>
                                    </div>
                                </div>--%>
                            </asp:View>
                        </asp:MultiView>
                    </div>

                    <div class="row" style="height: 50px; margin-left: 0; margin-right: 0">

                        <div class="col-xs-4" style="text-align: center">
                            <dx:ASPxButton ID="btPrev" runat="server" Text="Prev" AutoPostBack="False" ClientInstanceName="btPrev"
                                Style="color: #ffffff; font: 25px Quicksand; font-size: 25px; border: 1px solid #a9acb5; background: #82b727; padding: 1px;">
                                <ClientSideEvents Click="function(s, e) { ShowPrevPage(); }"></ClientSideEvents>
                            </dx:ASPxButton>
                        </div>

                        <div class="col-xs-4 col-xs-offset-4 " style="text-align: center">
                            <dx:ASPxButton ID="btNext" runat="server" Text="Next" AutoPostBack="False" ClientInstanceName="btNext"
                                Style="color: #ffffff; font: 25px Quicksand; font-size: 25px; border: 1px solid #a9acb5; background: #82b727; padding: 1px;">
                                <ClientSideEvents Click="function(s, e) { ShowNextPage(); }"></ClientSideEvents>
                            </dx:ASPxButton>
                        </div>

                    </div>

                </dx:PanelContent>
            </PanelCollection>
            <ClientSideEvents Init="function(s, e) { UpdatePager(); }" EndCallback="function(s, e){ UpdatePager(); }"></ClientSideEvents>
        </dx:ASPxCallbackPanel>

    </form>
</body>
</html>
