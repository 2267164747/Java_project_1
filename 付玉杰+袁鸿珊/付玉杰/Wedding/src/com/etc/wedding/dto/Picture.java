package com.etc.wedding.dto;

public class Picture {
private int 	pid   ;            
private int	   wsfid   ;          
private int	   wsid    ;         
private int	   wcid    ;         
private int	   wdid    ;          
private int	   teid   ;         
private byte[]	   ppic   ;
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public int getWsfid() {
	return wsfid;
}
public void setWsfid(int wsfid) {
	this.wsfid = wsfid;
}
public int getWsid() {
	return wsid;
}
public void setWsid(int wsid) {
	this.wsid = wsid;
}
public int getWcid() {
	return wcid;
}
public void setWcid(int wcid) {
	this.wcid = wcid;
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
public byte[] getPpic() {
	return ppic;
}
public void setPpic(byte[] ppic) {
	this.ppic = ppic;
}         
}
