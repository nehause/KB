package com.kbbook.shop.modules.writer;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface WriterService {
	public List<Writer> selectList(WriterVo vo) throws Exception; 
	public int insert(Writer dto) throws Exception;
	public Writer selectSeq(WriterVo vo) throws Exception;
	public int update(Writer dto) throws Exception;
	public int uelete(Writer dto) throws Exception;
	public int delete(WriterVo vo) throws Exception;
	
	public List<Writer> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
}
