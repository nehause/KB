package com.kbbook.shop.modules.transport;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TransportDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.transport.TransportMapper";
	
	public List<Transport> selectList(){
		return sqlSession.selectList(namespace + ".selectList", "");
	}
}