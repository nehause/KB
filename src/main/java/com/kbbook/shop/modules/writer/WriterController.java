package com.kbbook.shop.modules.writer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;

@Controller
@RequestMapping(value = "/writer/")
public class WriterController {
	
	@Autowired
	WriterServiceImpl service;
	
	public void setSearchAndPaging(WriterVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	
	@RequestMapping(value="writerList")
	public String WriterList(@ModelAttribute("vo") WriterVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Writer> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/writer/dmin/writerList";
	}
	
	
	@RequestMapping(value="writerView")
	public String WriterView(Writer dto, @ModelAttribute("vo") WriterVo vo, Model model) throws Exception {
		
		System.out.println("vo.getWriterSeq(): " + vo.getWriterSeq());
		
		if(vo.getWriterSeq().equals("0") || vo.getWriterSeq().equals("")) {
			//insert
		} else {
			Writer result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/writer/dmin/writerView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "writerInst")
	public String WriterInst(Writer dto, WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getWriterSeq(): " + dto.getWriterSeq());
		vo.setWriterSeq(dto.getWriterSeq());
		System.out.println("vo.getWriterSeq(): " + vo.getWriterSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/writer/writerView";
		} else {
			return "redirect:/writer/writerList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="writerUpdate")
	public String WriterUpdate(WriterVo vo, Writer dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getWriterSeq(): " + dto.getWriterSeq());
		System.out.println("dto.getName(): " + dto.getName());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/writer/writerList";
	}
	
	@RequestMapping(value = "writerUelete")
	public String WriterUel(Writer dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/writer/writerList";
	}
	
	@RequestMapping(value = "writerDelete")
	public String WriterDel(WriterVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/writer/writerList";
	}

}
