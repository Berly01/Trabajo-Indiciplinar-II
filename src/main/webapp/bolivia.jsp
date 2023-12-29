<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.climate_change.model.Country"%>
<%@page import="com.climate_change.repository.TemperatureDataFetcher"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>

<%     
List<String> cities = new ArrayList<>();
cities.add("Cochabamba");
cities.add("Sucre");
cities.add("Oruro");
cities.add("Tarija");
Country country = new Country("Bolivia", cities);	  
LocalDate fechaActual = LocalDate.now();
DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
String fechaFormateada = fechaActual.format(formato);
double currentTemperature = TemperatureDataFetcher.getGlobalTemperature(country, fechaFormateada);
%>


<!DOCTYPE html>
<html lang="es">
<head>
    <title>Bolivia</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="assets/fonts/sb-bistro/sb-bistro.css" rel="stylesheet" type="text/css">
    <link href="assets/fonts/font-awesome/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/bootstrap/bootstrap.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/o2system-ui/o2system-ui.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/owl-carousel/owl-carousel.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/cloudzoom/cloudzoom.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/thumbelina/thumbelina.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/packages/bootstrap-touchspin/bootstrap-touchspin.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/css/theme.css">

</head>
<body>
    <div class="page-header">
    </div>
    <div id="page-content" class="page-content">
        <div class="banner">
            <div class="jumbotron jumbotron-video text-center bg-dark mb-0 rounded-0">
                <video width="100%" preload="auto" loop autoplay muted>
                    <source src='assets/media/bolivia.mp4' type='video/mp4'/>
                </video>
                <div class="container">
                    <h1 class="pt-5">
                        Bolivia<br>
                    </h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card border-0 text-center">
                                <div class="card-icon">
                                    <div class="card-icon-i">
                                        <i class="fa fa-question"></i>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Glaciares y Agricultura y seguridad alimentaria
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card border-0 text-center">
                                <div class="card-icon">
                                    <div class="card-icon-i">
                                        <i class="fa fa-question"></i>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Agricultura y seguridad alimentaria<br><br><br><br><br>
                                    </h4>                          
                                    <a href="https://youtu.be/_5yiC6wRSdM" target="_blank"><h5 class="card-body">El cambio clim�tico amenaza al lago Titicaca</h5></a>                     
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card border-0 text-center">
                                <div class="card-icon">
                                    <div class="card-icon-i">
                                        <i class="fa fa-question"></i>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        Glaciares y recursos h�drico
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section id="why">
            <h2 class="title">�C�mo afecta el cambio clim�tico a Bolivia?</h2>
            <div class="container">
                <div class="row">

                    <div class="col-md-4">
                        <div class="card border-0 text-center gray-bg">
                            <div class="card-icon">
                                <div class="card-icon-i text-success">
                                   <i class="fa fa-question"></i>
                                </div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    Glaciares y Agricultura y seguridad alimentaria
                                </h4>
                                <p class="card-text">
                                    Bolivia tiene una gran cantidad de glaciares en los Andes, los cuales est�n disminuyendo debido al calentamiento global. Esto afecta la disponibilidad de agua, ya que muchos de los glaciares son fuentes importantes de agua dulce para el consumo humano, la agricultura y la generaci�n de energ�a.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card border-0 text-center gray-bg">
                            <div class="card-icon">
                                <div class="card-icon-i text-success">
                                   <i class="fa fa-question"></i>
                                </div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    Agricultura y seguridad alimentaria
                                </h4>
                                <p class="card-text">
                                    Las variaciones en los patrones de lluvia, la sequ�a y el aumento de las temperaturas pueden impactar la producci�n agr�cola. Esto afecta la seguridad alimentaria de las comunidades que dependen de la agricultura para subsistir.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card border-0 text-center gray-bg">
                            <div class="card-icon">
                                <div class="card-icon-i text-success">
                                   <i class="fa fa-question"></i>
                                </div>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    Eventos clim�ticos extremos
                                </h4>
                                <p class="card-text">
                                    Bolivia ha experimentado eventos clim�ticos extremos, como inundaciones y sequ�as m�s frecuentes e intensas. Estos fen�menos pueden causar da�os en infraestructuras, p�rdidas econ�micas y afectar la vida de las comunidades.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mt-5 text-center">
                        <a href="index.jsp" class="btn btn-primary btn-lg">Volver</a>
                    </div>
                </div>
            </div>
        </section>

        <section>
        	<div class="final">
        		<br><br><br><h4 class="card-title">Temperatura en <%=fechaFormateada%> en <%=country.getName()%> es: <%=String.format("%.2f", currentTemperature)%> �C</h4>
        	</div>
        </section>
    </div>
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/jquery-migrate.js"></script>
    <script type="text/javascript" src="assets/packages/bootstrap/libraries/popper.js"></script>
    <script type="text/javascript" src="assets/packages/bootstrap/bootstrap.js"></script>
    <script type="text/javascript" src="assets/packages/o2system-ui/o2system-ui.js"></script>
    <script type="text/javascript" src="assets/packages/owl-carousel/owl-carousel.js"></script>
    <script type="text/javascript" src="assets/packages/cloudzoom/cloudzoom.js"></script>
    <script type="text/javascript" src="assets/packages/thumbelina/thumbelina.js"></script>
    <script type="text/javascript" src="assets/packages/bootstrap-touchspin/bootstrap-touchspin.js"></script>
    <script type="text/javascript" src="assets/js/theme.js"></script>
</body>
</html>
