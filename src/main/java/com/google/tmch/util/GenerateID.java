package com.google.tmch.util;

import java.util.HashSet;
import java.util.Set;

public class GenerateID {
	// class variable
	final static String lexicon = "ABCDEFGHIJKLMNOPQRSTUVWXYZ12345674890abcdefghigklmnopqrstuvwxyz";

	final static java.util.Random rand = new java.util.Random();

	// consider using a Map<String,Boolean> to say whether the identifier is being used or not 
	final static Set<String> identifiers = new HashSet<String>();

	public static String randomIdentifier() {
	    StringBuilder builder = new StringBuilder();
	    while(builder.toString().length() == 0) {
	        int length = rand.nextInt(20)+20;
	        for(int i = 0; i < length; i++)
	            builder.append(lexicon.charAt(rand.nextInt(lexicon.length())));
	        if(identifiers.contains(builder.toString()))
	            builder = new StringBuilder();
	    }
	    return builder.toString();
	}
}
