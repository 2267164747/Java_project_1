package com.etc.wedding.dto;

public class WGDiscount {
private int	   wgid   ;      
private int   wgdid  ;
private WeddingGround  wg; 
private String	   wgdname  ;       
private String	   wgdcontents   ;
public int getWgdid() {
	return wgdid;
}
public void setWgdid(int wgdid) {
	this.wgdid = wgdid;
}
public WeddingGround getWg() {
	return wg;
}
public void setWg(WeddingGround wg) {
	this.wg = wg;
}
public String getWgdname() {
	return wgdname;
}
public void setWgdname(String wgdname) {
	this.wgdname = wgdname;
}
public String getWgdcontents() {
	return wgdcontents;
}
public void setWgdcontents(String wgdcontents) {
	this.wgdcontents = wgdcontents;
}
public int getWgid() {
	return wgid;
}
public void setWgid(int wgid) {
	this.wgid = wgid;
}   

}
