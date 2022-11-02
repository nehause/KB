package com.kbbook.shop.modules.main;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kbbook.shop.common.constants.Constants;

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
				httpSession.setAttribute("sessUserName", rtMember2.getUserName());

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
	
	@RequestMapping(value = "/publicList")
	public String publicCorona1List(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "http://apis.data.go.kr/1360000/RoadWthrInfoService/getStdNodeLinkRoadWw?numOfRows=10&pageNo=1&hhCode=00&serviceKey=ZHUBnoKsq%2FpaBjWEEZLO6jmi%2ByqIfiXayBmBB%2BvorGYStf0aY7mR2uPEfnaaCdBSQArNqO1bpcvgKLzZpgzVMg%3D%3D&stdLinkId=2580008700&dataType=JSON";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		System.out.println("######## Line");
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
		
		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		List<Main> items = new ArrayList<Main>();
		items = (List<Main>) body.get("items");
		
		
		System.out.println("item.size(): " + items.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		return "infra/main/dmin/publicCCTVWeather";
	}
	
	
}
