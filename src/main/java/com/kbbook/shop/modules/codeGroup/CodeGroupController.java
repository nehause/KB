package com.kbbook.shop.modules.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


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
	public String codeGroupView(@ModelAttribute("vo") CodeGroup dto, CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectSeq(vo);
		model.addAttribute("item", result);
		//model.addAttribute("vo", vo); = @ModelAttribute("vo") 
		return "infra/codeGroup/dmin/codeGroupView"; 
		
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getCGSeq(): " + dto.getCGSeq());
		System.out.println("dto.getCGNameKor(): " + dto.getCGNameKor());
		System.out.println("dto.getCGNameEng(): " + dto.getCGNameEng());
		System.out.println("dto.getCGUseNy(): " + dto.getCGUseNy());
		System.out.println("dto.getCGOrder(): " + dto.getCGOrder());
		System.out.println("dto.getCGRegistration(): " + dto.getCGRegistration());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUel")
	public String codeGroupUel(CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDel")
	public String codeGroupDel(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}
