package com.walkindreamz.elitecare;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class ElitecareApplication {
	
	public static void main(String[] args) {
		try {
			SpringApplication.run(ElitecareApplication.class, args);
	    } catch (Throwable e) {
	        if(e.getClass().getName().contains("SilentExitException")) {
	            System.out.println("Spring is restarting the main thread - See spring-boot-devtools");
	        } else {
	        	System.out.println("Application crashed!");
	        }
	    }
	}

}
