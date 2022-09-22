package com.kbbook.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;



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
		
		int result = service.insert(dto);
		
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
	@RequestMapping(value="memberUpdate")
	public String memberUpdate(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception{
		
		setCheckboxNull(dto);
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
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
	
	
	
	//usermapper
	
	@RequestMapping(value="memberRegForm")
	public String memberRegForm(Member dto) throws Exception {
		
		return "infra/member/user/memberRegForm";
	}
	
	@RequestMapping(value="memberMyRoom")
	public String memberMyRoom() throws Exception {
		return "infra/member/user/memberMyRoom";
	}
	
	@RequestMapping(value="memberRoomModCheck")
	public String memberRoomModCheck() throws Exception {
		return "infra/member/user/memberRoomModCheck";
	}
	
	@RequestMapping(value="memberRoomModForm")
	public String memberRoomModForm() throws Exception {
		return "infra/member/user/memberRoomModForm";
	}
	
	@RequestMapping(value="memberRoomModPassword")
	public String memberRoomModPassword() throws Exception {
		return "infra/member/user/memberRoomModPassword";
	}
	
	@RequestMapping(value="memberRoomTransportForm")
	public String memberRoomTransportForm() throws Exception {
		return "infra/member/user/memberRoomTransportForm";
	}

}
