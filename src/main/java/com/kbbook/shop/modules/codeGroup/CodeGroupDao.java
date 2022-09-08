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
	
//	public List<CodeGroup> selectList(CodeGroupVo vo){ 
//		return sqlSession.selectList(namespace + ".selectList", vo); 
//	}

	
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
//		List<CodeGroup> list = sqlSession.selectList("com.kbbook.shop.modules.codeGroup.CodeGroupMapper.selectList", vo);
//		return list;
	}
	
	public int insert(CodeGroup dto){
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public CodeGroup selectSeq(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
