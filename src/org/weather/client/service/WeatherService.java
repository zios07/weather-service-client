package org.weather.client.service;

import java.rmi.RemoteException;

import org.weather.client.IService;
import org.weather.client.IServiceProxy;

public class WeatherService {

	private IService proxy = new IServiceProxy();

	public String callWeatherService(String state_names_for_weather, String city_name_weather, Integer checkType)
			throws RemoteException {
		if (checkType == 0) {
			return proxy.getWeather(city_name_weather, state_names_for_weather);
		} else if (checkType == 1) {
			return proxy.getWeather_hourly(city_name_weather, state_names_for_weather, true);
		} else {
			return proxy.getWeather_tenDays(city_name_weather, state_names_for_weather, true);
		}
	}

}
