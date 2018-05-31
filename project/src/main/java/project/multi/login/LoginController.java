package project.multi.login;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {
	@Autowired
	SqlSession session;
	
/*	@ModelAttribute("menulist")
	public List<LoginVO> getMenuList(){
		List<LoginVO> list =
		session.selectList("bakery.all");
		return list;
	}*/
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String orderform() {
		return "loginform";
	}
/*
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public int ordersuccess() {
		ModelAndView mv = new ModelAndView();
		BakeryVO 
		mv.
		mv.setViewName("logon");
		return mv;
	}*/
	
	
@RequestMapping
(value="/supplier", method=RequestMethod.GET)
public String storeform(){
	//모델 : 제품리스트
	return "suppliersignform";
}
@RequestMapping
(value="/supplier", method=RequestMethod.POST)
public String storesuccess(LoginVO vo) throws IllegalStateException, IOException{
	//db추가.....
	//1. 파일업로드 처리
	//System.out.println(vo); //검토용
	MultipartFile imagefile= vo.getImagefile();
		
	String photo= imagefile.getOriginalFilename();
			
	vo.setPhoto(imagefile.getOriginalFilename()); //입력한 파일명이 되니까 Imagename에 넣어준다.
	
	String path = "C:/Users/student/Desktop/project/project/"
			+ "project/src/main/webapp/resources/images/";
	//처음에 파일을 만들면, 경로와 이름은 있는데, 파일내용이 없는 빈파일이 된다.
	File file = new File(path + photo);
			
	//전송파일 내용을 복사
	imagefile.transferTo(file);

	//2. c:.../프로젝트/src/main/webapp/resources/images..insert
	vo.setPhoto(photo);
	session.insert("login.insertApplier",vo);
							  // redirect:/order는 앞에 /를 작성하지말아야한다. 작성하면, 404에러가 뜬다. 
	return "redirect:/login";
}

}






