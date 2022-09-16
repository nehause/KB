package com.kbbook.shop.modules.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;




//codeGroup - 중간 주소
@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		System.out.println("vo.getSearchDor(): " + vo.getSearchDor());
//		System.out.println("vo.getSearchDos(): " + vo.getSearchDos());
//		System.out.println("vo.getSearchDoe(): " + vo.getSearchDoe());
		
		setSearchAndPaging(vo);

		vo.setParamsPaging(service.selectOneCount(vo));
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codeGroup/dmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		return "infra/codeGroup/dmin/codeGroupForm";
	}
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getCGSeq(): " + vo.getCGSeq());
		
		if(vo.getCGSeq().equals("0") || vo.getCGSeq().equals("")) {
			//insert
		} else {
			CodeGroup result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		return "infra/codeGroup/dmin/codeGroupView"; 
		
	}
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		System.out.println("dto.getCGSeq(): " + dto.getCGSeq());
		vo.setCGSeq(dto.getCGSeq());
		System.out.println("vo.getCGSeq(): " + vo.getCGSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/codeGroup/codeGroupView";
		} else {
			return "redirect:/codeGroup/codeGroupList";
		}
		
		
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="codeGroupUpdate")
	public String codeGroupUpdate(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		
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
	
	@RequestMapping(value = "codeGroupUelete")
	public String codeGroupUel(CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDelete")
	public String codeGroupDel(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}
