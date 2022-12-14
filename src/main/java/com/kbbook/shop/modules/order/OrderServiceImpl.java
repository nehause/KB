package com.kbbook.shop.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao dao;
	
	@Override
	public List<Order> selectList(OrderVo vo) throws Exception{
		return dao.selectList(vo);
	}

	
	@Override
	public Order selectSeq(OrderVo vo) throws Exception {
		Order result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	public List<Order> purchaseBookList(OrderVo vo) throws Exception {
		return dao.purchaseBookList(vo);
	}
	
	public List<Order> memberTransport(OrderVo vo) throws Exception {
		return dao.memberTransport(vo);
	}
	
	@Override
	public int insert(Order dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public int update(Order dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Order dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(OrderVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Order> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	//userpage
	
	public Order purchaseBookSeq(OrderVo vo) throws Exception{
		return dao.purchaseBookSeq(vo);
	}
	
	public List<Order> transportList(OrderVo vo) throws Exception{
		return dao.transportList(vo);
	}
	
	public int transportCount(OrderVo vo) throws Exception{
		return dao.transportCount(vo);
	}
	
	public Order transportSeq(OrderVo vo) throws Exception{
		return dao.transportSeq(vo);
	}
	
	public int transportInsert(Order dto) throws Exception{
		return dao.transportInsert(dto);
	}
	
	public int transportUpdate(Order dto) throws Exception{
		return dao.transportUpdate(dto);
	}
	
	public int bookPurchaseInsert(Order dto) throws Exception{
		return dao.bookPurchaseInsert(dto);
	}
	public List<Order> orderFinList(OrderVo vo) throws Exception{
		return dao.orderFinList(vo);
	}
	public Order orderFinPrice(OrderVo vo) throws Exception{
		return dao.orderFinPrice(vo);
	}
}
