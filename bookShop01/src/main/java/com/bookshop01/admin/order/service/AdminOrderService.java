package com.bookshop01.admin.order.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop01.goods.vo.GoodsVO;
import com.bookshop01.order.vo.OrderVO;

// 주문
public interface AdminOrderService {
	public List<OrderVO>listNewOrder(Map condMap) throws Exception;			// 새로운 주문 목록
	public void  modifyDeliveryState(Map deliveryMap) throws Exception;		// 배송지 수정
	public Map orderDetail(int order_id) throws Exception;					// 주문 상세 정보
}
