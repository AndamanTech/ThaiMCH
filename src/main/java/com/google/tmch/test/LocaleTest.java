package com.google.tmch.test;

import java.util.Locale;

public class LocaleTest {
		   public static void main(String[] a) {
		      // get the default locale
		      Locale l = Locale.getDefault();
		      
//		      l = new Locale("th", "TH");
		     
//		      System.out.println(""+l.get);
		      
		      java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss",new java.util.Locale("th","TH"));
		      System.out.println(sdf.format(new java.util.Date()));
//		      System.out.println(sdf.format("2557"));
		      /*System.out.println("   Language, Country, Variant, Name");
		      System.out.println("");
		      System.out.println("Default locale: ");
		      System.out.println("   "+l.getLanguage()+", "+l.getCountry()+", "
		         +", "+l.getVariant()+", "+l.getDisplayName());
		      // get a predefined locale
		      l = Locale.CANADA_FRENCH;
		      System.out.println("A predefined locale - Locale.CANADA_FRENCH:"); 
		      System.out.println("   "+l.getLanguage()+", "+l.getCountry()+", "
		         +", "+l.getVariant()+", "+l.getDisplayName());
		      // define a new locale
		      l = new Locale("en", "CN");
		      System.out.println("User defined locale -Locale(\"en\",\"CN\"):");
		      System.out.println("   "+l.getLanguage()+", "+l.getCountry()+", "
		         +", "+l.getVariant()+", "+l.getDisplayName());
		      // define another new locale
		      l = new Locale("ll", "CC");
		      System.out.println("User defined locale -Locale(\"ll\",\"CC\"):");
		      System.out.println("   "+l.getLanguage()+", "+l.getCountry()+", "
		         +", "+l.getVariant()+", "+l.getDisplayName());
		      // get the supported locales
		      Locale[] s = Locale.getAvailableLocales();
		      System.out.println("Supported locales: ");
		      for (int i=0; i<s.length; i++) {
		         System.out.println("   "+s[i].getLanguage()+", "
		            +s[i].getCountry()+", "+s[i].getVariant()+", "
		            +s[i].getDisplayName());
		      }*/
		   }
		
}
