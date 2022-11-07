package com.kbbook.shop.modules.writer;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;

@Repository
public class WriterDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.writer.WriterMapper";
	
//	uploaded
	public int insertUploaded(Writer dto) { 
		return sqlSession.insert("Base" + ".insertUploaded", dto); 
	}
	public int ueleteUploaded(Writer dto) { 
		return sqlSession.insert("Base" + ".ueleteUploaded", dto); 
	}
	public int deleteUploaded(Writer dto) { 
		return sqlSession.delete("Base" + ".deleteUploaded", dto); 
	}
	public List<Writer> writerListUploaded(WriterVo vo){ 
		return sqlSession.selectList(namespace + ".selectListUploaded", vo); 
	}
	
	public List<Writer> selectList(WriterVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public int insert(Writer dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public Writer selectSeq(WriterVo vo) {
		return sqlSession.selectOne(namespace + ".selectSeq", vo);
	}
	
	public int update(Writer dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Writer dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(WriterVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Writer> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	
	//bookWriter
	
	public List<Writer> bookWriterList(WriterVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".bookWriterList", vo);
	}
	public Writer bookWriterSeq(WriterVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".bookWriterSeq", vo);
	}
	public int bookWriterInsert(Writer dto) throws Exception{
		return sqlSession.insert(namespace + ".bookWriterInsert", dto);
	}
	public int bookWriterUpdate(Writer dto) throws Exception{
		return sqlSession.update(namespace + ".bookWriterUpdate", dto);
	}
	public int bookWriterDelete(WriterVo vo) throws Exception{
		return sqlSession.delete(namespace + ".bookWriterDelete", vo);
	}
	public int bookWriterCount(WriterVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".bookWriterCount", vo);
	}
	
	//bookWriter ajax
	public Writer bookName(WriterVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".bookName", vo);
	}
	public Writer writerName(WriterVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".writerName", vo);
	}
	

}
