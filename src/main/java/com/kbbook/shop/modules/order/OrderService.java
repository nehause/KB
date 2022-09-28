package com.kbbook.shop.modules.order;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface OrderService {
	public List<Order> selectList(OrderVo vo) throws Exception; 
	public int insert(Order dto) throws Exception;
	public Order selectSeq(OrderVo vo) throws Exception;
	public int update(Order dto) throws Exception;
	public int uelete(Order dto) throws Exception;
	public int delete(OrderVo vo) throws Exception;
	
	public List<Order> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
}
