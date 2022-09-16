package com.kbbook.shop.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	// new 역할
	
	public void setSearchAndPaging(CodeVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/dmin/codeList";
				//뿌리/쓰는 폴더/사용자,관리자/
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception {
		List<Code> result = service.selectGroup();
		model.addAttribute("view", result);
		return "infra/code/dmin/codeForm";
	}
	
	@RequestMapping(value="codeView")
	public String codeForm(@ModelAttribute("vo") Code dto, CodeVo vo, Model model) throws Exception{
		
		List<Code> Group = service.selectGroup();
		model.addAttribute("view", Group);
		Code result = service.selectSeq(vo);
		model.addAttribute("item", result);
		return "infra/code/dmin/codeView";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception{
		
		System.out.println("dto.getCCG_CGSeq(): " + dto.getCCG_CGSeq());
		System.out.println("dto.getCNameKor(): " + dto.getCNameKor());
		System.out.println("dto.getCOrder(): " + dto.getCOrder());
		
		int result = service.insert(dto);
		
		
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="codeUpdate")
	public String codeUpdate(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getCSeq(): " + dto.getCSeq());
		System.out.println("dto.getCNameKor(): " + dto.getCNameKor());
		System.out.println("dto.getCNameEng(): " + dto.getCNameEng());
		System.out.println("dto.getCUseNy(): " + dto.getCUseNy());
		System.out.println("dto.getCOrder(): " + dto.getCOrder());
		System.out.println("dto.getCRegistration(): " + dto.getCRegistration());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUelete")
	public String codeUel(Code dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDelete")
	public String codeDel(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/code/codeList";
	}
}
