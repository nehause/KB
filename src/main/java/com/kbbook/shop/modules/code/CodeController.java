package com.kbbook.shop.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	// new 역할

	@RequestMapping(value = "codeList")
	public String codeList(Model model) throws Exception {

		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/code/dmin/codeList";
				//뿌리/쓰는 폴더/사용자,관리자/
	}
}
