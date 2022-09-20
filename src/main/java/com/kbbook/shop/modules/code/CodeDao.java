package com.kbbook.shop.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;

@Repository
public class CodeDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.code.CodeMapper";
	
//	public List<Code> selectList(CodeVo vo){ 
//	return sqlSession.selectList(namespace + ".selectList", vo); 
//}
	
	public List<Code> selectGroup(){
		return sqlSession.selectList(namespace + ".selectGroup", "");
	}
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
//		List<Code> list = sqlSession.selectList("com.kbbook.shop.modules.code.CodeMapper.selectList", vo);
//		return list;
		}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Code selectSeq(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Code dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(CodeVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Code> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
}
