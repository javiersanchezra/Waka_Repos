<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SchoolCamps.aspx.cs" Inherits="WAKANA_WEB_DE.SchoolCamps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <style>
            .CAMP {
                background-color: rgba(255, 255, 255, 0.30);
                margin: 5px;
               overflow:auto;
            }
            .camptext{
                font-family:Quicksand;
                font-size:25px; 
                line-height:40px; 
                font-weight:400; 
                padding:20px; 
                color:black;
            }
            .TITULOCAMP {
                background-color: white;
               
                padding: 15px;
                 font-family: 'Josefin Sans';
                /*font-family: Lobster;*/
                font-size: 60px;
                line-height: 45px;
                color: rgba(0, 0, 0, 0.85);
            }
            
            .buttonmoreinfo {
                background-color: #81b72d;
                height: 60px;
                padding-top: 8px;
                font-family: Quicksand;
                font-size: 25px;
                line-height: 40px;
                color: white;
                margin:25px;

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
            .modalcamp{
                width: 90vw;
                height: 90vh;
            }
          

        }
            .textocamp {
    margin-bottom: 0rem;
    position: relative;
    color: black;
      margin-top: -20px;
    font-size: 16px;
    line-height: 16px;
    margin-bottom: 3rem;
    font-family: Quicksand;
    font-weight: 400;
  
        text-align: left;
}
              

            .dxpcLite_DevEx .dxpc-content, .dxdpLite_DevEx .dxpc-content {
    white-space: normal;
     padding: 0px 0px 0px 0px !important;
}
        </style>
        <div class="background-media" style="background-image: url('../img/slide/backFAQ.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><div class="lobstertitle" style="text-align:left !important; ">Wakana Lake School Camps</div><div style="font-family:Quicksand; color:white; font-size:35px; text-align:left !important;">2017 DATES</div></div>
            </div>
   
            <div class="row">

                 <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                <div class="col-md-3 col-sm-6 col-xs-12">
                   
                    <div class="CAMP">
                        <div class="TITULOCAMP"> <%# Eval("titulo") %></div>

                        <img src="<%# Eval("imagen") %>" width="100%" height="auto" />
                       
                        <a href="#" onclick="ShowModal('<%# Eval("id") %>', 'School');return false;" ><div class="buttonmoreinfo"> MORE INFO </div></a>
                      
                    </div>
                      

                </div>

                
             </ItemTemplate>
                        </asp:Repeater>



        
            </div>

       
        </div>
       
    </section>
</asp:Content>
