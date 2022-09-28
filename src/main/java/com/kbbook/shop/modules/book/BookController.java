package com.kbbook.shop.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbbook.shop.common.constants.Constants;




@Controller
@RequestMapping(value = "/book/")
public class BookController {
	@Autowired
	BookServiceImpl service;
	
	
	public void setSearchAndPaging(BookVo vo) throws Exception {
		vo.setSearchDor(vo.getSearchDor() == null ? 2 : vo.getSearchDor());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	
	@RequestMapping(value="bookList")
	public String BookList(@ModelAttribute("vo") BookVo vo, Model model) throws Exception{
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Book> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/book/dmin/bookList";
	}
	
	
	@RequestMapping(value="bookView")
	public String BookView(Book dto, @ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		System.out.println("vo.getBookSeq(): " + vo.getBookSeq());
		
		if(vo.getBookSeq().equals("0") || vo.getBookSeq().equals("")) {
			//insert
		} else {
			Book result = service.selectSeq(vo);
			model.addAttribute("item", result);
		}
		
		return "infra/book/dmin/bookView";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "bookInst")
	public String bookInst(Book dto, BookVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		System.out.println("dto.getBookSeq(): " + dto.getBookSeq());
		vo.setBookSeq(dto.getBookSeq());
		System.out.println("vo.getBookSeq(): " + vo.getBookSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/book/bookView";
		} else {
			return "redirect:/book/bookList";
		}
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="bookUpdate")
	public String bookUpdate(BookVo vo, Book dto, RedirectAttributes redirectAttributes) throws Exception{
		
		System.out.println("dto.getBookSeq(): " + dto.getBookSeq());
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getPublisher(): " + dto.getPublisher());
		System.out.println("dto.getCost(): " + dto.getCost());
		System.out.println("dto.getStock(): " + dto.getStock());
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/book/bookList";
	}
	
	@RequestMapping(value = "bookUelete")
	public String bookUel(Book dto, RedirectAttributes redirectAttributes) throws Exception{
		service.uelete(dto);
		
		return "redirect:/book/bookList";
	}
	
	@RequestMapping(value = "bookDelete")
	public String bookDel(BookVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		return "redirect:/book/bookList";
	}
	
	
	//userPage
	
	@RequestMapping(value="bookIndex")
	public String BookIndex(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSearchDelNy(): " + vo.getSearchDelNy());
		System.out.println("vo.getSearchOption(): " + vo.getSearchOption());
		System.out.println("vo.getSearchValue(): " + vo.getSearchValue());
		
		setSearchAndPaging(vo);
		List<Book> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/book/user/bookIndex";
	}
	
	@RequestMapping(value="bookDetail")
	public String BookDetail(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		Book result = service.selectSeq(vo);
		model.addAttribute("item", result);
		
		return "infra/book/user/bookDetail";
	}
	
}
