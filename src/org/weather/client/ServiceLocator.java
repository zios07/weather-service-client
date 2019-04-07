/**
 * ServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.weather.client;

import javax.xml.rpc.ServiceException;

public class ServiceLocator extends org.apache.axis.client.Service implements org.weather.client.Service {

	public ServiceLocator() {
	}

	public ServiceLocator(org.apache.axis.EngineConfiguration config) {
		super(config);
	}

	public ServiceLocator(String wsdlLoc, javax.xml.namespace.QName sName)
			throws ServiceException {
		super(wsdlLoc, sName);
	}

	// Use to get a proxy class for BasicHttpBinding_IService
	private String BasicHttpBinding_IService_address = "http://vhost3.cs.rit.edu/weather/Service.svc";

	public String getBasicHttpBinding_IServiceAddress() {
		return BasicHttpBinding_IService_address;
	}

	// The WSDD service name defaults to the port name.
	private String BasicHttpBinding_IServiceWSDDServiceName = "BasicHttpBinding_IService";

	public String getBasicHttpBinding_IServiceWSDDServiceName() {
		return BasicHttpBinding_IServiceWSDDServiceName;
	}

	public void setBasicHttpBinding_IServiceWSDDServiceName(String name) {
		BasicHttpBinding_IServiceWSDDServiceName = name;
	}

	public org.weather.client.IService getBasicHttpBinding_IService() throws ServiceException {
		java.net.URL endpoint;
		try {
			endpoint = new java.net.URL(BasicHttpBinding_IService_address);
		} catch (java.net.MalformedURLException e) {
			throw new ServiceException(e);
		}
		return getBasicHttpBinding_IService(endpoint);
	}

	public org.weather.client.IService getBasicHttpBinding_IService(java.net.URL portAddress)
			throws ServiceException {
		try {
			org.weather.client.BasicHttpBinding_IServiceStub _stub = new org.weather.client.BasicHttpBinding_IServiceStub(portAddress,
					this);
			_stub.setPortName(getBasicHttpBinding_IServiceWSDDServiceName());
			return _stub;
		} catch (org.apache.axis.AxisFault e) {
			return null;
		}
	}

	public void setBasicHttpBinding_IServiceEndpointAddress(String address) {
		BasicHttpBinding_IService_address = address;
	}

	/**
	 * For the given interface, get the stub implementation. If this service has no
	 * port for the given interface, then ServiceException is thrown.
	 */
	public java.rmi.Remote getPort(Class serviceEndpointInterface) throws ServiceException {
		try {
			if (org.weather.client.IService.class.isAssignableFrom(serviceEndpointInterface)) {
				org.weather.client.BasicHttpBinding_IServiceStub _stub = new org.weather.client.BasicHttpBinding_IServiceStub(
						new java.net.URL(BasicHttpBinding_IService_address), this);
				_stub.setPortName(getBasicHttpBinding_IServiceWSDDServiceName());
				return _stub;
			}
		} catch (Throwable t) {
			throw new ServiceException(t);
		}
		throw new ServiceException("There is no stub implementation for the interface:  "
				+ (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
	}

	/**
	 * For the given interface, get the stub implementation. If this service has no
	 * port for the given interface, then ServiceException is thrown.
	 */
	public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface)
			throws ServiceException {
		if (portName == null) {
			return getPort(serviceEndpointInterface);
		}
		String inputPortName = portName.getLocalPart();
		if ("BasicHttpBinding_IService".equals(inputPortName)) {
			return getBasicHttpBinding_IService();
		} else {
			java.rmi.Remote _stub = getPort(serviceEndpointInterface);
			((org.apache.axis.client.Stub) _stub).setPortName(portName);
			return _stub;
		}
	}

	public javax.xml.namespace.QName getServiceName() {
		return new javax.xml.namespace.QName("http://tempuri.org/", "Service");
	}

	private java.util.HashSet ports = null;

	public java.util.Iterator getPorts() {
		if (ports == null) {
			ports = new java.util.HashSet();
			ports.add(new javax.xml.namespace.QName("http://tempuri.org/", "BasicHttpBinding_IService"));
		}
		return ports.iterator();
	}

	/**
	 * Set the endpoint address for the specified port name.
	 */
	public void setEndpointAddress(String portName, String address)
			throws ServiceException {

		if ("BasicHttpBinding_IService".equals(portName)) {
			setBasicHttpBinding_IServiceEndpointAddress(address);
		} else { // Unknown Port Name
			throw new ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
		}
	}

	/**
	 * Set the endpoint address for the specified port name.
	 */
	public void setEndpointAddress(javax.xml.namespace.QName portName, String address)
			throws ServiceException {
		setEndpointAddress(portName.getLocalPart(), address);
	}

}
