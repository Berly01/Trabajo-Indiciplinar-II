package com.climate_change.model;
import java.util.List;

public class Country {
	
	String name;
	List<String> cityNames;
	int numOfCities;
	
	public Country(final String name, final List<String> cityNames) {
		this.name = name;
		this.cityNames = cityNames;
		this.numOfCities = cityNames.size();
	}
	
	public List<String> getCities() {	
		return cityNames;
	}
	
	public int getNumOfCities() {
		return numOfCities;
	}
	
	public String getName() {
		return name;
	}
}
