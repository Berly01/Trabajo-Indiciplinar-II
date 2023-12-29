<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.climate_change.model.Country"%>
<%@page import="com.climate_change.repository.TemperatureDataFetcher"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>

<%     
List<String> cities = new ArrayList<>();
cities.add("Quito");
cities.add("Guayaquil");
cities.add("Cuenca");
cities.add("Manta");
cities.add("Ambato");
cities.add("Portoviejo");
cities.add("Loja");
Country country = new Country("Ecuador", cities);	  
LocalDate fechaActual = LocalDate.now();
DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
String fechaFormateada = fechaActual.format(formato);
double currentTemperature = TemperatureDataFetcher.getGlobalTemperature(country, fechaFormateada);
%>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Ecuador</title>
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
                    <source src='assets/media/ecuador.mp4' type='video/mp4'/>
                </video>
                <div class="container">
                    <h1 class="pt-5">
                        Ecuador<br>
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
                                        Biodiversidad
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
                                        Recursos h�dricos<br><br><br><br><br>
                                    </h4>                          
                                    <a href="https://youtu.be/yd0xQw5h0c0" target="_blank"><h5 class="card-body">Deshielo de glaciares en Ecuador amenaza con dejar sin agua a miles de personas</h5></a>                     
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
            <h2 class="title">�C�mo afecta el cambio clim�tico a Ecuador?</h2>
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
                                    Biodiversidad
                                </h4>
                                <p class="card-text">
                                    La riqueza natural de Ecuador est� en riesgo debido al cambio clim�tico. Los ecosistemas �nicos, como los bosques nublados, la selva amaz�nica y los ecosistemas marinos, enfrentan amenazas a medida que las temperaturas aumentan y los patrones clim�ticos cambian. Esto pone en peligro especies end�micas y ecosistemas fr�giles.
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
                                    Glaciares
                                </h4>
                                <p class="card-text">
                                    Los glaciares ecuatorianos, ubicados en los Andes, est�n experimentando un retroceso significativo debido al calentamiento global. Esto afecta la disponibilidad de agua dulce para las comunidades que dependen de estos recursos para el suministro de agua.
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
                                    Agricultura
                                </h4>
                                <p class="card-text">
                                    El cambio clim�tico puede tener impactos negativos en la agricultura ecuatoriana. Variaciones en los patrones de lluvia, sequ�as e inundaciones pueden afectar la producci�n de alimentos, especialmente en cultivos importantes como el banano, el cacao y el caf�.
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
