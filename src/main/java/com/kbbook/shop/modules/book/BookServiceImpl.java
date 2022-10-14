package com.kbbook.shop.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	BookDao dao;
	
	@Override
	public List<Book> selectList(BookVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Book dto) throws Exception {
		
		int result = dao.insert(dto);
		
// for문 작가 갯수 확인
//		작가 등록
		
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Book selectSeq(BookVo vo) throws Exception {
		Book result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Book dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Book dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(BookVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Book> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Book> userSelectList(BookVo vo) throws Exception{
		return dao.userSelectList(vo);
	}
	
	@Override
	public int userSelectOneCount(BookVo vo) throws Exception{
		return dao.userSelectOneCount(vo);
	}
	@Override
	public Book bookSelectSeq(BookVo vo) throws Exception{
		return dao.bookSelectSeq(vo);
	}
	@Override
	public List<Book> bookComment(BookVo vo) throws Exception{
		return dao.bookComment(vo);
	}
	@Override
	public Book commentAVG(BookVo vo) throws Exception{
		return dao.commentAVG(vo);
	}
	@Override
	public int bookCommentCount(BookVo vo) throws Exception{
		return dao.bookCommentCount(vo);
	}
	@Override
	public List<Book> bookWriter(BookVo vo) throws Exception{
		return dao.bookWriter(vo);
	}
	
	public int commentInsert(Book dto) throws Exception{
		return dao.commentInsert(dto);
		
	}
	public int commentDelete(BookVo vo) throws Exception{
		return dao.commentDelete(vo);
	}
	public int commentCheck(Book dto) throws Exception{
		return dao.commentCheck(dto);
	}
}
