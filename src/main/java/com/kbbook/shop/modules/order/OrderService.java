package com.kbbook.shop.modules.order;

import java.util.List;

import com.kbbook.shop.common.base.BaseVo;

public interface OrderService {
	public List<Order> selectList(OrderVo vo) throws Exception; 
	public Order selectSeq(OrderVo vo) throws Exception;
	public List<Order> purchaseBookList(OrderVo vo) throws Exception;
	public List<Order> memberTransport(OrderVo vo) throws Exception;
	
	public int insert(Order dto) throws Exception;
	public int update(Order dto) throws Exception;
	public int uelete(Order dto) throws Exception;
	public int delete(OrderVo vo) throws Exception;
	
	public List<Order> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	
	//userPage
	public Order purchaseBookSeq(OrderVo vo) throws Exception;
	public List<Order> transportList(OrderVo vo) throws Exception;
	public int transportCount(OrderVo vo) throws Exception;
	public Order transportSeq(OrderVo vo) throws Exception;
	public int transportInsert(Order dto) throws Exception;
	public int transportUpdate(Order dto) throws Exception;
	public int bookPurchaseInsert(Order dto) throws Exception;
	public List<Order> orderFinList(OrderVo vo) throws Exception;
	public Order orderFinPrice(OrderVo vo) throws Exception;
	
}
