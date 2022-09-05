package com.kbbook.shop.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.code.CodeMapper";
	
//	public List<Code> selectList(CodeVo vo){ 
//	return sqlSession.selectList(namespace + ".selectList", vo); 
//}
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
//		List<Code> list = sqlSession.selectList("com.kbbook.shop.modules.code.CodeMapper.selectList", vo);
//		return list;
		}
}
