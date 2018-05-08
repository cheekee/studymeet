package com.studymeet.security;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Service;

@Service
public class DataEncryption {
	
	public String StringToHasingSHA256(String str){
	     
		try {
			StringBuffer sbuf = new StringBuffer();
			MessageDigest mDigest;
			mDigest = MessageDigest.getInstance("SHA-256");
			mDigest.update(str.getBytes());
			
			byte[] msgStr = mDigest.digest() ;
			
			for(int i=0; i < msgStr.length; i++){
				byte tmpStrByte = msgStr[i];
				String tmpEncTxt = Integer.toString((tmpStrByte & 0xff) + 0x100, 16).substring(1);
				
				sbuf.append(tmpEncTxt) ;
			}
			
			return sbuf.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return "";
		}
		
	}
	
}
