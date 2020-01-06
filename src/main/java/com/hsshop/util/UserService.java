package com.hsshop.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsshop.pojos.AddressPojo;
import com.hsshop.pojos.LoginPojo;
import com.hsshop.pojos.ProfileIdIncrementation;
import com.hsshop.pojos.RegisterPojo;
import com.hsshop.useraccount.UserDao;

@Service("userService")
public class UserService {

	@Autowired
	private UserDao userDaoImpl;

	PasswordEncoder passwordecoder = new PasswordEncoder();

	@SuppressWarnings("unused")
	public String validateUser(String email, String password) throws Exception{

		LoginPojo loginPojo = userDaoImpl.validateUser(email);
		System.out.println(loginPojo.getPassword());
		
		if (loginPojo == null) {
			return null;
		} else {
			// passwordecoder.bCrypt(password,loginPojo.getPassword());
			if (passwordecoder.bCrypter(password, loginPojo.getPassword())) {
				if (loginPojo.getRole() == "admin") {
					return "admin";
				} else {
					return "user";
				}
			} else
				return "";
		}
	}

	public boolean register(RegisterPojo registerPojo, AddressPojo addressPojo) {
		
		if (userDaoImpl.register(registerPojo) == null) {
			String orginalPassword = passwordecoder.encryptingPassword(registerPojo.getPassword());
			registerPojo.setPassword(orginalPassword);
			long profileId = userDaoImpl.incrementProfileId(ProfileIdIncrementation.INC_PROFILEID);
			userDaoImpl.insertUserDetails(registerPojo, profileId);
			return true;
		}
		return false;
	}

	public void changePassword(String email, String pwd1) {

		userDaoImpl.changePassword(email, passwordecoder.encryptingPassword(pwd1));

	}

}
