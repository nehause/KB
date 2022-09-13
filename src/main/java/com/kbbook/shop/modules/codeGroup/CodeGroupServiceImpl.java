package com.kbbook.shop.modules.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
//		
//		return dao.selectList(vo);	
//	}
//	이 줄은 축약되었다.
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		
		List<CodeGroup> list = dao.selectList(vo);	
		return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
		
	}
	
	@Override
	public CodeGroup selectSeq(CodeGroupVo vo) throws Exception {
		
		CodeGroup result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
		
	}
	@Override
	public int update(CodeGroup dto) throws Exception{
		return dao.update(dto);
	}
	@Override
	public int uelete(CodeGroup dto) throws Exception{
		return dao.uelete(dto);
	}
	@Override
	public int delete(CodeGroupVo vo) throws Exception{
		return dao.delete(vo);
	}
	@Override
	public List<CodeGroup> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
}
