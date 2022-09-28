package com.kbbook.shop.modules.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	
	@RequestMapping(value="orderPurchase")
	public String OrderPurchase() throws Exception {
		
		return "infra/order/user/orderPurchase";
	}
	
	@RequestMapping(value="orderFin")
	public String OrderFin() throws Exception {
		
		return "infra/order/user/orderFin";
	}
}
