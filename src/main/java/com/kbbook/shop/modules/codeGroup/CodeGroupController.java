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
		
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codeGroup/dmin/codeGroupList";
	}
}
