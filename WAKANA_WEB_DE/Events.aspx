<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WAKANA_WEB_DE.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">

         function ShowCalendar() {

             ASPxCallbackPanel3.PerformCallback('calendar');
         }
         function ShowList() {

             ASPxCallbackPanel3.PerformCallback('list');
         }
         function PerformCallback(command) {
             ASPxCallbackPanel3.PerformCallback(command);
         }

    </script>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../../img/slide/events.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="portfolio-container element-normal-top element-no-bottom">
                <div class="row" style="margin-top: 90px;">
                    <div class="col-md-12" style="background-color: rgba(0, 0, 0, 0.50);">


                        <img class="imgquoute" src='../../img/events.jpg' style="opacity:0;"> </img>
                        <div class='overlay'>
                            <p class="poverlay">Events</p>
                        </div>


                    </div>

                </div>

                <div class="row" style="margin-top: 10px; margin-left: 0px; margin-right: 0px; margin-bottom: 10px;">
                    <div class="col-md-2 col-sm-3 col-xs-6 col-md-offset-1" style="padding:0px !important" > 
                          <a href="#" onclick="ShowContactMod();return false;">
                        <div id="facesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; text-align:center; font-family: 'Quicksand';">BOOK WAKANA</div>
                    </a>
                    </div>
                    <div class="col-md-2 col-md-offset-6 col-sm-3 col-sm-offset-6   col-xs-6   eventsbutton">
                        <div class="row" style="margin-top: 10px; margin-left: 0px; margin-right: 0px; margin-bottom: 10px;">
                            <div class="col-xs-6" >
                                <a href="#" onclick="ShowList();return false;" style="color:white;">  DAY </a>
                            </div>
                           
                         <div class="col-xs-6">
                             
                             <a href="#" onclick="ShowCalendar();return false;" style="color:white;">  MONTH </a>
                            </div>
                        </div>
                    </div>
                   </br>
                    <dx:ASPxCallbackPanel ID="ASPxCallbackPanel3" ClientInstanceName="ASPxCallbackPanel3" runat="server" Width="100%" OnCallback="ASPxCallbackPanel3_Callback" EnableCallbackAnimation="True" >
                        <PanelCollection>
                            <dx:PanelContent>
                                <dx:ASPxPanel ID="ASPxPanel1" ClientInstanceName="ASPxPanel1" runat="server" Visible="false" Width="100%">
                                    <PanelCollection> 
                                        <dx:PanelContent>
                                             <div class="row" style=" padding: 20px;">
                    <div class="col-md-10 col-md-offset-1" style="background-color:rgba(0, 0, 0, 0.50); margin-top:15px;" >
                                             <iframe src="https://calendar.google.com/calendar/embed?src=tvjqm9cojg3cm03suit6ukctl4%40group.calendar.google.com&ctz=America/Mexico_City" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
                      </div></div>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxPanel>
                                
                                 <dx:ASPxPanel ID="ASPxPanel2" ClientInstanceName="ASPxPanel2"  Visible="true" runat="server" Width="100%">
                                    <PanelCollection> 
                                        <dx:PanelContent>
                                 <div class="row">
                    <div class="col-md-10 col-md-offset-1" style=" margin-top:15px;">
                         <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>

                                <div class="events">
                                    <div class="eventsdate">
                                        <%# Eval("fecha") %>
                                    </div>
                                    <div class="eventstitle">
                                        <%# Eval("titulo") %>
                                    </div>
                                    <div class="eventsinfo">
                                        <%# Eval("texto") %>
                                    </div>
                                    <div onclick="ShowModalEvent('<%# Eval("id") %>', 'summer','1');return false;"  class="eventsinfolink" style=" cursor: pointer; cursor: hand; font-size: 22px;">
                                        MORE INFO
                                    </div>
                                     
                                </div>


                            </ItemTemplate>
                        </asp:Repeater>
                         <br>
                        </br>
             
                 
                        

                    </div>

                </div>
  </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxPanel>


                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>
                        </div>
               

               
            </div>
        </div>
    </section>
</asp:Content>
