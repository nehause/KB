package com.kbbook.shop.modules.member;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface MemberService {
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public int insert(Member dto) throws Exception;
	public Member selectSeq(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	public int userUpdate(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	public List<Member> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;
	public Member findIdPhoneCheck(Member dto) throws Exception;
	public Member findIdEmailCheck(Member dto) throws Exception;
	public int passwordUpdate(Member dto) throws Exception;
	
	public int selectOneUserNameCheck(Member dto) throws Exception;
	public int selectOnePasswordCheck(Member dto) throws Exception;
	public int selectOrderCount(MemberVo vo) throws Exception;
	public List<Member> memberOrderList(MemberVo vo) throws Exception;
	public List<Member> favorite(Member dto) throws Exception;
	
	//naver
	public Member naverLoginCheck(Member dto) throws Exception;
	public int naverInst(Member dto) throws Exception;
	
	//kakao
	public Member snsLoginCheck(Member dto) throws Exception;
	public int kakaoInst(Member dto) throws Exception;
} 
