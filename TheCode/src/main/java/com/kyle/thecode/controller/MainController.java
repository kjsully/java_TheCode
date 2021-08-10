package com.kyle.thecode.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {

	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/code", method=RequestMethod.POST)
	public String login(@RequestParam(value="code") String code,
			RedirectAttributes redirectAttributes) {
		System.out.println(code);
		if (code.equals("burrito")) {
			return "code.jsp";
		}
		else
		redirectAttributes.addFlashAttribute("codeError", "incorrect code");
		return "redirect:/";
		
	}
}
