package com.kbbook.shop.modules.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

//import java.text.DateFormat;
//import java.util.Date;
//import java.util.Locale;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbbook.shop.common.constants.Constants;
import com.kbbook.shop.modules.member.Member;

@Controller
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(MainController.class);
	 */
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/home", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * Date date = new Date(); DateFormat dateFormat =
	 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	 * 
	 * String formattedDate = dateFormat.format(date);
	 * 
	 * model.addAttribute("serverTime", formattedDate );
	 * 
	 * return "home"; }
	 * 
	 * @RequestMapping(value = "/codeGroupList", method = RequestMethod.GET) public
	 * String codeGroupList(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * return "codeGroupList"; }
	 * 
	 * @RequestMapping(value = "/codeGroupRegForm", method = RequestMethod.GET)
	 * public String codeGroupRegForm(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * return "codeGroupRegForm"; }
	 */
	@RequestMapping(value="/")
	public String Enter() throws Exception{
		return "infra/main/dmin/enter";
	}
	
	@RequestMapping(value="/dminLogin")
	public String DminLogin() throws Exception{
		return "infra/main/dmin/dminLogin";
	}
	
	@RequestMapping(value="/svg")
	public String svg() throws Exception{
		return "svg";
	}
	
	@RequestMapping(value="/main")
	public String Main(Model model) throws Exception{
		
		List<Main> main =service.mainList();
		model.addAttribute("main", main);
		
		List<Main> best = service.bestList();
		model.addAttribute("best", best);
		
		List<Main> newList = service.newList();
		model.addAttribute("newList", newList);
		
		return "infra/main/user/main";
	}
	
	//로그인 프로세스
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Main dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Main rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Main rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessName", rtMember2.getName());

				returnMap.put("rt", "success");
			} else {
				

				returnMap.put("rt", "fail");
			}
		} else {
			

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
}
