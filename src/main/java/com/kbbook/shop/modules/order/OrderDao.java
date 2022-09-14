package com.kbbook.shop.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbbook.shop.modules.order.OrderMapper";
	
	public List<Order> selectList(){
		return sqlSession.selectList(namespace + ".selectList", "");
	}

}
