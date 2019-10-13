package com.etc.wedding.dto;

import java.util.Date;

public class Reservation {
private int	  rid   ;           
private int	   huid    ;         
private int	   wdid     ;        
private int	   teid    ;         
private int	   wgid     ;         
private int	   wsid    ;       
private Date	   rdate   ;       
private String	   remark   ;
private String wgname;
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public int getHuid() {
	return huid;
}
public void setHuid(int huid) {
	this.huid = huid;
}
public int getWdid() {
	return wdid;
}
public void setWdid(int wdid) {
	this.wdid = wdid;
}
public int getTeid() {
	return teid;
}
public void setTeid(int teid) {
	this.teid = teid;
}
public int getWgid() {
	return wgid;
}
public void setWgid(int wgid) {
	this.wgid = wgid;
}
public int getWsid() {
	return wsid;
}
public void setWsid(int wsid) {
	this.wsid = wsid;
}
public Date getRdate() {
	return rdate;
}
public void setRdate(Date rdate) {
	this.rdate = rdate;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
public String getWgname() {
	return wgname;
}
public void setWgname(String wgname) {
	this.wgname = wgname;
}      
}
