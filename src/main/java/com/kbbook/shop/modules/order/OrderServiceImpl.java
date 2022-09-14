package com.kbbook.shop.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao dao;
	
	@Override
	public List<Order> selectList() throws Exception{
		return dao.selectList();
	}
}
