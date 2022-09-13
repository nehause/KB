package com.kbbook.shop.modules.codeGroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	public int insert(CodeGroup dto) throws Exception;
	public CodeGroup selectSeq(CodeGroupVo vo) throws Exception;
	public int update(CodeGroup dto) throws Exception;
	public int uelete(CodeGroup dto) throws Exception;
	public int delete(CodeGroupVo vo) throws Exception;
	
	public List<CodeGroup> selectListWithoutPaging() throws Exception;
}
