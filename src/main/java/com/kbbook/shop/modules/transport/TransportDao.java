package com.kbbook.shop.modules.transport;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;

@Repository
public class TransportDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.transport.TransportMapper";
	
	public List<Transport> selectList(TransportVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public int insert(Transport dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao.result: "+ result);
		
		return result;
	}
	
	public Transport selectSeq(TransportVo vo) {
		Transport result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	
	}
	
	public int update(Transport dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Transport dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(TransportVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Transport> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
}
