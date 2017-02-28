package com.renker.example.client;

import java.util.EnumSet;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration.Dynamic;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.filter.DelegatingFilterProxy;

public class MyWebInitalizer implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		Dynamic filter = servletContext.addFilter("shiroFilter", DelegatingFilterProxy.class);
		filter.addMappingForUrlPatterns(EnumSet.of(DispatcherType.REQUEST, DispatcherType.FORWARD,DispatcherType.INCLUDE), false, "/");
	}

}
