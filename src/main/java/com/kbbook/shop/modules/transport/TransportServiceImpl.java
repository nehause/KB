package com.kbbook.shop.modules.transport;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransportServiceImpl implements TransportService{
	
	@Autowired
	TransportDao dao;
	
	@Override
	public List<Transport> selectList() throws Exception{
		return dao.selectList();
	}
}
