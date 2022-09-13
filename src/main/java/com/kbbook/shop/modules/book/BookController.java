package com.kbbook.shop.modules.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book/")
public class BookController {
	@Autowired
	BookServiceImpl service;
	
	@RequestMapping(value="/bookIndex")
	public String BookIndex() throws Exception {
		
		return "infra/book/user/bookIndex";
	}
	
}
