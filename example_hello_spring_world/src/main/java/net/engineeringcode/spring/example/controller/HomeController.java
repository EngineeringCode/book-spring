package net.engineeringcode.spring.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.engineeringcode.spring.example.dao.HomeDao;

//컨트롤러 어노테이션
@Controller
@RequestMapping("/*")
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value={"/"}, method=RequestMethod.GET)
	public String index(@RequestParam HashMap<String, String> paramMap, Locale locale, Model model){
		
		return "WEB-INF/views/home/index";
	}
	
	@RequestMapping(value={"/getData"}, method={RequestMethod.GET,RequestMethod.POST})
	public String getData(@RequestParam HashMap<String, String> paramMap, Locale locale, Model model){
		HomeDao homeDao = sqlSession.getMapper(HomeDao.class);
		
		List<HashMap> list = homeDao.getData(paramMap);
		model.addAttribute("list", list);
		
		return "WEB-INF/views/home/getData";
	}
	
	@RequestMapping(value={"/addData"}, method={RequestMethod.GET,RequestMethod.POST})
	public String addData(@RequestParam HashMap<String, String> paramMap, Locale locale, Model model){
		HomeDao homeDao = sqlSession.getMapper(HomeDao.class);
		
		int count = homeDao.addData(paramMap);
		model.addAttribute("count", count);
		
		return "WEB-INF/views/home/addData";
	}
}
