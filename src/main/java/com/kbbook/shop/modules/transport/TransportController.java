package com.kbbook.shop.modules.transport;

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
import com.kbbook.shop.modules.code.CodeServiceImpl;
import com.kbbook.shop.modules.member.MemberServiceImpl;




@Controller
@RequestMapping(value = "/transport/")
public class TransportController {
	
	@Autowired
	TransportServiceImpl service;
	
	@Autowired
	MemberServiceImpl memberService;
	
	public void setSearchAndPaging(TransportVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "transportList")
	public String TransportList(@ModelAttribute("vo") TransportVo vo, Model model) throws Exception {

		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Transport> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/transport/dmin/transportList";
				//뿌리/쓰는 폴더/사용자,관리자/
	}
	
	@RequestMapping(value="transportView")
	public String trasnportView(Transport dto, @ModelAttribute("vo") TransportVo vo, Model model) throws Exception{
		
		System.out.println("vo.getTransportSeq(): " + vo.getTransportSeq());
		
		if(vo.getTransportSeq().equals("0") || vo.getTransportSeq().equals("")) {
			//insert
		} else {
			Transport result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/transport/dmin/transportView";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="transportInst")
	public String memberInst(Transport dto, TransportVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.insert(dto);
		
		System.out.println("dto.getTransportSeq(): " + dto.getTransportSeq());
		
		vo.setTransportSeq(dto.getTransportSeq());
		
		System.out.println("vo.getTransportSeq(): " + vo.getTransportSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/transport/transportView";
		} else {
			return "redirect:/transport/transportList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="transportUpdate")
	public String transportUpdate(TransportVo vo, Transport dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/transport/transportList";
	}
	
	@RequestMapping(value = "transportUelete")
	public String transportUel(Transport dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/transport/transportList";
	}
	
	@RequestMapping(value = "transportDelete")
	public String transportDel(TransportVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/transport/transportList";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="userTransportInst")
	public String userTransportInst(Transport dto, TransportVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.insert(dto);
		
		System.out.println("dto.getTransportSeq(): " + dto.getTransportSeq());
		
		vo.setTransportSeq(dto.getTransportSeq());
		
		System.out.println("vo.getTransportSeq(): " + vo.getTransportSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/transport/transportForm";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="userTransportUpdate")
	public String userTransportUpdate(TransportVo vo, Transport dto, RedirectAttributes redirectAttributes) throws Exception{
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/transport/transportForm";
	}
	
	@RequestMapping(value = "userTransportUelete")
	public String userTransportUelete(Transport dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/transport/transportForm";
	}
	
	@RequestMapping(value = "userTransportDelete")
	public String userTransportDelete(TransportVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/transport/transportForm";
	}
	
	//ajax
	
	@ResponseBody
	@RequestMapping(value = "TransportModal")
	public Map<String, Object> TransportModal(TransportVo vo) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Transport result = service.userSelect(vo);

		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("result", result);
			// 위의 한줄과 아래것은 같다.
			returnMap.put("rt", "success");
			returnMap.put("transportSeq", result.getTransportSeq());
			returnMap.put("member_memberSeq", result.getMember_memberSeq());
			returnMap.put("name", result.getName());
			returnMap.put("transportDiv", result.getTransportDiv());
			returnMap.put("phone", result.getPhone());
			returnMap.put("home", result.getHome());
			returnMap.put("zip", result.getZip());
			returnMap.put("address1", result.getAddress1());
			returnMap.put("address2", result.getAddress2());
			returnMap.put("lng", result.getLng());
			returnMap.put("lat", result.getLat());
			
		}
		return returnMap;
	}
	
	// userPage
	
	@RequestMapping(value= "transportForm")
	public String TransportForm(@ModelAttribute("vo") TransportVo vo, Transport dto, HttpSession httpSession, Model model) throws Exception {
		
		vo.setSessSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		dto.setSessSeq((String) httpSession.getAttribute("sessSeq"));
		
		Transport result = service.memberSeq(vo);
		model.addAttribute("item", result);
		
		vo.setParamsPaging(service.loginCount(vo));
		
		List<Transport> list = service.loginSeq(dto);
		model.addAttribute("userTransport", list);
		
		Transport userSelect = service.userSelect(vo);
		model.addAttribute("userItem", userSelect);
		
		return "infra/transport/user/memberRoomTransportForm";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(TransportVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Transport> list = service.selectList(vo);
			
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
	        String[] tableHeader = {"주소 번호", "회원 번호", "회원 이름", "주소 구분", "휴대전화번호", "집전화번호", "우편번호", "주소", "상세주소", "등록일", "수정일"};

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
	            cell.setCellValue(Integer.parseInt(list.get(i).getTransportSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMember_memberSeq());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getTransportDiv() != null)cell.setCellValue(CodeServiceImpl.selectCGOneCachedCode(7, list.get(i).getTransportDiv()));
//				corder로 구분하던거라 힘듬
	        	
//	        	cell.setCellValue(list.get(i).getTransportDiv());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				/*if(list.get(i).getGender() != null)cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getGender()));*/
	        	cell.setCellValue(list.get(i).getPhone());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
				/* cell.setCellValue(UtilDateTime.dateToString(list.get(i).getDob())); */
	            cell.setCellValue(list.get(i).getHome());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getZip());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getAddress1());	        
	            
	            cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getAddress2());	       
	            
	            cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegistration() != null) cell.setCellValue(UtilDateTime.dateToString(list.get(i).getRegistration()));
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getCorrectation() != null) cell.setCellValue(UtilDateTime.dateToString(list.get(i).getCorrectation()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=transportList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
