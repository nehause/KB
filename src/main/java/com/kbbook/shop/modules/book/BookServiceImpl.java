package com.kbbook.shop.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	BookDao dao;
	
	@Override
	public List<Book> selectList() throws Exception{
		return dao.selectList();
	}
}
