package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Temployee;
import com.seriverimp.TemployeeImp;

@Controller
@RequestMapping("user")
public class UserController {
	
	   @Autowired
	  private TemployeeImp temployeeImp;
	   
	   //注册
	   @RequestMapping("enroll")
	   public String enroll(Temployee temployee)
	   {
		  temployeeImp.enroll(temployee);
		   
		   
		   return "login"; 
	   }
	   
	   //验证其姓名
	   @RequestMapping("check")
	   @ResponseBody
	   public String check(String name)
	   {
		String check = temployeeImp.check(name);
		System.out.println(check);
		if (check.equals("no")) {
			 return "no"; 
		}
		else
		{
			 return "ok"; 
			
		}
	   }
	   
	   //跳转到主界面
	   
	   @RequestMapping("main")
	   public String zhu(HttpSession session)
	   {
		   temployeeImp.zhu(session);
		   return "index";
	   }
	   
	  
	   //登录界面
	   @RequestMapping("login")
	   @ResponseBody
	   public String login(String name,String password,HttpSession session)
	   {
		
		   
		   temployeeImp.zhu(session);
		   String login = temployeeImp.login(name, password);
		   System.out.println(login);
		   if(login.equals("ok"))
		   {
			   return "ok";
			   
		   }
		   else
		   {
			   return "no";
			   
		   }
	   }
	  

}
