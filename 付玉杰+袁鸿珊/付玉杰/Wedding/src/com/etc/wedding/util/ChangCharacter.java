package com.etc.wedding.util;

import java.io.UnsupportedEncodingException;

public class ChangCharacter {
	public String getNew(String str) throws UnsupportedEncodingException{
		return new String(str.getBytes("ISO-8859-1"),"UTF-8");
	}
}
