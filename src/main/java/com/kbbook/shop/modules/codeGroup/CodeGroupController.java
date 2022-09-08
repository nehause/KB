package com.kbbook.shop.modules.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//codeGroup - 중간 주소
@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		System.out.println("vo.getSearchDor(): " + vo.getSearchDor());
		System.out.println("vo.getSearchDos(): " + vo.getSearchDos());
		System.out.println("vo.getSearchDoe(): " + vo.getSearchDoe());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		// list는 jsp에서 쓸 객체 변수의 이름
		return "infra/codeGroup/dmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		
		return "infra/codeGroup/dmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectSeq(vo);
		model.addAttribute("item", result);
		return "infra/codeGroup/dmin/codeGroupView"; 
		
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
}
