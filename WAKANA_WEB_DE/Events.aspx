<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WAKANA_WEB_DE.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pace-overlay"></div>

        <div id="masthead" class="navbar navbar-static-top swatch-black navbar-sticky" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".main-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Default.aspx" class="navbar-brand" style="width: 200px; font-weight: lighter; font-size: 30px; font-family: 'Josefin Sans';">
                        <img src="../assets/images/logobar.png" alt="Wakana Lake" />
                    </a>
                </div>
                 <nav class="collapse navbar-collapse main-navbar" role="navigation">
                    <div class="menu-sidebar pull-right">
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <%-- <li class="dropdown menu-item-object-oxy_mega_menu ">
                            <a href="#" onclick="ShowLoginWindow();return false;" >BOOK NOW</a>
                        </li>--%>

                        <li class="dropdown">
                            <a href="Place.aspx" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal10" Text="<%$ Resources:Index, lugar %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Faces.aspx"><asp:Literal runat="server" ID="Literal11" Text="<%$ Resources:Index, galeria %>"></asp:Literal>         
                                    </a>
                                </li>
                                <li>
                                    <a href="Map.aspx"><asp:Literal runat="server" ID="Literal12" Text="<%$ Resources:Index, mapa %>"></asp:Literal>
                                                    
                                    </a>
                                </li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#"><asp:Literal runat="server" ID="Literal13" Text="<%$ Resources:Index, comunidad %>"></asp:Literal></a>
                                    <ul class="dropdown-menu">
                                      <li><a  href="Community.aspx"><asp:Literal runat="server" ID="Literal14" Text="<%$ Resources:Index, acercadenos %>"></asp:Literal></a></li>
                                        <li><a  href="Meetthecommunity.aspx"><asp:Literal runat="server" ID="Literal15" Text="<%$ Resources:Index, equipo %>"></asp:Literal></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal16" Text="<%$ Resources:Index, alojamientos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Yurtas.aspx"><asp:Literal runat="server" ID="Literal17" Text="<%$ Resources:Index, yurtas %>"></asp:Literal>          
                                    </a>
                                </li>
                                <li>
                                    <a href="Andalusian.aspx"><asp:Literal runat="server" ID="Literal18" Text="<%$ Resources:Index, cortijoandaluz %>"></asp:Literal>   
                                    </a>
                                </li>
                                 <li>
                                    <a href="Tepees.aspx"><asp:Literal runat="server" ID="Literal19" Text="<%$ Resources:Index, tipis %>"></asp:Literal>          
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><asp:Literal runat="server" ID="Literal20" Text="<%$ Resources:Index, campamentos %>"></asp:Literal></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="Camps.aspx"><asp:Literal runat="server" ID="Literal21" Text="<%$ Resources:Index, campamentosescolares %>"></asp:Literal>
                                    </a>
                                </li>
                                <li>
                                    <a href="SummerCamps.aspx"><asp:Literal runat="server" ID="Literal22" Text="<%$ Resources:Index, campamentosveranowakana %>"></asp:Literal>     
                                    </a>
                                </li>
                                 <li>
                                    <a href="SpartanCamps.aspx"><asp:Literal runat="server" ID="Literal23" Text="<%$ Resources:Index, campamentosspartanrace %>"></asp:Literal>
                                    </a>
                                </li>
                                  <li>
                                    <a href="BocalanCamps.aspx"><asp:Literal runat="server" ID="Literal24" Text="<%$ Resources:Index, campamentosbocalan %>"></asp:Literal>         
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="Activities.aspx" ><asp:Literal runat="server" ID="Literal25" Text="<%$ Resources:Index, actividades %>"></asp:Literal></a>
                        </li>
                        <li class="dropdown">
                            <a href="Events.aspx" ><asp:Literal runat="server" ID="Literal26" Text="<%$ Resources:Index, eventos %>"></asp:Literal></a>
                        </li>
                           <li class="dropdown">
                            <a href="Partners.aspx" ><asp:Literal runat="server" ID="Literal27" Text="<%$ Resources:Index, colaboradores %>"></asp:Literal></a>
                        </li>
                          <li class="dropdown lenguajediv">  <%--ELEGIR IDIOMA--%>
                             <asp:ImageButton CssClass="imagenl" ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/assets/images/england.jpg" OnClick="ImageButton1_Click" Width="34px" />
                        </li>
                        <li class="dropdown">
                             <a href="#" onclick="ShowBooking();return false;" "><asp:Literal runat="server" ID="Literal28" Text="<%$ Resources:Index, reserva %>"></asp:Literal></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
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
                            <p class="poverlay"> <asp:Literal runat="server" ID="Literal30" Text="<%$ Resources:Index, eventosevents %>"></asp:Literal></p>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 10px; margin-left: 0px; margin-right: 0px; margin-bottom: 10px;">
                    <div class="col-md-2 col-sm-3 col-xs-6 col-md-offset-1" style="padding:0px !important" > 
                          <a href="#" onclick="ShowContactMod();return false;">
                        <div id="facesa" class="tp-caption Newspaper-Button" style="z-index: 108; white-space: nowrap; text-transform: left; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer; text-align:center; font-family: 'Quicksand';"> <asp:Literal runat="server" ID="Literal1" Text="<%$ Resources:Index, bookwakana %>"></asp:Literal></div>
                    </a>
                    </div>
                    <div class="col-md-2 col-md-offset-6 col-sm-3 col-sm-offset-6   col-xs-6   eventsbutton">
                        <div class="row" style="margin-top: 10px; margin-left: 0px; margin-right: 0px; margin-bottom: 10px;">
                            <div class="col-xs-6" >
                                <a href="#" onclick="ShowList();return false;" style="color:white;">   <asp:Literal runat="server" ID="Literal2" Text="<%$ Resources:Index, dia %>"></asp:Literal> </a>
                            </div>
                           
                         <div class="col-xs-6">
                             <a href="#" onclick="ShowCalendar();return false;" style="color:white;">   <asp:Literal runat="server" ID="Literal3" Text="<%$ Resources:Index, mes %>"></asp:Literal> </a>
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
                                                                     <asp:Literal runat="server" ID="Literal4" Text="<%$ Resources:Index, masinfo %>"></asp:Literal>
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
