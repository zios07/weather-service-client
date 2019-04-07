package org.weather.client;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;
import javax.xml.rpc.Stub;

public class IServiceProxy implements IService {
	private String _endpoint = null;
	private org.weather.client.IService iService = null;

	public IServiceProxy() {
		_initIServiceProxy();
	}

	public IServiceProxy(String endpoint) {
		_endpoint = endpoint;
		_initIServiceProxy();
	}

	private void _initIServiceProxy() {
		try {
			iService = (new org.weather.client.ServiceLocator()).getBasicHttpBinding_IService();
			if (iService != null) {
				if (_endpoint != null)
					((Stub) iService)._setProperty("service.endpoint.address", _endpoint);
				else
					_endpoint = (String) ((Stub) iService)._getProperty("service.endpoint.address");
			}

		} catch (ServiceException serviceException) {
		}
	}

	public String getEndpoint() {
		return _endpoint;
	}

	public void setEndpoint(String endpoint) {
		_endpoint = endpoint;
		if (iService != null)
			((Stub) iService)._setProperty("service.endpoint.address", _endpoint);

	}

	public org.weather.client.IService getIService() {
		if (iService == null)
			_initIServiceProxy();
		return iService;
	}

	public String getWeather(String city_name, String state_name) throws RemoteException {
		if (iService == null)
			_initIServiceProxy();
		return iService.getWeather(city_name, state_name);
	}

	public String getWeather_hourly(String city_name, String state_name, Boolean hourly) throws RemoteException {
		if (iService == null)
			_initIServiceProxy();
		return iService.getWeather_hourly(city_name, state_name, hourly);
	}

	public String getWeather_tenDays(String city_name, String state_name, Boolean tenday) throws RemoteException {
		if (iService == null)
			_initIServiceProxy();
		return iService.getWeather_tenDays(city_name, state_name, tenday);
	}

}