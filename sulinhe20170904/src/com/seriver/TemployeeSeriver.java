package com.seriver;

import javax.servlet.http.HttpSession;

import com.pojo.Temployee;

public interface TemployeeSeriver {
     String check(String name);
     void zhu(HttpSession session);
     void enroll(Temployee temployee);
     String login(String name,String password);
}
