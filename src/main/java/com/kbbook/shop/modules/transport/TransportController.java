package com.kbbook.shop.modules.transport;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;
import com.kbbook.shop.modules.member.Member;
import com.kbbook.shop.modules.member.MemberServiceImpl;
import com.kbbook.shop.modules.member.MemberVo;




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
}
