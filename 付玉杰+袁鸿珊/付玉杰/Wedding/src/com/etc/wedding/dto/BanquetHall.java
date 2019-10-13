package com.etc.wedding.dto;

public class BanquetHall {
private int	 bhid  ;    
private int	   wgid   ;      
private String	   bhname   ;         
private int	   bhcount   ;        
private double	   bharea   ;        
private String	   bhpillar    ;      
private String	   bhfloor    ;      
private double	   bhheight   ;       
private byte []	   bhpic    ;
public int getBhid() {
	return bhid;
}
public void setBhid(int bhid) {
	this.bhid = bhid;
}
public String getBhname() {
	return bhname;
}
public void setBhname(String bhname) {
	this.bhname = bhname;
}
public int getBhcount() {
	return bhcount;
}
public void setBhcount(int bhcount) {
	this.bhcount = bhcount;
}
public double getBharea() {
	return bharea;
}
public void setBharea(double bharea) {
	this.bharea = bharea;
}
public String getBhpillar() {
	return bhpillar;
}
public void setBhpillar(String bhpillar) {
	this.bhpillar = bhpillar;
}
public String getBhfloor() {
	return bhfloor;
}
public void setBhfloor(String bhfloor) {
	this.bhfloor = bhfloor;
}

public byte[] getBhpic() {
	return bhpic;
}
public void setBhpic(byte[] bhpic) {
	this.bhpic = bhpic;
}
public int getWgid() {
	return wgid;
}
public void setWgid(int wgid) {
	this.wgid = wgid;
}
public double getBhheight() {
	return bhheight;
}
public void setBhheight(double bhheight) {
	this.bhheight = bhheight;
}       

}
