package com.kbbook.shop.modules.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;

@Controller
@RequestMapping(value = "/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	
	public void setSearchAndPaging(OrderVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	
	@RequestMapping(value="orderList")
	public String OrderList(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchPayment(): " + vo.getSearchPayment());
		System.out.println("vo.getSearchPurchaseStatus(): " + vo.getSearchPurchaseStatus());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Order> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/order/dmin/orderList";
	}
	
	
	@RequestMapping(value="orderView")
	public String OrderView(Order dto, @ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getPurchaseSeq(): " + vo.getPurchaseSeq());
		
		if(vo.getPurchaseSeq().equals("0") || vo.getPurchaseSeq().equals("")) {
			//insert
		} else {
			Order result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/order/dmin/orderView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "orderInst")
	public String OrderInst(Order dto, OrderVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getPurchaseSeq(): " + dto.getPurchaseSeq());
		vo.setPurchaseSeq(dto.getPurchaseSeq());
		System.out.println("vo.getPurchaseSeq(): " + vo.getPurchaseSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/order/orderView";
		} else {
			return "redirect:/order/orderList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="orderUpdate")
	public String OrderUpdate(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getPurchaseSeq(): " + dto.getPurchaseSeq());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderList";
	}
	
	@RequestMapping(value = "orderUelete")
	public String OrderUel(Order dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/order/orderList";
	}
	
	@RequestMapping(value = "orderDelete")
	public String OrderDel(OrderVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/order/orderList";
	}
	
	//ajax
	
		@ResponseBody
		@RequestMapping(value = "TransportModal")
		public Map<String, Object> TransportModal(OrderVo vo) throws Exception {

			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Order result = service.transportSeq(vo);

			if (result == null) {
				returnMap.put("rt", "fail");
			} else {
				returnMap.put("rt", "success");
				returnMap.put("result", result);
			}
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "transportRegMod")
		public Map<String, Object> TransportRegMod(Order dto, OrderVo vo) throws Exception {

			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			
			if(dto.getTransportSeq().equals("0") || dto.getTransportSeq().equals("")) {
				
				service.transportInsert(dto);
				
				List<Order> insert = service.transportList(vo);
				
				returnMap.put("result", insert);
				
			} else {
				
				service.transportUpdate(dto);
				
				List<Order> insert = service.transportList(vo);
				
				returnMap.put("result", insert);
				
			}
			
			return returnMap;
		}
	
	// userpage
	
	@RequestMapping(value="orderPurchase")
	public String OrderPurchase(Order dto, @ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
	
		List<Order> transport = service.transportList(vo);
		model.addAttribute("transport", transport);
		
		vo.setParamsPaging(service.transportCount(vo));
		
		Order book = service.purchaseBookSeq(vo);
		model.addAttribute("book", book);
		
		book.setPrice((int) book.getPrice());
		
		
	
		return "infra/order/user/orderPurchase";
	}

	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "userOrderInsert")
	public String userInsert(Order dto, @ModelAttribute("vo") OrderVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		dto.setPurchaseSeq(dto.getPurchaseSeq());
		System.out.println("dto.getPurchaseSeq(): " + dto.getPurchaseSeq());
		vo.setPurchaseSeq(dto.getPurchaseSeq());
		System.out.println("vo.getPurchaseSeq(): " + vo.getPurchaseSeq());
		service.bookPurchaseInsert(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/order/orderFin";
		
	}
	
	@RequestMapping(value="orderFin")
	public String OrderFin(Order dto , @ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		List<Order> list = service.orderFinList(vo);
		
		model.addAttribute("list", list);
		
		return "infra/order/user/orderFin";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "transportInsert")
	public String transportInsert(Order dto, OrderVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.transportInsert(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderPurchase";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="transportUpdate")
	public String transportUpdate(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.transportUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderPurchase";
	}
	
}
