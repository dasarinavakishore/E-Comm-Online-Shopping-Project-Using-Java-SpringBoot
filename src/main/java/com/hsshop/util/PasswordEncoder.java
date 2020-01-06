package com.hsshop.util;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service("passwordecoder")
public class PasswordEncoder {

	public String encryptingPassword(String password) {
		String originalPassword = password;
		String generatedSecuredPasswordHash = BCrypt.hashpw(originalPassword, BCrypt.gensalt(12));
		//System.out.println(generatedSecuredPasswordHash);

		return generatedSecuredPasswordHash;

	}
	
	public boolean bCrypter(String originalPassword,String generatedSecuredPasswordHash) {
		
		boolean matched = BCrypt.checkpw(originalPassword, generatedSecuredPasswordHash);
		System.out.println(matched);
		
		if(BCrypt.checkpw(originalPassword, generatedSecuredPasswordHash))
			return true;
		else
			return false;
	}
}
