package com.kbbook.shop.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	
//	@Override
//	public List<Code> selectList(CodeVo vo) throws Exception {
//		List<Code> list = dao.selectList(vo);
//		return list;
//	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Code selectSeq(CodeVo vo) throws Exception {
		Code result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Code dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Code> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
}
