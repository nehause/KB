package com.kbbook.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;
import com.kbbook.shop.common.util.UtilSecurity;

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
		
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
//    	dto.setIfmmName(dto.getIfmmLastName() + dto.getIfmmFirstName());
//    	dto.setIfmmPwdModDate(UtilDateTime.nowDate());
		
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
	public int userUpdate(Member dto) throws Exception{
		return dao.userUpdate(dto);
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
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception{
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.selectOneLogin(dto);
	}
	
	@Override
	public int selectOneIdCheck(Member dto) throws Exception{
		return dao.selectOneIdCheck(dto);
	}
	
	@Override
	public Member findIdPhoneCheck(Member dto) throws Exception{
		return dao.findIdPhoneCheck(dto);
	}
	
	@Override
	public Member findIdEmailCheck(Member dto) throws Exception{
		return dao.findIdEmailCheck(dto);
	}
	
	@Override
	public int selectOneUserNameCheck(Member dto) throws Exception{
		return dao.selectOneUserNameCheck(dto);
	}
	@Override
	public int selectOnePasswordCheck(Member dto) throws Exception{
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.selectOnePasswordCheck(dto);
	}
	@Override
	public int passwordUpdate(Member dto) throws Exception{
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.passwordUpdate(dto);
	}
	
	@Override
	public List<Member> memberOrderList(MemberVo vo) throws Exception{
		return dao.memberOrderList(vo);
	}
	@Override
	public int selectOrderCount(MemberVo vo) throws Exception{
		return dao.selectOrderCount(vo);
	}
	
	@Override
	public List<Member> favorite(Member dto) throws Exception{
		return dao.favorite(dto);
	}
	
	//kakao
	@Override
	public Member snsLoginCheck(Member dto) throws Exception{
		return dao.snsLoginCheck(dto);
	}
	@Override
	public int kakaoInst(Member dto) throws Exception{
		return dao.kakaoInst(dto);
	}
}	

