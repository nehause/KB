package com.kbbook.shop.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;


@Repository
public class MemberDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao.result: " + result);
		
		return result;
	}
	
	public Member selectSeq(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	
	}
	
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int userUpdate(Member dto) {
		return sqlSession.update(namespace + ".userUpdate", dto);
	}
	
	public int uelete(Member dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Member> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace +".selectOneLogin", dto);
	}
	
	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
	}
	public Member findIdPhoneCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".findIdPhoneCheck", dto);
	}
	public Member findIdEmailCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".findIdEmailCheck", dto);
	}
	
	public int selectOneUserNameCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneUserNameCheck", dto);
	}
	public int selectOnePasswordCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOnePasswordCheck", dto);
	}
	
	public int passwordUpdate(Member dto) {
		return sqlSession.update(namespace + ".passwordUpdate", dto);
	}
	
	public int selectOrderCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOrderCount", vo);
	}
	public List<Member> memberOrderList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".memberOrderList", vo);
	}
	
	public List<Member> favorite(Member dto) {
		return sqlSession.selectList(namespace + ".favorite", dto);
	}
	
	//kakao
	public Member snsLoginCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);
	}
	
	public int kakaoInst(Member dto) {
		return sqlSession.insert(namespace + ".kakaoInst", dto);
	}
}
