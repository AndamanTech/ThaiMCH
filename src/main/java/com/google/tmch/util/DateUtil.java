package com.google.tmch.util;

public class DateUtil {
	public static String getThaiCurrentTime(){
		java.text.SimpleDateFormat thaiCurrentTime = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss",new java.util.Locale("th","TH"));
	      System.out.println(thaiCurrentTime.format(new java.util.Date()));
		return thaiCurrentTime.format(new java.util.Date());
	}
}
