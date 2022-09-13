package com.kbbook.shop.modules.myRoom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/myRoom/")
public class MyRoomController {
	@Autowired
	MyRoomServiceImpl service;
	
	@RequestMapping(value="/")
	public String MyRoom() throws Exception{
		
		return "infra/myRoom/myRoom";
	}

}
