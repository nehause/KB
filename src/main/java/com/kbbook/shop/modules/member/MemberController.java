package com.kbbook.shop.modules.member;

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



@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	@Autowired
	MemberServiceImpl service;
	// new 역할
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	public void setRowNumToShow(MemberVo vo, int Line) throws Exception {
		vo.setRowNumToShow(Line);
	}

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchPrivacy(): " + vo.getSearchPrivacy());
		System.out.println("vo.getSearchGender(): " + vo.getSearchGender());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/dmin/memberList";
				//뿌리/쓰는 폴더/사용자,관리자/
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception {
		
		return "infra/member/dmin/memberForm";
	}
	
	public void setCheckboxNull(Member dto) throws Exception {
		dto.setEmail_ctr(dto.getEmail_ctr() == null ? 0 : dto.getEmail_ctr());
		dto.setKakao_ctr(dto.getKakao_ctr() == null ? 0 : dto.getKakao_ctr());
		dto.setSms_ctr(dto.getSms_ctr() == null ? 0 : dto.getSms_ctr());
	}
	
	@RequestMapping(value="memberView")
	public String MemerView(Member dto, @ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		System.out.println("vo.getMemberSeq(): " + vo.getMemberSeq());
		
		if(vo.getMemberSeq().equals("0") || vo.getMemberSeq().equals("")) {
			//insert
		} else {
			Member result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/member/dmin/memberView";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="memberInst")
	public String memberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		setCheckboxNull(dto);
		
		service.insert(dto);
		
		System.out.println("dto.getMemberSeq(): " + dto.getMemberSeq());
		
		vo.setMemberSeq(dto.getMemberSeq());
		
		System.out.println("vo.getMemberSeq(): " + vo.getMemberSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/member/memberView";
		} else {
			return "redirect:/member/memberList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="userInst")
	public String userInsert(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		setCheckboxNull(dto);
		
		service.insert(dto);
		
		System.out.println("dto.getMemberSeq(): " + dto.getMemberSeq());
		
		vo.setMemberSeq(dto.getMemberSeq());
		
		System.out.println("vo.getMemberSeq(): " + vo.getMemberSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/member/loginForm";
		
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="memberUpdate")
	public String memberUpdate(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception{
		
		setCheckboxNull(dto);
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="userUpdate")
	public String userUpdate(MemberVo vo, Member dto, HttpSession httpSession , RedirectAttributes redirectAttributes) throws Exception{
		
		dto.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		setCheckboxNull(dto);
		service.userUpdate(dto);
		
		return "redirect:/member/memberMyRoom";
	}
	
	@RequestMapping(value = "memberUelete")
	public String memberUel(Member dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberDelete")
	public String memberDel(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/member/memberList";
	}
	
	// ajax
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "checkUserName")
	public Map<String, Object> checkUserName(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneUserNameCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	@ResponseBody
	@RequestMapping(value = "checkPassword")
	public Map<String, Object> checkPassword(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOnePasswordCheck(dto);

		if (result == 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "findIdPhone")
	public Map<String, Object> findIdPhoneCheck(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member result = service.findIdPhoneCheck(dto);

		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
			returnMap.put("id", result.getId());
			System.out.println("result.getId(): " + result.getId());
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "findIdEmail")
	public Map<String, Object> findIdEmailCheck(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member result = service.findIdEmailCheck(dto);

		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
			returnMap.put("id", result.getId());
			System.out.println("result.getId(): " + result.getId());
		}
		return returnMap;
	}
	
	
	//usermapper
	@RequestMapping(value="loginForm")
	public String LoginForm() throws Exception {
		
		return "infra/member/user/loginForm";
	}
	
	@RequestMapping(value="memberRegForm")
	public String memberRegForm(Member dto) throws Exception {
		
		return "infra/member/user/memberRegForm";
	}
	
	@RequestMapping(value="memberMyRoom")
	public String memberMyRoom(Member dto, @ModelAttribute("vo") MemberVo vo, HttpSession httpSession, Model model) throws Exception {
		//String sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		dto.setSessSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		
		Member result = service.selectSeq(vo);
		model.addAttribute("item", result);
		vo.setParamsPaging(service.selectOrderCount(vo));
		List<Member> order = service.memberOrderList(vo);
		model.addAttribute("order", order);
		
		List<Member> favorite = service.favorite(dto);
		model.addAttribute("favorite", favorite);

				
		return "infra/member/user/memberMyRoom";
	}
	
	@RequestMapping(value="memberRoomModCheck")
	public String memberRoomModCheck(Member dto, @ModelAttribute("vo") MemberVo vo, HttpSession httpSession, Model model) throws Exception {
		
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		
		Member result = service.selectSeq(vo);
		model.addAttribute("item", result);
		
		return "infra/member/user/memberRoomModCheck";
	}
	
	@RequestMapping(value="memberRoomModForm")
	public String memberRoomModForm(Member dto, @ModelAttribute("vo") MemberVo vo, HttpSession httpSession, Model model) throws Exception {
		
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		
		Member result = service.selectSeq(vo);
		model.addAttribute("item", result);
		
		return "infra/member/user/memberRoomModForm";
	}
	
	@RequestMapping(value="memberRoomModPassword")
	public String memberRoomModPassword(Member dto, @ModelAttribute("vo") MemberVo vo, HttpSession httpSession, Model model) throws Exception {
		vo.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		
		List<Member> favorite = service.favorite(dto);
		model.addAttribute("favorite", favorite);
		
		Member result = service.selectSeq(vo);
		model.addAttribute("item", result);
		
		return "infra/member/user/memberRoomModPassword";
	}
	
	@RequestMapping(value = "passwordUpdate")
	public String passwordUpdate(Member dto, HttpSession httpSession , RedirectAttributes redirectAttributes) throws Exception{
		
		dto.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		service.passwordUpdate(dto);
		
		return "redirect:/member/memberMyRoom";
	}
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				/*
				 * if(dto.getAutoLogin() == true) {
				 * UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getMemberSeq(),
				 * Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE); }
				 * else { // by pass }
				 */ 
				// UtilCookie가 없어서 autoLogin은 사용할수 없다 
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessName", rtMember2.getName());
				httpSession.setAttribute("sessUserName", rtMember2.getUserName());

				/*
				 * rtMember2.setIflgResultNy(1); service.insertLogLogin(rtMember2);
				 */

				/*
				 * Date date = rtMember2.getIfmmPwdModDate(); LocalDateTime
				 * ifmmPwdModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(),
				 * ZoneId.systemDefault());
				 */
				
				/*
				 * if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime,
				 * UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
				 * returnMap.put("changePwd", "true"); }
				 */

				returnMap.put("rt", "success");
			} else {
				/*
				 * dto.setIfmmSeq(rtMember.getIfmmSeq()); dto.setIflgResultNy(0);
				 * service.insertLogLogin(dto);
				 */

				returnMap.put("rt", "fail");
			}
		} else {
			/*
			 * dto.setIflgResultNy(0); service.insertLogLogin(dto);
			 */

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
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
	        String[] tableHeader = {"회원 번호", "이름", "아이디", "닉네임", "성별", "생일", "이메일", "모바일", "적립금", "등록일", "수정일"};

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
	            cell.setCellValue(Integer.parseInt(list.get(i).getMemberSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getId());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getUserName());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getGender()));
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getDob());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getEmail());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getNumber());	        
	            
	            cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getAccmulate());	       
	            
	            cell = row.createCell(9);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegistration() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegistration()));
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getCorrectation() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCorrectation()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=memberList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }

}
