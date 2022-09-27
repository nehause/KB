package com.kbbook.shop.modules.member;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface MemberService {
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public int insert(Member dto) throws Exception;
	public Member selectSeq(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	public List<Member> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;
	public int selectOneUserNameCheck(Member dto) throws Exception;
} 
