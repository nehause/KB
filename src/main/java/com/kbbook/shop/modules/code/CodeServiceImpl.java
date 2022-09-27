package com.kbbook.shop.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectGroup() throws Exception {
		return dao.selectGroup();
	}
	
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
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String CGSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCCG_CGSeq().equals(CGSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCSeq().equals((Integer.toString(code)))) {
				rt = codeRow.getCNameKor();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
}
