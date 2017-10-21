<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BOOKING.aspx.cs" Inherits="WAKANA_WEB_DE.BOOKING" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/theme.min.css">
    <link rel="stylesheet" href="../assets/css/wakana.css" media="screen">
    <link rel="stylesheet" href="../assets/css/Booking.css" media="screen">

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


        function UpdateInfo() {
            var daysTotal = deEnd.GetRangeDayCount();
            tbInfo.SetText(daysTotal !== -1 ? daysTotal + ' nights' : '');
        }

        function closePopup() {
            window.parent.HidePopup();
        }
    </script>

</head>

<body>
    <form id="form1" runat="server">
        <div class="container" style="padding: 0px !important; margin: 0px !important; width: 100%;">
            <div class="row" style="margin: 0px !important">

                <div class="col-xs-12" style="background-color: #333333; padding: 0px !important">


                    <img class="imgquoute" src='../../assets/images/book/bookcover.jpg' style="width: 100%; opacity: 1;"> </img>
                    <div class='overlay'>
                        <p class="poverlay">Booking</p>
                    </div>


                </div>
            </div>



            <div class="row" style="margin: 0px !important">
            </div>
        </div>

        <dx:ASPxCallbackPanel runat="server" ID="ASPxCallbackPanel" ClientInstanceName="CallbackPanel"
            Width="100%" OnCallback="Booking_Callback" OnCustomJSProperties="rpFilmCollection_CustomJSProperties" EnableCallbackAnimation="True">
            <PanelCollection>
                <dx:PanelContent runat="server">
                    <div class="row" style="height: 420px">
                        <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View0" runat="server">


                                <div class="col-sm-12 " style="line-height: 15px; margin: 0">


                                    <center><br /><br />
                                                                    <span style="color: #333333; font-family: 'Quicksand'; font-size: 7vw;">Contact Information<br /></span>
                                                                        <br />
                                                                        <dx:ASPxTextBox ID="tfirstname" ClientInstanceName="t1" runat="server" Width="80%" Height="30px" NullText="First Name"  Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="tlastname" ClientInstanceName="t6" runat="server" Width="80%" Height="30px" NullText="Last Name"    Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="tphonenumber" ClientInstanceName="t7" runat="server" Width="80%" Height="30px" NullText="Phone Number"      Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
                                                                        <br />     <br />
                                                                        <dx:ASPxTextBox ID="temail" ClientInstanceName="t8" runat="server" Width="80%" Height="30px" NullText="example@email.com"    Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100;"></dx:ASPxTextBox>
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
                                                             <br>
                                                            </br>
                                                             <dx:ASPxDateEdit ID="deStart" runat="server" ClientInstanceName="deStart" DisplayFormatString="dd/MM/yyyy" Font-Size="18px" Theme="Youthful">
                                                                 <DateRangeSettings CalendarColumnCount="1" />
                                                                 <ClientSideEvents DateChanged="UpdateInfo" />
                                                                 <ValidationSettings CausesValidation="True" Display="Dynamic" ErrorDisplayMode="ImageWithTooltip" SetFocusOnError="True">
                                                                     <RequiredField ErrorText="Start date is required" IsRequired="True" />
                                                                 </ValidationSettings>
                                                             </dx:ASPxDateEdit>
                                                             <br>
                                                            </br>
                                                             <dx:ASPxLabel ID="ASPxLabel3" runat="server" style="color: #333333; font-family:'Quicksand'; font-size:5vw;" Text="Departure Date">
                                                             </dx:ASPxLabel>
                                                             <br>
                                                            </br>
                                                             <dx:ASPxDateEdit ID="deEnd" runat="server" ClientInstanceName="deEnd" DisplayFormatString="dd/MM/yyyy" Font-Size="18px" Theme="Youthful">
                                                                 <DateRangeSettings CalendarColumnCount="1" StartDateEditID="deStart" />
                                                                 <ClientSideEvents DateChanged="UpdateInfo" />
                                                                 <ValidationSettings CausesValidation="True" Display="Dynamic" ErrorDisplayMode="ImageWithTooltip" SetFocusOnError="True">
                                                                     <RequiredField ErrorText="End date is required" IsRequired="True" />
                                                                 </ValidationSettings>
                                                             </dx:ASPxDateEdit>
                                                             <br>
                                                             </br>
                                                             <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientInstanceName="tbInfo" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;" Text="Please select  arrival and departure date">
                                                             </dx:ASPxLabel>
                                                             <br>
                                                             <dx:ASPxLabel ID="errorDate" runat="server" Font-Names="quicksand" Font-Size="20pt" ForeColor="#FF6600" Height="30px" Style="font-weight: 100;" Width="80%">
                                                             </dx:ASPxLabel>
                                                             </br>
                                                          
                                                         
                                                         </center>
                                    </div>

                                </div>

                            </asp:View>
                            <asp:View ID="View2" runat="server">

                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-8 col-xs-offset-2">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:5.5vw;";>CHOOSE YOUR EXPERIENCE
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                   
                                                                                                    </center>


                                </div>

                                <br />
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                              <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonExperience" runat="server" AutoPostBack="False" Checked="True"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/yourexperience.png" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book//yourexperience.png"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        
                                                                    </div>

                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonCamp" runat="server" AutoPostBack="False" Checked="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/camp.png" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/camp.png"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                    </div>

                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonGroup" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/group.png" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/group.png"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                    </div>

                                                                    </center>
                                </div>
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-4 col-xs-offset-2" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonEvent" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/event.png" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/event.png"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                    </div>

                                                                    <div class="col-xs-4" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="buttonCorporate" runat="server" AutoPostBack="False"
                                                                            GroupName="G" Width="80px" Height="80px" Image-Url="~/assets/images/book/corporate.png" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/corporate.png"></Image>

                                                                        </dx:ASPxButton>
                                                                     
                                                                    </div>

                                                                       </center>
                                </div>


                            </asp:View>



                            <asp:View ID="View3" runat="server">


                                <div style="line-height: 18px;">

                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 7vw;">
                                            <br></br>
                                            <br></br>
                                            TELL US MORE

                                        </div>
                                    </div>

                                    <br />
                                    <br />

                                    <div class="row">
                                        <center>
                                                                <div class="col-xs-10 col-xs-offset-1" style="text-align: center;">
                                                                    <dx:ASPxTextBox ID="amount" NullText="Amount of visitors" runat="server" Width="100%" Height="30px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;">

                                                                    </dx:ASPxTextBox> <br>
                                                                  <dx:ASPxMemo ID="tellusmore" runat="server" Width="100%" Height="100px" Font-Names="quicksand" Font-Size="20pt" Style="font-weight: 100; padding-left: 10px; padding-right: 10px;" NullText="Tell us more about your visit"></dx:ASPxMemo>
                                                               
                                                                    <br>
                                                               
                                                                    <br></br>
                                                                    <dx:ASPxLabel ID="errortellusmore" runat="server" Font-Names="quicksand" Font-Size="20pt" ForeColor="#FF6600" Height="70px" Style="font-weight: 100;" Width="80%">
                                                                    </dx:ASPxLabel>
                                                               
                                                                </br>
                                                                    
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
                                            <br>
                                            We have received your booking request. A sales representative will call you in the next 24 hours to confirm your booking.
                                              <br>
                                                  <br></br>
                                              </br>

                                        </div>
                                        <div class="col-sm-8 col-sm-offset-2 " style="text-align: center; font-family: 'Quicksand'; font-size: 3vw;">
                                            <br></br>
                                            You will be contacted via email or phone call. 
                                                <br>
                                                    <dx:ASPxButton ID="close" runat="server" Text="Ok" AutoPostBack="False" ClientInstanceName="close"
                                                        Style="color: #ffffff; font: 25px Quicksand; font-size: 25px; border: 1px solid #a9acb5; background: #82b727; padding: 1px;">
                                                        <ClientSideEvents Click="function(s, e) { closePopup(); }"></ClientSideEvents>
                                                    </dx:ASPxButton>
                                                </br>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-8 col-xs-offset-2">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:4.5vw;";>WHERE WOULD YOU LIKE TO STAY?
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                   
                                                                                                    </center>


                                </div>


                                <br />
                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <center>
                                                                    <div class="col-xs-3" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="Teepes" runat="server" AutoPostBack="False" Checked="True"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/Teepes.jpg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Teepes.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Tepee</label>
                                                                    </div>
                                           <div class="col-xs-3" style="padding: 0 !important">
                                                                        <dx:ASPxButton ID="Andalusian" runat="server" AutoPostBack="False" Checked="False"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/.jpg" Image-Width="80px" Image-Height="80px" Paddings-Padding="0px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Andalusian.jpg"></Image>

                                                                            <Paddings Padding="0px"></Paddings>

                                                                        </dx:ASPxButton>

                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">Andalusian Cortijo</label>
                                                                    </div>
                                                                    <div class="col-xs-3 " style="padding: 0 !important">
                                                                       <dx:ASPxButton ID="Yurtas" runat="server" AutoPostBack="False"
                                                                            GroupName="A" Width="80px" Height="80px" Image-Url="~/assets/images/book/Yurts.jpg" Image-Width="80px" Image-Height="80px">
                                                                            <Image Height="80px" Width="80px" Url="~/assets/images/book/Yurts.jpg"></Image>

                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Yurts</label>
                                                                    </div>
                                                                    <div class="col-xs-3" style="padding: 0 !important">
                                                                     <dx:ASPxButton ID="none" runat="server" AutoPostBack="False"
                                                                            GroupName="A" Width="110px" Height="86px" Font-Size="20px" Text="">
                                                                  
                                                                        </dx:ASPxButton>
                                                                      
                                                                        <br />
                                                                        <label style="font-family: 'Quicksand';">
                                                                            Only Activities</label>
                                                                        
                                                                    </div>
                                         <br />

                                    <dx:ASPxLabel ID="errorDays" runat="server" Font-Names="quicksand" Font-Size="15pt" ForeColor="#FF6600" Height="30px" Style="font-weight: 100;" Width="80%">
                                    </dx:ASPxLabel>
                                                                    </center>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">

                                        <center>
                                         <a href="../../Precios Web_ENG.pdf" target="_blank" class="wakanasublink" style="font-family: Quicksand; font-size: 20px; text-align: center;">PRICE INFO</a>
                                 </center>
                                        <br></br>
                                    </div>
                                    <br></br>

                                </div>
                            </asp:View>
                            <asp:View ID="View6" runat="server">


                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-10 col-xs-offset-1">
                                                                                                        <span style="color: #333333; font-family:'Quicksand'; font-size:4.5vw;";>WHAT ACTIVITIES WOULD YOU LIKE TO DO?
                                                                                                                                                                                                                                                                                                                                     
                                                                                                        </span>                                                                                             
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                                    
                                  </center>
                                </div>

                                <br>


                                    <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                        <center>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="canopybutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="canopybutton" GroupName="cang" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/canopy.jpg" Width="80px">
                                                </Image>
                                                <Paddings Padding="0px" />
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Canopy Park</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="arcbutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="arcbutton" GroupName="arcg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/archery.jpg" Width="80px">
                                                </Image>
                                                <Paddings Padding="0px" />
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Arc Attack</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="kayakbutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="kayakbutton" GroupName="kayg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/kayak.jpg" Width="80px">
                                                </Image>
                                                <Paddings Padding="0px" />
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Kayak</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="horsebutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="horsebutton" GroupName="horg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/riding.jpg" Width="80px">
                                                </Image>
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Horse Riding</label>
                                        </div>
                                    </center>
                                    </div>
                                    <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                        <center>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="kitebutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="kitebutton" GroupName="kiteg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/kitesurf.jpg" Width="80px">
                                                </Image>
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Kitesurf & Windsurf</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="spartantrial" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="swimbutton" GroupName="windg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/spartantrial.png" Width="80px">
                                                </Image>
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Spartan Trial</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="jetbutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="kitebutton" GroupName="jetg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/jetsurf.jpg" Width="80px">
                                                </Image>
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Jet Surf</label>
                                        </div>
                                        <div class="col-xs-3" style="padding: 0 !important">
                                            <dx:ASPxButton ID="paddlebutton" runat="server" AutoPostBack="False" CausesValidation="False" ClientInstanceName="kitebutton" GroupName="paddleg" Height="80px" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {  window.setTimeout('changeButtonState(' + s + ')', 0);   }" />
                                                <Image Height="80px" Url="~/assets/images/book/paddlesurf.jpg" Width="80px">
                                                </Image>
                                            </dx:ASPxButton>
                                            <br />
                                            <label style="font-family: 'Quicksand';">
                                            Paddle Surf</label>
                                        </div>
                                    </center>
                                    </div>
                                    <center>
                                           <br />
                                    <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" CheckState="Unchecked" Font-Names="quicksand" Font-Size="15pt"  Text="I understand that the availability of all activities are subject to weather conditions.">
                                    </dx:ASPxCheckBox>
                                    <dx:ASPxCheckBox ID="ASPxCheckBox2" runat="server" CheckState="Unchecked" Font-Names="quicksand" Font-Size="15pt"  Text="I understand that all activities are paid at the entrance of Wakana Lake.">
                                    </dx:ASPxCheckBox>
                                    <br />
                                    <dx:ASPxLabel ID="errorActi" runat="server" Font-Names="quicksand" Font-Size="15pt" ForeColor="#FF6600" Height="30px" Style="font-weight: 100;" Width="80%">
                                    </dx:ASPxLabel>
                                </center>

                                </br>
                            </asp:View>
                            <asp:View ID="View7" runat="server">

                                <div class="row">
                                    <center>

                                                                                                    <div class="col-xs-10 col-xs-offset-1">
                                                                                                          <span  style="color: #333333; font-family:'Quicksand'; font-size:6vw;">BOOKING DETAILS</span>                                                                                          
                                                                                                                                                                                                                                                                                                        
                                                                                                    </div>
                                                                                              
                                                                                                 
                                                                                             
                                                                                                    </center>


                                </div>
                                <asp:HiddenField ID="highdays" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="lowdays" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="hiddenlow12" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="hiddenlow34" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="hiddenhigh12" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="hiddenhigh34" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="hiddenextracost" runat="server" ClientIDMode="Static" />

                                <br>

                                <div class="row" style="margin-left: 12px; margin-right: 12px;">
                                    <div class="col-xs-4" style="padding: 0 !important; font-family: 'Quicksand'; font-size: 3vw;">
                                        <div class="col-xs-10 col-xs-offset-1">
                                            <span style="color: #333333; font-family: 'Quicksand'; font-size: 2.5vw;">HOW MANY PEOPLE ARE YOU?</span><br></br>
                                            <center>
                                                <dx:ASPxSpinEdit ID="spin" runat="server" ClientInstanceName="spin" MaxValue="6" MinValue="1" Number="1" style="width:50px; font-family:'Quicksand'; font-size:3vw;">
                                                    <ClientSideEvents NumberChanged="function(s, e) { 
                                                                                  
                                                                        var hdays = parseFloat(highdays.value);
                                                                        var ldays = parseFloat(lowdays.value);
                                                                        var h12cost = parseFloat(hiddenhigh12.value);
                                                                        var h34cost = parseFloat(hiddenhigh34.value);
                                                                        var extracost = parseFloat(hiddenextracost.value);
                                                                        var l12cost = parseFloat(hiddenlow12.value);
                                                                        var l34cost = parseFloat(hiddenlow34.value);
                                                                        var personas = parseFloat(spin.GetNumber());
                                                                      
                                                                        if(spin.GetNumber() ==1 || spin.GetNumber() ==2 ){
                                                                        var costo = (hdays * h12cost) + (l12cost * ldays);

                                                                        }
                                                                        if(spin.GetNumber() ==3 || spin.GetNumber() ==4 ){
                                                                        var costo = (hdays * h34cost) + (l34cost * ldays);

                                                                        }
                                                                        if(spin.GetNumber() ==5 ){
                                                                         
                                                                         
                                                                          var costoh = hdays * (h34cost + extracost);
                                                                          var costol  = ldays * (l34cost + extracost );
                                                                          var costo =  costoh + costol;
                                                                        }
                                                                         if(spin.GetNumber() ==6 ){
                                                                          var costoh = hdays * (h34cost + (extracost + extracost));
                                                                          var costol  = ldays * (l34cost + (extracost + extracost));
                                                                          var costo =  costoh + costol;
                                                                        }
                                                                        var av = costo/personas/(hdays+ldays);
                                                                        average.SetText(av.toFixed( 2 ) + ' \u20AC');
                                                                        total.SetText(costo.toFixed( 2 ) + ' \u20AC');

                                                                        }" />
                                                </dx:ASPxSpinEdit>
                                            </center>
                                            <br></br>
                                            <br>
                                                <br></br>
                                                <center>
                                                <br />
                                                <dx:ASPxLabel ID="errorpay" runat="server" Font-Names="quicksand" Font-Size="10pt" ForeColor="#FF6600" Height="30px" Style="font-weight: 100;" Width="80%">
                                                </dx:ASPxLabel>
                                            </center>
                                            </br>
                                        </div>
                                    </div>
                                    <div class="col-xs-8" style="padding: 0 !important; font-family: 'Quicksand'; font-size: 3vw; line-height: 3vw;">
                                        <span style="color: #333333;">NAME :
                                       <asp:Literal ID="literalname" runat="server"></asp:Literal>
                                        </span>
                                        <br />

                                        <span style="color: #333333;">PHONE :
                                       <asp:Literal ID="literalphone" runat="server"></asp:Literal>
                                        </span>
                                        <br />

                                        <span style="color: #333333;">EMAIL :
                                       <asp:Literal ID="literalemail" runat="server"></asp:Literal>
                                        </span>

                                        <br />

                                        <span style="color: #333333;">ACTIVITIES RESERVED :
                                        <asp:Literal ID="activitiesliteral" runat="server"></asp:Literal>
                                        </span>
                                        <br />

                                        <span style="color: #333333;">ACCOMMODATION :
                                        <asp:Literal ID="typeofacco" runat="server"></asp:Literal>
                                        </span>
                                        <br />

                                        <span style="color: #333333;">ARRIVAL DATE :
                                        <asp:Literal ID="arrivaldatelit" runat="server"></asp:Literal>
                                        </span>
                                        <br />

                                        <span style="color: #333333;">DEPARTURE DATE :
                                        <asp:Literal ID="departuradatelit" runat="server"></asp:Literal>
                                        </span>
                                        <br />
                                        <span style="color: #333333;">PRICE PER PERSON PER NIGHT:</span>
                                        <dx:ASPxLabel ID="averagelabel" runat="server" ClientInstanceName="average" Style="padding: 0 !important; font-weight: 600; font-family: 'Quicksand'; color: darkred; font-size: 3vw;">
                                        </dx:ASPxLabel>
                                        <br>
                                        <span style="color: #333333;">TOTAL:</span>
                                        <dx:ASPxLabel ID="total" runat="server" ClientInstanceName="total" Style="padding: 0 !important; font-weight: 600; font-family: 'Quicksand'; color: darkred; font-size: 3vw;">
                                        </dx:ASPxLabel>
                                        <br>



                                        <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Height="59px" OnClick="ASPxButton1_Click1" SpriteImageUrl="Paypal.png" Width="200px">
                                            <Image Url="Paypal.png">
                                            </Image>
                                            <BackgroundImage Repeat="NoRepeat" />
                                        </dx:ASPxButton>
                                        <br><a style="color: #333333; font-family: 'Quicksand'; font-size: 2vw;">BY CLICKING ON CHECKOUT I AGREE TO </a><a href="CancelationPolicy.aspx" style="color: #333333; font-family: 'Quicksand'; font-weight: 600; font-size: 2vw;" target="_blank">THE TERMS.</a></br>

                                    </div>
                                </div>



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
