package com.kbbook.shop.modules.main;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.main.MainMapper";
	
	public List<Main> selectList(){
		return sqlSession.selectList(namespace + ".selectList", "");
	}
}
