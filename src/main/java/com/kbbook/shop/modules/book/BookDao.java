package com.kbbook.shop.modules.book;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;

@Repository
public class BookDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.book.BookMapper";
	
	public List<Book> selectList(BookVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public int insert(Book dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Book selectSeq(BookVo vo) {
		Book result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Book dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Book dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(BookVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Book> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
}
