package com.codingdojo.paulina.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.paulina.models.SurveyModels;


import jakarta.servlet.http.HttpSession;

@Controller
public class SurveyControllers {
	
	private String[] getLanguage() {
		return new String[] {"Java", "Phyton"};
	}
	private String[] getLocation() {
		return new String[] {"Seattle", "San José", "Dallas"};
	}

	@GetMapping("/")
	public String index(HttpSession session) {
        session.setAttribute("languages", getLanguage());
        session.setAttribute("locations", getLocation());
		return "index.jsp";
	}
	
	@GetMapping("/result")
	public String result(HttpSession session) {
		return "result.jsp";
	}
	
	@PostMapping("/login")
	public String processLogin(@RequestParam(value="nombre") String nombre,
								@RequestParam(value="ubicacion") String ubicacion,
								@RequestParam(value="lenguaje") String lenguaje,
								@RequestParam(value="comment") String comment,
								RedirectAttributes redirectAttribute,
								HttpSession session) {

	    SurveyModels surveyModels = new SurveyModels();
	    SurveyModels.Survey survey = surveyModels.new Survey(nombre, ubicacion, lenguaje, comment);
	    session.setAttribute("survey", survey); // Guardar la encuesta en la sesión
	    return "redirect:/result";
	}
	
	@GetMapping("/goback")
	public String processLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
