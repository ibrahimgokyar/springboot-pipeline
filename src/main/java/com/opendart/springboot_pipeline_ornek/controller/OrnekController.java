package com.opendart.springboot_pipeline_ornek.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrnekController {
	
	
	@GetMapping("mesaj")
	public ResponseEntity<String> getMessage() {
		return ResponseEntity.ok("Merhaba Kraft");
		
	}

}
