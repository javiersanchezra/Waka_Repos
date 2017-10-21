<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="Camps.aspx.cs" Inherits="WAKANA_WEB_DE.es.Camps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">
           <script type="text/javascript">
               function ShowCampWindow(text) {
                   camp.Show();
                   camp.PerformCallback(text);
        }
             
    </script>
        
        <div class="background-media" style="background-image: url('../img/slide/backFAQ.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><div class="lobstertitle" style="text-align:left !important; ">Campamentos Wakana Lake</div><div style="font-family:'Josefin Sans' color:white; font-size:35px; text-align:left !important;">FECHAS 2017</div></div>
            </div>
   
            <div class="row">

    
                 <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                <div class="col-md-3 col-sm-6 col-xs-12">
                   
                    <div class="CAMP">
                        <div class="TITULOCAMP"> <%# Eval("titulo") %></div>
                    
                           <asp:Image ID="Image1" runat="server" ImageUrl=<%# Eval("imagen")%>  />
                        <a href="#" onclick="ShowModal('<%# Eval("id") %>', 'summer');return false;" ><div class="buttonmoreinfo">INFORMACIÓN</div></a>
                      
                    </div>
                      

                </div>

                
             </ItemTemplate>
                        </asp:Repeater>
              
            </div>

       
        </div>
       
    </section>
</asp:Content>
