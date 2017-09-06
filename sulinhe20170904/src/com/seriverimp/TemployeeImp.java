package com.seriverimp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.TemployeeMapper;
import com.pojo.Temployee;
import com.seriver.TemployeeSeriver;
@Service
public class TemployeeImp implements TemployeeSeriver{

	   @Autowired 
	   private TemployeeMapper temployeeMapper;
    
	   //验证用户名
	@Override
	public String check(String name) {
		  List<Temployee> selectall = temployeeMapper.selectall();
		  
		  for (Temployee temployee : selectall) {
			  System.out.println(temployee);
			   if(temployee.getEusername().equals(name))
			   {
				   return "no";
			   }
			   else
			   {
				   
				   return "ok";
			   }
			  
		}
		return null;
	}

	 //获取所有用户信息
	@Override
	public void zhu(HttpSession session) {
		List<Temployee> selectall = temployeeMapper.selectall();
		session.setAttribute("list",selectall);
		
	}
     //注册用户
	@Override
	public void enroll(Temployee temployee) {
		     temployeeMapper.insert(temployee);
		
	}
    //登录
	@Override
	public String login(String name, String password) {
	         
		List<Temployee> selectall = temployeeMapper.selectall();
		for (Temployee temployee : selectall) {
			
			if (temployee.getEusername().equals(name) &&temployee.getEpassword().equals(password)) {
				return "ok";
			}
			else
			{
				return "no";
				
			}
		}
		return null;
	}
	   
	
	  
	
	  
}
