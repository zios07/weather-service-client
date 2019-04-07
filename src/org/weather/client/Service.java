/**
 * Service.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.weather.client;

public interface Service extends javax.xml.rpc.Service {
	public java.lang.String getBasicHttpBinding_IServiceAddress();

	public org.weather.client.IService getBasicHttpBinding_IService() throws javax.xml.rpc.ServiceException;

	public org.weather.client.IService getBasicHttpBinding_IService(java.net.URL portAddress)
			throws javax.xml.rpc.ServiceException;
}
