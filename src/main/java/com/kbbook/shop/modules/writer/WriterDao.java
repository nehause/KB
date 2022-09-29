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
	
	public List<Writer> selectList(WriterVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public int insert(Writer dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Writer selectSeq(WriterVo vo) {
		Writer result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
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
}
