package com.kbbook.shop.modules.myRoom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyRoomServiceImpl implements MyRoomService {
	
	@Autowired
	MyRoomDao dao;
	
	@Override
	public List<MyRoom> selectList() throws Exception{
		return dao.selectList();
	}

}
