package com.renker.example.client;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
@SpringBootApplication
@ImportResource(locations={"classpath:spring-application.xml"})
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(new Class[]{Application.class,MyWebInitalizer.class}, args);
	}
}