package com.kbbook.shop.modules.book;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kbbook.shop.common.base.BaseVo;

public interface BookService {
	
	// uploaded
	public void uploadFiles(MultipartFile[] multipartFiles, Book dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Book dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Book dto, String tableName) throws Exception;
	
	public List<Book> selectList(BookVo vo) throws Exception; 
	public int insert(Book dto) throws Exception;
	public Book selectSeq(BookVo vo) throws Exception;
	public int update(Book dto) throws Exception;
	public int uelete(Book dto) throws Exception;
	public int delete(BookVo vo) throws Exception;
	
	
	public List<Book> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	
	public List<Book> userSelectList(BookVo vo) throws Exception;
	public int userSelectOneCount(BookVo vo) throws Exception;
	
	public List<Book> bookComment(BookVo vo) throws Exception;
	public Book bookSelectSeq(BookVo vo) throws Exception;
	public Book commentAVG(BookVo vo) throws Exception;
	public int bookCommentCount(BookVo vo) throws Exception;
	public List<Book> bookWriter(BookVo vo) throws Exception;
	
	public int commentInsert(Book dto) throws Exception;
	public int commentDelete(BookVo vo) throws Exception;
	public int commentCheck(Book dto) throws Exception;
}
