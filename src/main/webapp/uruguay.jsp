<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.climate_change.model.Country"%>
<%@page import="com.climate_change.repository.TemperatureDataFetcher"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>

<%     
List<String> cities = new ArrayList<>();
cities.add("Caracas");
cities.add("Maracaibo");
cities.add("Valencia");
cities.add("Barquisimeto");
cities.add("Maracay");
Country country = new Country("Uruguay", cities);	  
LocalDate fechaActual = LocalDate.now();
DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");
String fechaFormateada = fechaActual.format(formato);
double currentTemperature = TemperatureDataFetcher.getGlobalTemperature(country, fechaFormateada);
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Uruguay</title>
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
                    <source src='assets/media/uruguay.mp4' type='video/mp4'/>
                </video>
                <div class="container">
                    <h1 class="pt-5">
                        Uruguay<br>
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
                                        Variabilidad clim�tica
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
                                        Inestabilidad en la producci�n agr�cola<br><br><br>
                                    </h4>                          
                                    <a href="https://youtu.be/yv92V2FBJ3k" target="_blank"><h5 class="card-body">Escasez de agua potable en Uruguay: El origen de la crisis h�drica en el pa�s</h5></a>                     
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
                                        Erosi�n costera
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section id="why">
            <h2 class="title">�C�mo afecta el cambio clim�tico a Uruguay?</h2>
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
                                    Variabilidad clim�tica
                                </h4>
                                <p class="card-text">
                                    Uruguay experimenta cambios en los patrones de lluvia, temperaturas extremas y fen�menos clim�ticos m�s intensos y frecuentes, como inundaciones o sequ�as. Esto afecta la agricultura, la ganader�a y la disponibilidad de agua.
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
                                    Recursos h�dricos
                                </h4>
                                <p class="card-text">
                                    La disponibilidad de agua es crucial para la agricultura, la industria y el consumo humano. La disminuci�n de las precipitaciones y la sobreexplotaci�n de los recursos h�dricos debido al cambio clim�tico pueden llevar a escasez de agua y problemas de calidad.
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
                                    Erosi�n costera
                                </h4>
                                <p class="card-text">
                                    Se espera un aumento en la frecuencia e intensidad de fen�menos clim�ticos extremos, como tormentas tropicales y huracanes, que pueden causar da�os significativos a la infraestructura y a la poblaci�n.
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mt-5 text-center">
                        <a href="index.jsp" class="btn btn-primary btn-lg">Volver</a>
                    </div>
                </div>
            </div>
            
        <section>
        	<div class="final">
        		<br><br><br><h4 class="card-title">Temperatura en <%=fechaFormateada%> en <%=country.getName()%> es: <%=String.format("%.2f", currentTemperature)%> �C</h4>
        	</div>
        </section>

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
