package com.kbbook.shop.modules.order;

import java.util.List;

public interface OrderService {
	public List<Order> selectList() throws Exception;
}
