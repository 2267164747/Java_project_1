package com.etc.wedding.dto;

import java.util.List;

public class WeddingGround {
private int	   wgid   ;      
private String	   wgbname    ;      
private String		   wgtype    ;      
private String		   wgexplain   ;     
private String		   wgaddress   ;     
private String		   wgdetail_address ; 
private int	   wgprice   ;     
private byte []	   wgpic ;
private List<BanquetHall> list;
private List<WGDiscount> list2;
public int getWgid() {
	return wgid;
}
public void setWgid(int wgid) {
	this.wgid = wgid;
}
public String getWgbname() {
	return wgbname;
}
public void setWgbname(String wgbname) {
	this.wgbname = wgbname;
}
public String getWgtype() {
	return wgtype;
}
public void setWgtype(String wgtype) {
	this.wgtype = wgtype;
}
public String getWgexplain() {
	return wgexplain;
}
public void setWgexplain(String wgexplain) {
	this.wgexplain = wgexplain;
}
public String getWgaddress() {
	return wgaddress;
}
public void setWgaddress(String wgaddress) {
	this.wgaddress = wgaddress;
}
public String getWgdetail_address() {
	return wgdetail_address;
}
public void setWgdetail_address(String wgdetail_address) {
	this.wgdetail_address = wgdetail_address;
}
public int getWgprice() {
	return wgprice;
}
public void setWgprice(int wgprice) {
	this.wgprice = wgprice;
}
public byte[] getWgpic() {
	return wgpic;
}
public void setWgpic(byte[] wgpic) {
	this.wgpic = wgpic;
}
public List<BanquetHall> getList() {
	return list;
}
public void setList(List<BanquetHall> list) {
	this.list = list;
}
public List<WGDiscount> getList2() {
	return list2;
}
public void setList2(List<WGDiscount> list2) {
	this.list2 = list2;
}    
}
