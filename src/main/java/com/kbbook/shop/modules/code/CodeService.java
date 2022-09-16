package com.kbbook.shop.modules.code;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface CodeService {
	public List<Code> selectGroup() throws Exception;
	public List<Code> selectList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectSeq(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	public int uelete(Code dto) throws Exception;
	public int delete(CodeVo vo) throws Exception;
	
	public List<Code> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
}
