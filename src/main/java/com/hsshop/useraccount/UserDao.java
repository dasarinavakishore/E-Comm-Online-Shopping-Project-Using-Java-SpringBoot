package com.hsshop.useraccount;

import org.springframework.stereotype.Repository;

import com.hsshop.pojos.LoginPojo;
import com.hsshop.pojos.RegisterPojo;

@Repository
public interface UserDao {

	LoginPojo validateUser(String email) throws Exception;
	
	RegisterPojo register(RegisterPojo registerPojo);
	
	void insertUserDetails(RegisterPojo registerPojo,long profileId);

	long incrementProfileId(String sequenceName);

	boolean changePassword(String email, String pwd1);


}
