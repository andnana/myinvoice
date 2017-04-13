package com.ghl.util;

public class StringUtil {
	public static boolean isNull(String str){
		if(str == null || str.length()==0){
			return true;	
		}
		
		return false;
	}
}
