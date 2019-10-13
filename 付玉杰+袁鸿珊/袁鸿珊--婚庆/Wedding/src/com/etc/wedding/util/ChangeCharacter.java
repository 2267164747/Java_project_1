package com.etc.wedding.util;

import java.io.UnsupportedEncodingException;

public class ChangeCharacter {
public String getNew(String str) throws UnsupportedEncodingException{
	String newStr=new String(str.getBytes("iso-8859-1"),"utf-8");
	return newStr;
}

}
