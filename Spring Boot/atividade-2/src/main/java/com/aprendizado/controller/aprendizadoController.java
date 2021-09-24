package com.aprendizado.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/aprendizado")
public class aprendizadoController {
	
	@GetMapping
	public String MostrarObj() {
		
		return "Espero aprender essa semana um pouco mais sobre Spring Boot e MySQL.";
	}

}
