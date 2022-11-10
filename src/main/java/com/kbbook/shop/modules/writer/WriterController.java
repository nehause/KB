package com.kbbook.shop.modules.writer;

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

@Controller
@RequestMapping(value = "/writer/")
public class WriterController {
	
	@Autowired
	WriterServiceImpl service;
	
	public void setSearchAndPaging(WriterVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	
	@RequestMapping(value="writerList")
	public String WriterList(@ModelAttribute("vo") WriterVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Writer> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/writer/dmin/writerList";
	}
	
	
	@RequestMapping(value="writerView")
	public String WriterView(Writer dto, @ModelAttribute("vo") WriterVo vo, Model model) throws Exception {
		
		System.out.println("vo.getWriterSeq(): " + vo.getWriterSeq());
		
		if(vo.getWriterSeq().equals("0") || vo.getWriterSeq().equals("")) {
			//insert
		} else {
			Writer result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		model.addAttribute("writerListUploaded", service.writerListUploaded(vo));
		
		
		return "infra/writer/dmin/writerView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "writerInst")
	public String WriterInst(Writer dto, WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getWriterSeq(): " + dto.getWriterSeq());
		vo.setWriterSeq(dto.getWriterSeq());
		System.out.println("vo.getWriterSeq(): " + vo.getWriterSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/writer/writerView";
		} else {
			return "redirect:/writer/writerList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="writerUpdate")
	public String WriterUpdate(WriterVo vo, Writer dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getWriterSeq(): " + dto.getWriterSeq());
		System.out.println("dto.getName(): " + dto.getWriterName());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/writer/writerList";
	}
	
	@RequestMapping(value = "writerUelete")
	public String WriterUel(Writer dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/writer/writerList";
	}
	
	@RequestMapping(value = "writerDelete")
	public String WriterDel(WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/writer/writerList";
	}
	
	//bookWriter
	
	@RequestMapping(value="bookWriterList")
	public String bookWriterList(@ModelAttribute("vo") WriterVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		vo.setParamsPaging(service.bookWriterCount(vo));
		List<Writer> list = service.bookWriterList(vo);
		model.addAttribute("list", list);
		return "infra/writer/dmin/bookWriterList";
	}
	
	
	@RequestMapping(value="bookWriterView")
	public String bookWriterView(Writer dto, @ModelAttribute("vo") WriterVo vo, Model model) throws Exception {
		
		System.out.println("vo.getBook_writerSeq(): " + vo.getBook_writerSeq());
		
		if(vo.getBook_writerSeq().equals("0") || vo.getBook_writerSeq().equals("")) {
			//insert
		} else {
			Writer result = service.bookWriterSeq(vo);
			model.addAttribute("item", result);
		}
		
		
		return "infra/writer/dmin/bookWriterView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "bookWriterInsert")
	public String bookWriterInsert(Writer dto, WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.bookWriterInsert(dto);
		
		System.out.println("dto.getWriterSeq(): " + dto.getWriterSeq());
		vo.setBook_writerSeq(dto.getBook_writerSeq());
		System.out.println("vo.getWriterSeq(): " + vo.getWriterSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/writer/bookWriterView";
		} else {
			return "redirect:/writer/bookWriterList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="bookWriterUpdate")
	public String bookWriterUpdate(WriterVo vo, Writer dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getBook_writerSeq(): " + dto.getBook_writerSeq());
		
		service.bookWriterUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/writer/bookWriterList";
	}
	
	@RequestMapping(value = "bookWriterDelete")
	public String bookWriterDelete(WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.bookWriterDelete(vo);
		
		return "redirect:/writer/bookWriterList";
	}
	
	//ajax
	
		@ResponseBody
		@RequestMapping(value = "bookName")
		public Map<String, Object> bookName(WriterVo vo) throws Exception {

			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Writer result = service.bookName(vo);

			if (result == null) {
				returnMap.put("rt", "fail");
			} else {
				returnMap.put("result", result);
				returnMap.put("rt", "success");
				
			}
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "writerName")
		public Map<String, Object> writerName(WriterVo vo) throws Exception {

			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Writer result = service.writerName(vo);

			if (result == null) {
				returnMap.put("rt", "fail");
			} else {
				returnMap.put("result", result);
				returnMap.put("rt", "success");
				
			}
			return returnMap;
		}

		@RequestMapping("writerExcelDownload")
	    public void writerExcelDownload(WriterVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			setSearchAndPaging(vo);
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Writer> list = service.selectList(vo);
				
//				Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//		        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//		        Header
		        String[] tableHeader = {"작가 번호", "이름", "저서", "등록일", "수정일"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//		        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//		            String type: null 전달 되어도 ok
//		            int, date type: null 시 오류 발생 하므로 null check
//		            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getWriterSeq()));
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getWriterName());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getWrittenBook());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(UtilDateTime.dateToString(list.get(i).getWriterRegistration()));
		        	
		            cell = row.createCell(4);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(UtilDateTime.dateToString(list.get(i).getWriterCorrectation()));
		            
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xlsx
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=writerList.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
		
		@RequestMapping("writerBookExcelDownload")
	    public void writerBookExcelDownload(WriterVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			setSearchAndPaging(vo);
			vo.setParamsPaging(service.bookWriterCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Writer> list = service.bookWriterList(vo);
				
//				Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//		        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//		        Header
		        String[] tableHeader = {"저서 등록 번호", "책 번호", "책 이름", "작가 번호", "작가 이름"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//		        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//		            String type: null 전달 되어도 ok
//		            int, date type: null 시 오류 발생 하므로 null check
//		            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getBook_writerSeq()));
		            
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getBook_bookSeq());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getName());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getWriter_writerSeq());
		        	
		            cell = row.createCell(4);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getWriterName());
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xlsx
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=book_writerList.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
}
