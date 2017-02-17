package com.renker.example.client;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
public class MvcConfig extends WebMvcConfigurerAdapter{
	@Value(value="${spring.mvc.view.prefix}")
	private String spring_mvc_view_prefix;
	
	@Value(value="${spring.mvc.view.suffix}")
	private String spring_mvc_view_suffix;
	
	@Value(value="${spring.mvc.static-path-pattern}")
	private String pathPatterns;
	
	@Value(value="${spring.resources.static-locations}")
	private String resourceLocations;
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix(spring_mvc_view_prefix);
		viewResolver.setSuffix(spring_mvc_view_suffix);
		viewResolver.setViewClass(JstlView.class);
		return viewResolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler(pathPatterns).addResourceLocations(resourceLocations);
	}
}
