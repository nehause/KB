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
	
//	uploaded
	public int insertUploaded(Book dto) { 
		return sqlSession.insert(namespace + ".insertUploaded", dto); 
	}
	public int ueleteUploaded(Book dto) { 
		return sqlSession.insert(namespace + ".ueleteUploaded", dto); 
	}
	public int deleteUploaded(Book dto) { 
		return sqlSession.delete(namespace + ".deleteUploaded", dto); 
	}
	
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
	
	public List<Book> userSelectList(BookVo vo) {
		return sqlSession.selectList(namespace + ".userSelectList", vo);
	}
	
	public int userSelectOneCount(BookVo vo) {
		return sqlSession.selectOne(namespace + ".userSelectOneCount", vo);
	}
	public Book bookSelectSeq(BookVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".bookSelectSeq", vo);
	}
	public List<Book> bookComment(BookVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".bookComment", vo);
	}
	public Book commentAVG(BookVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".commentAVG", vo);
	}
	public int bookCommentCount(BookVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".bookCommentCount", vo);
	}
	public List<Book> bookWriter(BookVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".bookWriter", vo);
	}
	
	public int commentInsert(Book dto) throws Exception{
		return sqlSession.insert(namespace + ".commentInsert", dto);
	}
	public int commentDelete(BookVo vo) throws Exception{
		return sqlSession.delete(namespace + ".commentDelete", vo);
	}
	public int commentCheck(Book dto) throws Exception{
		return sqlSession.selectOne(namespace + ".commentCheck", dto);
	}
	public int favoriteCheck(BookVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".favoriteCheck", vo);
	}
	
	public int favoriteInsert(Book dto) throws Exception{
		return sqlSession.insert(namespace + ".favoriteInsert", dto);
	}
	public int favoriteDelete(BookVo vo) throws Exception{
		return sqlSession.delete(namespace + ".favoriteDelete", vo);
	}

}
