package com.habilidades.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/habilidades")
public class habilidadesController {
	
	@GetMapping
	public String MostrarHabilidades() {
		
		return " Mentalidade de persistência e a habilidade de atenção aos detalhes.";
	}

}
