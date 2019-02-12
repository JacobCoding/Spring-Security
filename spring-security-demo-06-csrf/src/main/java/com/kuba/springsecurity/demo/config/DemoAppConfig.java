package com.kuba.springsecurity.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration // configuration class
@EnableWebMvc // similar support to <mvc:annotation-driven>
@ComponentScan("com.kuba.springsecurity.demo") // package to scan for controllers components 
public class DemoAppConfig {

	// define a bean for a view resolver - similar to xml configuration
	@Bean 
	public ViewResolver viewResolver(){
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	
}
	
