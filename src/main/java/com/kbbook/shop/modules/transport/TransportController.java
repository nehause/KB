package com.kbbook.shop.modules.transport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/transport/")
public class TransportController {
	
	@Autowired
	TransportServiceImpl service;
	
	@RequestMapping(value= "/transportList/")
	public String TransportList() throws Exception {
		
		return "infra/transport/dmin/transportList";
	}
}
