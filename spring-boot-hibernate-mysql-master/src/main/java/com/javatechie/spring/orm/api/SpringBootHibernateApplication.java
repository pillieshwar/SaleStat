package com.javatechie.spring.orm.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;

@SpringBootApplication
public class SpringBootHibernateApplication {

	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	      return application.sources(SpringBootHibernateApplication.class);
	   }
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootHibernateApplication.class, args);
	}
	
}
 