package com.kbbook.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Member dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result );
		
		return result;
	}
	
	@Override
	public Member selectSeq(MemberVo vo) throws Exception{
		Member result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Member dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Member dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Member> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int selectOneIdCheck(Member dto) throws Exception{
		return dao.selectOneIdCheck(dto);
	}
}	
