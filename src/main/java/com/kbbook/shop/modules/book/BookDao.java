package com.kbbook.shop.modules.book;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.book.BookMapper";
	
	public List<Book> selectList(){
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
}
