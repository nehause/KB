package com.kbbook.shop.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;



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
	public String codeView(Code dto, @ModelAttribute("vo") CodeVo vo, Model model) throws Exception{
		
		List<Code> Group = service.selectGroup();
		model.addAttribute("view", Group);
		
		System.out.println("vo.getCSeq(): " + vo.getCSeq());
		
		if(vo.getCSeq().equals("0") || vo.getCSeq().equals("")) {
			//insert
			dto.setCUseNy(dto.getCUseNy() == null ? 1 : dto.getCUseNy());
		} else {
			Code result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/code/dmin/codeView";
	}
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getCSeq(): " + dto.getCSeq());
		vo.setCSeq(dto.getCSeq());
		System.out.println("vo.getCSeq(): " + vo.getCSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/code/codeView";
		} else {
			return "redirect:/code/codeList";
		}
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
