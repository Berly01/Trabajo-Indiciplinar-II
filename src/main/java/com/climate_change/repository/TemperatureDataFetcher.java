package com.climate_change.repository;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import com.climate_change.model.Country;

public class TemperatureDataFetcher {
	
	TemperatureDataFetcher(){}
	
	static final String KEY_API = "0a5466782b7041b884c163319232812";

	public static double getTemperatureForCity(final String cityName) throws IOException {
				
        LocalDate fechaActual = LocalDate.now();
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");      
        String fechaFormateada = fechaActual.format(formato);
		        
        return getTemperatureForCity(cityName, fechaFormateada);
	}
		
	public static double getGlobalTemperature(final Country country, final String date) throws IOException {
		
        List<String> cities = country.getCities(); 

        double sumTemperature = 0.0;
        int numOfLocations = country.getNumOfCities();
      
        for (String city : cities) {
            sumTemperature += TemperatureDataFetcher.getTemperatureForCity(city, date);
        }
        
        return sumTemperature / numOfLocations;
	}
	
	public static double getGlobalTemperature(final Country country) throws IOException {
		
        LocalDate fechaActual = LocalDate.now();
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("yyyy-MM-dd");      
        String fechaFormateada = fechaActual.format(formato);
		
        List<String> cities = country.getCities(); 

        double sumTemperature = 0.0;
        int numOfLocations = country.getNumOfCities();
      
        for (String city : cities) {
            sumTemperature += TemperatureDataFetcher.getTemperatureForCity(city, fechaFormateada);
        }
            
        return sumTemperature / numOfLocations;
	}
		
	public static double getTemperatureForCity(String city, String startDate) throws IOException {
		
		String urlString = "http://api.weatherapi.com/v1/history.json?key=" + KEY_API + "&q=" + city + "&dt=" + startDate;
        URL url = new URL(urlString);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");

        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        StringBuilder response = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            response.append(line);
        }

        reader.close();

        String jsonResponse = response.toString();
        
        return parseTemperature(jsonResponse);
	}
	
    private static double parseTemperature(String jsonResponse) {
        return Double.parseDouble(jsonResponse.split("\"avgtemp_c\":")[1].split(",")[0]);
    }
}
