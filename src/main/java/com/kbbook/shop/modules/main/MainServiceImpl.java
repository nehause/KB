package com.kbbook.shop.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{

		@Autowired
		MainDao dao;
		
		@Override
		public List<Main> selectList() throws Exception{
			return dao.selectList();
		}
		
		@Override
		public List<Main> mainList() throws Exception{
			return dao.mainList();
		}
		
		@Override
		public List<Main> bestList() throws Exception{
			return dao.bestList();
		}
		
		@Override
		public List<Main> newList() throws Exception{
			return dao.newList();
		}
}
