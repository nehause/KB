package com.kbbook.shop.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainSeriveImpl implements MainService{

		@Autowired
		MainDao dao;
		
		@Override
		public List<Main> selectList() throws Exception{
			return dao.selectList();
		}
}
