package com.kuba.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	
	@GetMapping("/showMyLoginPage") // must match with spring security ( DemoSecurityConfig class )
	public String showMyLoginPage(){
		
//		return "plain-login";
		return "fancy-login";
	}
	
	
	
	
	
	
	
	
}
