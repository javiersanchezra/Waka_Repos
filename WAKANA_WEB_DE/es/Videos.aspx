<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="WAKANA_WEB_DE.es.Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .cmn-t-underline {
            position: relative;
            color: #fff;
            margin-top: 0rem;
            font-size: 40px;
            margin-bottom: 3rem;
            font-family: 'Josefin Sans';
            text-align: center;
        }

        .cmn-t-underlinecamp {
            position: relative;
            color: #fff;
            margin-top: 0rem;
            font-size: 45px;
            margin-bottom: 3rem;
            font-family: 'Josefin Sans';
            text-align: left;
        }

            .cmn-t-underlinecamp:after {
                content: "";
                position: absolute;
                width: 20%;
                height: 1px;
                bottom: 0;
                left: -2%;
                border-bottom: 1px solid black;
            }

        .cmn-t-underline:after {
            content: "";
            position: absolute;
            width: 50%;
            height: 1px;
            bottom: 0;
            left: 25%;
            border-bottom: 1px solid white;
        }

        .containervideo {
            position: relative;
            width: 100%;
            height: 0;
            padding-bottom: 56.25%;
        }

        .video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
    </style>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/backexperience2.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 primercol"><a class="lobstertitle">Videos</a></div>
            </div>
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1 ">
                    <div class="containervideo">
                        <iframe src="//www.youtube.com/embed/6y8AmL9GsT4"
                            frameborder="0" allowfullscreen class="video"></iframe>
                    </div>


                </div>

            </div>

            </br> 
            
              <div class="row">
                  <div class="col-xs-10 col-xs-offset-1 ">
                      <div class="containervideo">
                          <iframe src="//www.youtube.com/embed/s_FsyvNdbpI"
                              frameborder="0" allowfullscreen class="video"></iframe>
                      </div>


                  </div>

              </div>

            </br> 
            
            
            
              <div class="row">
                  <div class="col-xs-10 col-xs-offset-1 ">
                      <div class="containervideo">
                          <iframe src="//www.youtube.com/embed/7tKtCGFPlMM"
                              frameborder="0" allowfullscreen class="video"></iframe>
                      </div>


                  </div>

              </div>

            </br> 
            
            
            
            
            
            
        </div>
    </section>
</asp:Content>
