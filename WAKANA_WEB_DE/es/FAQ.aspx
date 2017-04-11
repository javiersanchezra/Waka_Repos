<%@ Page Title="" Language="C#" MasterPageFile="~/es/Main.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="WAKANA_WEB_DE.es.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .quicksandtitle {
            color: white !important;
            font-size: 45px;
            font-family: 'Quicksand', cursive;
            font-weight: 100;
        }
    </style>
    <section class="section swatch-blue text-center section-text-shadow section-no-inner-shadow">

        <div class="background-media" style="background-image: url('../img/slide/backFAQ2.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: 50% 0px;" data-start="background-position:50% 0px"
            data-70-top-bottom="background-position:50% -120px">
        </div>
        <div class="background-overlay  " style="background-color: rgba(0,0,0,0.4);"></div>
        <div class="container">


            <div class="portfolio-container element-normal-top element-no-bottom">
                <div class="row">
                    <div class="col-md-12">
                        </br>
                                <center>
                                    <a class="lobstertitle" >Preguntas Frecuentes</a>
                                </center>
                    </div>
                    <div class="col-md-12">
                        <br />
                        <br />
                        <center>
                                         <a class="quicksandtitle" ><u>Instalaciones</u></a>
                                     </center>
                    </div>


                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Qué es Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Wakana Lake es un complejo de multiaventura en el medio natural, situado en pleno Parque Natural de Los Alcornocales, a orillas del pantano del Celemín.
                                    <br />
                                Wakana Lake es un lugar para compartir. Ideal para todo tipo de clientes, parejas que deseen relajarse, familias que buscan una experiencia diferente que complementen sus vacaciones o grupos de amigos o empresas que necesiten de un programa a su medida.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Se puede acceder libremente a Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Para pasar la jornada en Wakana Lake es necesario abonar un canon de acceso de 5,00 Euros y firmar un documento de descargo de responsabilidades.</p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Es apta para el baño el agua del pantano del Celemín?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Sí, totalmente apta. Hemos realizado un completo análisis de las aguas del pantano que ha demostrado que son ideales para el baño.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                ¿Qué extensión y capacidad tiene el pantano  (embalse) del Celemín?
                            </p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">El pantano del Celemín ocupa una superficie de 473 hectáreas y cuenta con una capacidad de 43 hectómetros cúbicos.</p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Es muy grande Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Wakana Lake cuenta con casi 20 hectáreas de superficie además del embalse. Dentro de las cuales podrá disfrutar de multitud de actividades.</p>
                        </div>
                    </div>
                    <%--<div class="col-md-6">
                                <div style="background-color:rgba(0,0,0,.5); ">


                               <p style=" opacity:1 !important; padding-left:15px; padding-right:15px; padding-top:15px; text-align:left; font-family:Quicksand; font-size:25px; font-weight:300; color:white; z-index:25;"> Como llego a Wakana?</p>
                                <p  style="padding-left:15px; padding-right:15px; padding-bottom:15px; text-align:left; font-family:Quicksand; font-size:15px; font-weight:200; color:white"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                  </div>
                                </div>--%>
                </div>

                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u>Actividades</u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Qué actividades se pueden realizar en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                En nuestro complejo se puede llevar a cabo las siguientes actividades, algunas de las cuales necesitan la asistencia de monitor (*):
                                <br />
                                <br />
                                · Arc Attack (tiro con arco) (*)
                                <br />
                                · Canopy Park (Parque de tirolinas y paso de puentes) (*)
                                <br />
                                · Spartan Trail 
                                <br />
                                · Paseos en kayak
                                <br />
                                · Paseos en tabla de paddle-surf
                                <br />
                                · Paseos en bicicleta
                                <br />
                                · Rutas a caballo (*)
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Cuándo se pueden realizar las actividades?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">                                                    
                                · Abril y mayo - Fines de semana (de Viernes a Domingo) / 10:00 a 19:00 horas 
                                <br />
                                · Junio, julio y agosto - Todos los días / 10:00 a 19:00 horas
                                <br />
                                · Septiembre y octubre - Fines de semana (de Viernes a Domingo) / 10:00 a 19:00 horas
                                <br />
                                <br />
                                *Nota: Si es usted un grupo de más de 18 personas, podemos concretar ciertas actividades fuera de temporada.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Existe un número mínimo /máximo de participantes en cada actividad?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Sólo en la Spartan Trail se exige un número mínimo de 18 participantes, con un máximo de participantes ilimitado (duración de la actividad: sujeta al número de participantes y su condición física). 
                                <br />
                                · Canopy Park --- mínimo: 1 / máximo: 25 (duración: 2 horas) 
                                <br />
                                · Kayaks --- mínimo: 1 / máximo: 28 + 1 monitor, cuando se solicite (duración: 1 hora)
                                <br />
                                · Paddle-surf --- mínimo: 1 / máximo: 15 + 1 monitor, cuando se solicite (duración: 1 hora)
                                <br />
                                · Arc Attack --- mínimo: 1 / máximo: 26 
                                <br />
                                · Bicicletas --- mínimo: 1 / máximo: 25 
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Existe una edad, estatura, peso mínimos o alguna recomendación que deba saber para participar en las actividades?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <u>Requisitos:</u>
                                <br />
                                · Arc Attack --- Tener una estatura mínima de 1,40 m.
                                <br />
                                · Canopy Park --- Tener una estatura mínima de 1,40 m. y un peso máximo de 120,00 kg.

                                <br />
                                <br />
                                <u>Importante:</u>
                                <br />
                                · Es obligatorio el uso de calzado cerrado para la realización de las actividades. 
                                <br />
                                · Hay que tener en cuenta que la Spartan Race tiene piscinas de barro, por lo que tenga en cuenta que la ropa que use, se va a manchar.
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u>Alojamientos</u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Me puedo alojar en Wakana Lake? ¿Cuándo?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Por supuesto. Disponemos de un total de 150 plazas en diferentes tipos de alojamiento: albergue (60 plazas), tipis (48 plazas) y yurtas (42 plazas). Nuestro calendario de apertura al público es:<br />
                                <br />
                                · Abril y mayo - Fines de semana (de Viernes a Domingo) 
                                <br />
                                · Junio, julio y agosto - Todos los días
                                <br />
                                · Septiembre y octubre - Fines de semana (de Viernes a Domingo)
                                <br />
                                <br />
                                *Nota: Si es usted un grupo de más de 18 personas, es posible la reserva de alojamiento fuera de temporada.

                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Hay restaurante en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                 “Disponemos de bar en nuestra zona chill-out junto al lago, en el que podrás tomarte las bebidas que quieras. Para aquellos clientes que van a pasar un agradable día en Wakana Lake sin pernoctación, contamos además con un servicio de barbacoas para su disfrute. En él se incluye un surtido variado de carne ibérica de la zona, la barbacoa de gas y su bombona; pudiendo disfrutar de ella en cualquier lugar al aire libre dentro de nuestras instalaciones. También disponemos de diferentes regímenes de comida para aquellos que pernocten en Wakana Lake. Tanto yurtas como tipis cuentan con desayuno incluido, pudiendo contratar a parte, si lo desea, el servicio de media pensión o pensión completa”.  
                            </p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">

                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Se puede acampar con tienda o caravana / auto-caravana en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                No, no es posible. Se puede pernoctar en los diferentes alojamientos anteriormente citados.  
                            </p>
                        </div>
                    </div>

                </div>
            </div>
           <%-- <div class="portfolio-container element-normal-top element-no-bottom">
                <div class="row">
                    <div class="col-md-12">
                        </br>
                                <center>
                                    <a class="lobstertitle" style="font-size:5vw;" >Frequently Asked Questions</a>
                                </center>
                    </div>
                    <div class="col-md-12">
                        <br />
                        <br />
                        <center>
                                         <a class="quicksandtitle" ><u>Installations</u></a>
                                     </center>
                    </div>


                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Qué es Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Wakana Lake es un complejo de multiaventura en el medio natural, situado en pleno Parque Natural de Los Alcornocales, a orillas del pantano del Celemín. 
                                    <br />
                                Wakana Lake es un lugar para compartir. Ideal para todo tipo de clientes, parejas que deseen relajarse, familias que buscan una experiencia diferente que complementen sus vacaciones o grupos de amigos o empresas que necesiten de un programa a su medida.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Se puede acceder libremente a Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Para pasar la jornada en Wakana Lake es necesario abonar un canon de acceso de 5,00 Euros y firmar un documento de descargo de responsabilidades.</p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Es apta para el baño el agua del pantano del Celemín?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Sí, totalmente apta. Hemos realizado un completo análisis de las aguas del pantano que ha demostrado que son ideales para el baño.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">
                                ¿Qué extensión y capacidad tiene el pantano  (embalse) del Celemín?
                            </p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">El pantano del Celemín ocupa una superficie de 473 hectáreas y cuenta con una capacidad de 43 hectómetros cúbicos.</p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Es muy grande Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">Wakana Lake cuenta con casi 20 hectáreas de superficie además del embalse. Dentro de las cuales podrá disfrutar de multitud de actividades.</p>
                        </div>
                    </div>
               
                </div>

                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u>Activities</u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Qué actividades se pueden realizar en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                En nuestro complejo se puede llevar a cabo las siguientes actividades, algunas de las cuales necesitan la asistencia de monitor (*):
                                <br />
                                <br />
                                · Arc Attack (tiro con arco) (*)
                                <br />
                                · Canopy Park (Parque de tirolinas y paso de puentes) (*)
                                <br />
                                · Spartan Trail 
                                <br />
                                · Paseos en kayak
                                <br />
                                · Paseos en tabla de paddle-surf
                                <br />
                                · Paseos en bicicleta
                                <br />
                                · Rutas a caballo (*)
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Cuándo se pueden realizar las actividades?:</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                *Nota: Si es usted un grupo de más de 18 personas, podemos concretar ciertas actividades fuera de temporada.<br />
                                <br />
                                · Abril y mayo - Fines de semana (de Viernes a Domingo) / 10:00 a 19:00 horas
                                <br />
                                · Junio, julio y agosto - Todos los días / 10:00 a 19:00 horas
                                <br />
                                · Septiembre y octubre - Fines de semana (de Viernes a Domingo) / 10:00 a 19:00 horas
                            </p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Existe un número mínimo /máximo de participantes en cada actividad?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Sólo en la Spartan Trail se exige un número mínimo de 18 participantes, con un máximo de participantes ilimitado (duración de la actividad: sujeta al número de participantes y su condición física). 
                                <br />
                                · Canopy Park --- mínimo: 1 / máximo: 25 (duración: 2 horas) 
                                <br />
                                · Kayaks --- mínimo: 1 / máximo: 28 + 1 monitor, cuando se solicite (duración: 1 hora)
                                <br />
                                · Paddle-surf --- mínimo: 1 / máximo: 15 + 1 monitor, cuando se solicite (duración: 1 hora)
                                <br />
                                · Arc Attack --- mínimo: 1 / máximo: 26 
                                <br />
                                · Bicicletas --- mínimo: 1 / máximo: 25 
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Existe una edad, estatura, peso mínimos o alguna recomendación que deba saber para participar en las actividades?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                <u>Requisitos:</u>
                                <br />
                                · Arc Attack --- Tener una estatura mínima de 1,40 m.
                                <br />
                                · Canopy Park --- Tener una estatura mínima de 1,40 m. y un peso máximo de 120,00 kg.

                                <br />
                                <br />
                                <u>Importante:</u>
                                <br />
                                · Es obligatorio el uso de calzado cerrado para la realización de las actividades. 
                                <br />
                                · Hay que tener en cuenta que la Spartan Race tiene piscinas de barro, por lo que tenga en cuenta que la ropa que use, se va a manchar.
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <br />
                    <br />
                    <center>
                                         <a class="quicksandtitle" ><u>Accommodation</u></a>
                                     </center>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">


                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Me puedo alojar en Wakana Lake? ¿Cuándo?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                Por supuesto. Disponemos de un total de 150 plazas en diferentes tipos de alojamiento: albergue (60 plazas), tipis (48 plazas) y yurtas (42 plazas). Nuestro calendario de apertura al público es:<br />
                                <br />
                                · Abril y mayo - Fines de semana (de Viernes a Domingo) 
                                <br />
                                · Junio, julio y agosto - Todos los días 
                                <br />
                                · Septiembre y octubre - Fines de semana (de Viernes a Domingo)
                                <br />
                                <br />
                                *Nota: Si es usted un grupo de más de 18 personas, es posible la reserva de alojamiento fuera de temporada.

                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">
                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Hay restaurante en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                “Disponemos de bar en nuestra zona chill-out junto al lago, en el que podrás tomarte las bebidas que quieras. Para aquellos clientes que van a pasar un agradable día en Wakana Lake sin pernoctación, contamos además con un servicio de barbacoas para su disfrute. En él se incluye un surtido variado de carne ibérica de la zona, la barbacoa de gas y su bombona; pudiendo disfrutar de ella en cualquier lugar al aire libre dentro de nuestras instalaciones. También disponemos de diferentes regímenes de comida para aquellos que pernocten en Wakana Lake. Tanto yurtas como tipis cuentan con desayuno incluido, pudiendo contratar a parte, si lo desea, el servicio de media pensión o pensión completa".   
                            </p>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div style="background-color: rgba(0,0,0,.5);">

                            <p style="opacity: 1 !important; padding-left: 15px; padding-right: 15px; padding-top: 15px; text-align: left; font-family: Quicksand; font-size: 25px; font-weight: 300; color: white; z-index: 25;">¿Se puede acampar con tienda o caravana / auto-caravana en Wakana Lake?</p>
                            <p style="padding-left: 15px; padding-right: 15px; padding-bottom: 15px; text-align: left; font-family: Quicksand; font-size: 15px; font-weight: 200; color: white">
                                No, no es posible. Se puede pernoctar en los diferentes alojamientos anteriormente citados.   
                            </p>
                        </div>
                    </div>

                </div>
            </div>--%>
        </div>


    </section>
</asp:Content>
