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
	
	public Main selectOneId(Main dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Main selectOneLogin(Main dto) {
		return sqlSession.selectOne(namespace +".selectOneLogin", dto);
	}
	
	public List<Main> mainList(){
		return sqlSession.selectList(namespace + ".mainList", "");
	}
	public List<Main> bestList(){
		return sqlSession.selectList(namespace + ".bestList", "");
	}
	public List<Main> newList(){
		return sqlSession.selectList(namespace + ".newList", "");
	}
	
}
