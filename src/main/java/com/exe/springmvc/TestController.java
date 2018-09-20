package com.exe.springmvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("test.controller")
public class TestController {
	
	/*@RequestMapping(value="/test/param.action", method= RequestMethod.GET)
	public String processGetRequest() {
		
		System.out.println("GET방식 Request ok");
		
		return "paramResult";
	}
	
	
	@RequestMapping(value="/test/param.action", method= RequestMethod.POST)
	public String processPostRequest() {
		
		System.out.println("Post방식 Request ok");
		
		return "paramResult";
	}*/
	
	
	@RequestMapping(value="/test/param.action", method= {RequestMethod.POST,RequestMethod.GET})
	public String processRequest(String name, HttpServletRequest req, PersonDTO dto) {
		
		System.out.println("Request ok");
		
		System.out.println(name);
		System.out.println(req.getParameter("phone"));
		System.out.println(dto);
		System.out.println("dto.getName(): "+dto.getName());
		System.out.println("dto.getPhone(): "+dto.getPhone());
		System.out.println("dto.getEmail(): "+dto.getEmail());
		
		return "paramResult";
	}
	
	@RequestMapping(value="/test/mav.action", method= {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView mavRequest(PersonDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("paramResult");
		mav.addObject("dto", dto);
		
		return mav;
	}
	
	@RequestMapping(value="/test/redirect.action", method= {RequestMethod.POST,RequestMethod.GET})
	public String redirectRequest() {
	
		return "redirect:/hello.action";
		
	}
	
}

















