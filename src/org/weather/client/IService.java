/**
 * IService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.weather.client;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface IService extends Remote {
	public String getWeather(String city_name, String state_name) throws RemoteException;

	public String getWeather_hourly(String city_name, String state_name, Boolean hourly) throws RemoteException;

	public String getWeather_tenDays(String city_name, String state_name, Boolean tenday) throws RemoteException;
}
