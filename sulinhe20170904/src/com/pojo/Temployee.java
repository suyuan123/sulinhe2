package com.pojo;

public class Temployee {
  private Integer eid;
  private String ename;
  private String eusername;
  private String epassword;
  private String esex;
  private String ephone;
public Integer getEid() {
	return eid;
}
public void setEid(Integer eid) {
	this.eid = eid;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public String getEusername() {
	return eusername;
}
public void setEusername(String eusername) {
	this.eusername = eusername;
}
public String getEpassword() {
	return epassword;
}
public void setEpassword(String epassword) {
	this.epassword = epassword;
}
public String getEsex() {
	return esex;
}
public void setEsex(String esex) {
	this.esex = esex;
}
public String getEphone() {
	return ephone;
}
public void setEphone(String ephone) {
	this.ephone = ephone;
}
@Override
public String toString() {
	return "Temployee [eid=" + eid + ", ename=" + ename + ", eusername="
			+ eusername + ", epassword=" + epassword + ", esex=" + esex
			+ ", ephone=" + ephone + "]";
}
public Temployee(Integer eid, String ename, String eusername, String epassword,
		String esex, String ephone) {
	super();
	this.eid = eid;
	this.ename = ename;
	this.eusername = eusername;
	this.epassword = epassword;
	this.esex = esex;
	this.ephone = ephone;
}
public Temployee() {
	super();
	// TODO Auto-generated constructor stub
}
  
}
