package com.kbbook.shop.modules.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/home", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * Date date = new Date(); DateFormat dateFormat =
	 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	 * 
	 * String formattedDate = dateFormat.format(date);
	 * 
	 * model.addAttribute("serverTime", formattedDate );
	 * 
	 * return "home"; }
	 * 
	 * @RequestMapping(value = "/codeGroupList", method = RequestMethod.GET) public
	 * String codeGroupList(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * return "codeGroupList"; }
	 * 
	 * @RequestMapping(value = "/codeGroupRegForm", method = RequestMethod.GET)
	 * public String codeGroupRegForm(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * return "codeGroupRegForm"; }
	 */
	
	@RequestMapping(value="/")
	public String main() throws Exception {
		
		return "infra/main/user/main";
	}
	@RequestMapping(value="/loginForm")
	public String LoginForm() throws Exception {
		
		return "infra/main/user/loginForm";
	}
	
}
