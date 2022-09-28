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
	
	public int insert(Order dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Order selectSeq(OrderVo vo) {
		Order result = sqlSession.selectOne(namespace + ".selectSeq", vo);
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

}
