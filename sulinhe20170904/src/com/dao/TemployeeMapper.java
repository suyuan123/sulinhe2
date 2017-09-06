package com.dao;

import java.util.List;

import com.pojo.Temployee;

public interface TemployeeMapper {
    
	  List<Temployee> selectall();
	  void insert(Temployee temployee);
}
