package com.kbbook.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
