package com.kbbook.shop.modules.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;
import com.kbbook.shop.common.util.UtilDateTime;
import com.kbbook.shop.modules.code.CodeServiceImpl;

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
			
			List<Order> purchaseBook = service.purchaseBookList(vo);
			model.addAttribute("purchaseBook", purchaseBook);
			
			List<Order> memberTransport =service.memberTransport(vo);
			model.addAttribute("memberTransport", memberTransport);
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
		Order price = service.orderFinPrice(vo);
		model.addAttribute("price", price);
		
		return "infra/order/user/orderFin";
	}
	
	@RequestMapping(value="orderUserView")
	public String orderUserView(Order dto, @ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getPurchaseSeq(): " + vo.getPurchaseSeq());
		
		if(vo.getPurchaseSeq().equals("0") || vo.getPurchaseSeq().equals("")) {
			//insert
		} else {
			Order result = service.selectSeq(vo);
			model.addAttribute("item", result);
			
			List<Order> purchaseBook = service.purchaseBookList(vo);
			model.addAttribute("purchaseBook", purchaseBook);
		}
		
		return "infra/order/user/orderUserView";
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
	
	@RequestMapping("excelDownload")
    public void excelDownload(OrderVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Order> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"구매 번호", "구매자 번호", "구매자 이름", "구매자 주소 번호", "결제 수단", "구매 시간", "구매 도서", "구매 권 수", "총 가격", "배송 상태", "수정 시간"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getPurchaseSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMember_memberSeq());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberName());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getTransport_transportSeq());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getPayment() != null) cell.setCellValue(CodeServiceImpl.selectCGOneCachedCode(5, list.get(i).getPayment()));
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getTime()));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getPurchaseBook());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getPurchaseCount());	        
	            
	            cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getPriceSum());	       
	            
	            cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getPurchaseStatus() != null) cell.setCellValue(CodeServiceImpl.selectCGOneCachedCode(6, list.get(i).getPurchaseStatus()));
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getToc() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getToc()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=orderList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
}
