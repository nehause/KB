package com.kbbook.shop.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbbook.shop.common.base.BaseVo;

@Repository
public class OrderDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.order.OrderMapper";
	
	public List<Order> selectList(OrderVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public Order selectSeq(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectSeq", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public List<Order> purchaseBookList(OrderVo vo) {
		return sqlSession.selectList(namespace + ".purchaseBookList", vo);
	}
	public List<Order> memberTransport(OrderVo vo) {
		return sqlSession.selectList(namespace + ".memberTransport", vo);
	}
	
	public int insert(Order dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Order dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Order dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(OrderVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public List<Order> selectListWithoutPaging(){
		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
	}
	
	public int selectOneCount(BaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public Order purchaseBookSeq(OrderVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".purchaseBookSeq", vo);
	}
	public List<Order> transportList(OrderVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".transportList", vo);
	}
	public int transportCount(OrderVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".transportCount", vo);
	}
	public Order transportSeq(OrderVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".transportSeq", vo);
	}
	public int transportInsert(Order dto) throws Exception{
		return sqlSession.insert(namespace + ".transportInsert", dto);
	}
	public int transportUpdate(Order dto) throws Exception{
		return sqlSession.update(namespace + ".transportUpdate", dto);
	}
	public int bookPurchaseInsert(Order dto) throws Exception{
		return sqlSession.insert(namespace + ".bookPurchaseInsert", dto);
	}
	public List<Order> orderFinList(OrderVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".orderFinList", vo);
	}
	public Order orderFinPrice(OrderVo vo) throws Exception{
		return sqlSession.selectOne(namespace + ".orderFinPrice", vo);
	}
	

}
