package com.kbbook.shop.modules.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book/")
public class BookController {
	@Autowired
	BookServiceImpl service;
	
	@RequestMapping(value="bookList")
	public String BookList() throws Exception{
		return "infra/book/dmin/bookList";
	}
	
	@RequestMapping(value="bookIndex")
	public String BookIndex() throws Exception {
		
		return "infra/book/user/bookIndex";
	}
	
	@RequestMapping(value="bookView")
	public String BookView() throws Exception {
		
		return "infra/book/user/bookView";
	}
	
	
}
