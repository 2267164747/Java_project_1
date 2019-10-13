package com.etc.wedding.dto;

public class WeddingStyle {
	/*
	 wsid
	 wstype 
	 wsname
	  wsprice
	   wsdescription
	 wslabel
	 
	 wsfid
	 wsid
	 wsfmain
	 wsfvice
	 wsfforeword
	 wsfcontents1
	 wsfcontents2
	 wsfcontents3
	 wsfcontents4
	 */
	/*
	 int	 wsid    ;         
 String	   wstype   ;         
 String	   wsname   ;        
 int	   wsprice      ;   
 String	   wsdescription  ;   
 String	   wslabel

	 int	 wsfid    ; //Íâ¼ü
int wsid;
	String   wsfmain  ;        
 String	   wsfvice   ;         
 String	   wsfforeword    ;   
 String	   wsfcontents1   ;   
 String	    wsfcontents2   ;   
 String	   wsfcontents3   ;   
 String	   wsfcontents4  
	 */
private int	 wsid    ;         //
private String	   wstype   ;         
private String	   wsname   ;        
private int	   wsprice      ;   
private String	   wsdescription  ;   
private String	   wslabel   ;
public int getWsid() {
	return wsid;
}
public void setWsid(int wsid) {
	this.wsid = wsid;
}
public String getWstype() {
	return wstype;
}
public void setWstype(String wstype) {
	this.wstype = wstype;
}
public String getWsname() {
	return wsname;
}
public void setWsname(String wsname) {
	this.wsname = wsname;
}
public int getWsprice() {
	return wsprice;
}
public void setWsprice(int wsprice) {
	this.wsprice = wsprice;
}
public String getWsdescription() {
	return wsdescription;
}
public void setWsdescription(String wsdescription) {
	this.wsdescription = wsdescription;
}
public String getWslabel() {
	return wslabel;
}
public void setWslabel(String wslabel) {
	this.wslabel = wslabel;
}    
}
