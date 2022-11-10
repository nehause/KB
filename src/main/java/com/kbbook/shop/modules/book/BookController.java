package com.kbbook.shop.modules.book;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.kbbook.shop.modules.main.Main;
import com.kbbook.shop.modules.main.MainServiceImpl;




@Controller
@RequestMapping(value = "/book/")
public class BookController {
	@Autowired
	BookServiceImpl service;
	
	@Autowired
	MainServiceImpl mainService;
	
	
	public void setSearchAndPaging(BookVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo)); 
	}
	public void setUserSearchAndPaging(BookVo vo) throws Exception {
		vo.setParamsPaging(service.userSelectOneCount(vo)); 
	}
	// 페이지네이션 화면에 보여줄 데이터 줄 갯수 바꾸는 함수
	public void setRowNumToShow(BookVo vo, int Line) throws Exception {
		vo.setRowNumToShow(Line);
	}

	
	@RequestMapping(value="bookList")
	public String BookList(@ModelAttribute("vo") BookVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		setSearchAndPaging(vo);
		List<Book> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/book/dmin/bookList";
	}
	
	
	@RequestMapping(value="bookView")
	public String BookView(Book dto, @ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		System.out.println("vo.getBookSeq(): " + vo.getBookSeq());
		
		if(vo.getBookSeq().equals("0") || vo.getBookSeq().equals("")) {
			//insert
			dto.setDelNy(dto.getDelNy() == null ? 0 : dto.getDelNy());
		} else {
			Book result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		model.addAttribute("bookListUploaded", service.bookListUploaded(vo));
		
		return "infra/book/dmin/bookView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "bookInst")
	public String bookInst(Book dto, BookVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getBookSeq(): " + dto.getBookSeq());
		vo.setBookSeq(dto.getBookSeq());
		System.out.println("vo.getBookSeq(): " + vo.getBookSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/book/bookView";
		} else {
			return "redirect:/book/bookList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="bookUpdate")
	public String bookUpdate(BookVo vo, Book dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getBookSeq(): " + dto.getBookSeq());
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getPublisher(): " + dto.getPublisher());
		System.out.println("dto.getCost(): " + dto.getCost());
		System.out.println("dto.getStock(): " + dto.getStock());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/book/bookList";
	}
	
	@RequestMapping(value = "bookUelete")
	public String bookUel(Book dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/book/bookList";
	}
	
	@RequestMapping(value = "bookDelete")
	public String bookDel(BookVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/book/bookList";
	}
	
	
	  //ajax
	  
		/*
		 * @ResponseBody
		 * 
		 * @RequestMapping(value = "searchSelectList") public List<Book>
		 * searchSelectList(BookVo vo) throws Exception {
		 * 
		 * vo.setPageNum(vo.getPageNum()); vo.setSearchOption(vo.getSearchOption());
		 * 
		 * return service.userSelectList(vo); }
		 */
	
	@ResponseBody
	@RequestMapping(value = "commentDel")
	public Map<String, Object> commentDel(Book dto, BookVo vo) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.commentCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "success");
			service.commentDelete(vo);
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	 
	
	//userPage
	@RequestMapping(value="bookIndex")
	public String BookIndex(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getPageNum(): " + vo.getPageNum());
		vo.setSearchOption(vo.getSearchOption() == null ? 1 : vo.getSearchOption());
		vo.setPageNum(vo.getPageNum() == null ? 6 : vo.getPageNum());

		setRowNumToShow(vo, vo.getPageNum()); // ajax 처리
		setUserSearchAndPaging(vo);
		List<Book> index = service.userSelectList(vo);
		model.addAttribute("index", index);
		
		List<Main> best = mainService.bestList();
		model.addAttribute("best", best);
		
		List<Main> newList = mainService.newList();
		model.addAttribute("newList", newList);
		
		return "infra/book/user/bookIndex";
	}
	
	@RequestMapping(value="bookDetail")
	public String BookDetail(@ModelAttribute("vo") BookVo vo, Model model, HttpSession httpSession) throws Exception {
		
		Book result = service.bookSelectSeq(vo);
		model.addAttribute("item", result);
		
		List<Book> writer = service.bookWriter(vo);
		model.addAttribute("writer", writer);		
		
		List<Book> comment = service.bookComment(vo);
		model.addAttribute("comment", comment);
		
		Book avg = service.commentAVG(vo);
		model.addAttribute("avg", avg);
		
		vo.setParamsPaging(service.bookCommentCount(vo)); 
		
		List<Main> best = mainService.bestList();
		model.addAttribute("best", best);
		
		List<Main> newList = mainService.newList();
		model.addAttribute("newList", newList);
		
		model.addAttribute("bookListUploaded", service.bookListUploaded(vo));
		model.addAttribute("writerListUploaded", service.writerListUploaded(vo));
		
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		
		int favorite = service.favoriteCheck(vo);
		model.addAttribute("favorite", favorite);
		
		return "infra/book/user/bookDetail";
	}
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "commentInsert")
	public String commentInst(Book dto, BookVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.commentInsert(dto);
		vo.setBookSeq(dto.getBook_bookSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/book/bookDetail";
		
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "favoriteInsert")
	public String favoriteInsert(Book dto, BookVo vo, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception{
		dto.setBookSeq(vo.getBookSeq());
		dto.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		service.favoriteInsert(dto);
		vo.setBookSeq(dto.getBookSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/book/bookDetail";
	}
	@RequestMapping(value = "favoriteDelete")
	public String favoriteDelete(Book dto, BookVo vo, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception{
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		service.favoriteDelete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/book/bookDetail";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(BookVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Book> list = service.selectList(vo);
			
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
	        String[] tableHeader = {"책 번호", "제목", "작가", "출판사", "출간일", "등록일", "가격", "할인률", "적립률", "재고", "판매량"};

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
	            cell.setCellValue(Integer.parseInt(list.get(i).getBookSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getWriter());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getPublisher());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            /*if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getGender()));*/
	        	cell.setCellValue(UtilDateTime.dateToString(list.get(i).getDop()));
	        	
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(UtilDateTime.dateToString(list.get(i).getDor()));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getCost());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getSale());	        
	            
	            cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getAccmulate());	       
	            
	            cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	/*if(list.get(i).getRegistration() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegistration()));*/
	        	cell.setCellValue(list.get(i).getStock());	
	        	
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            /*if(list.get(i).getCorrectation() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCorrectation()));*/
	            cell.setCellValue(list.get(i).getAmount());	
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=bookList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
