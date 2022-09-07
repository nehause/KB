package com.kbbook.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	@Autowired
	MemberServiceImpl service;
	// new 역할

	@RequestMapping(value = "memberList")
	public String codeGroupList(Model model, MemberVo vo) throws Exception {

		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchPrivacy(): " + vo.getSearchPrivacy());
		System.out.println("vo.getSearchGender(): " + vo.getSearchGender());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/dmin/memberList";
				//뿌리/쓰는 폴더/사용자,관리자/
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception {
		
		return "infra/member/dmin/memberForm";
	}
	
	@RequestMapping(value="memberInst")
	public String memberInst(Member dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/member/memberList";
	}
}
