package com.kbbook.shop.modules.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.codeGroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
}