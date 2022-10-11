package com.kbbook.shop.modules.transport;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface TransportService {
	public List<Transport> selectList(TransportVo vo) throws Exception;
	public int insert(Transport dto) throws Exception;
	public Transport selectSeq(TransportVo vo) throws Exception;
	public int update(Transport dto) throws Exception;
	public int uelete(Transport dto) throws Exception;
	public int delete(TransportVo vo) throws Exception;
	
	public List<Transport> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	public Transport memberSeq(TransportVo vo) throws Exception;
	public int loginCount(TransportVo vo) throws Exception;
	public Transport userSelect(TransportVo vo) throws Exception;
	public List<Transport> loginSeq(Transport dto) throws Exception;
}
