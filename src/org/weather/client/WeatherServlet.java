package org.weather.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.weather.client.service.WeatherService;

public class WeatherServlet extends HttpServlet {

	private static final long serialVersionUID = 4231392810574716522L;

	private WeatherService weatherService = new WeatherService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getServletContext().getRequestDispatcher("/WEB-INF/weather/weather.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String state_names_for_weather = req.getParameter("state_names_for_weather");
		String city_name_weather = req.getParameter("city_name_weather");
		Integer checkType = 0;
		if (req.getParameter("check_type") != null) {
			checkType = Integer.parseInt(req.getParameter("check_type"));
		}
		String result = weatherService.callWeatherService(state_names_for_weather, city_name_weather, checkType);
		req.setAttribute("result", result);
		req.getServletContext().getRequestDispatcher("/WEB-INF/weather/weather.jsp").forward(req, resp);
	}

}
