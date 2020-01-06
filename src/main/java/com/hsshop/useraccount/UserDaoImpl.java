package com.hsshop.useraccount;

import org.jongo.Jongo;
import org.springframework.stereotype.Repository;

import com.hsshop.exceptionhandlers.ResourceNotFoundException;
import com.hsshop.mongo.constants.MongoCollectionConstants;
import com.hsshop.pojos.LoginPojo;
import com.hsshop.pojos.ProfileIdIncrementation;
import com.hsshop.pojos.RegisterPojo;
import com.hsshop.util.MongoDBUtil;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	@Override
	public LoginPojo validateUser(String email) throws Exception {
		LoginPojo loginPojo =null;
		try {
		loginPojo = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
				.findOne("{email:#}", email).as(LoginPojo.class);
		System.out.println(loginPojo.getPassword());
		//return loginPojo;
		}catch(Exception e) {
			throw new ResourceNotFoundException("Login Credentials not found in DB "+e);
		}
		return loginPojo;
	}

	@Override
	public RegisterPojo register(RegisterPojo registerPojo) {
		RegisterPojo registerPojo1 = null;
		
		registerPojo1 = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
				.findOne("{email:#}", registerPojo.getEmail()).as(RegisterPojo.class);

		return registerPojo1;
	}

	@Override
	public long incrementProfileId(String sequenceName) {
		ProfileIdIncrementation seqId = null;
		try {
			new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_COUNTERS)
					.update("{_id:#}", sequenceName).upsert().with("{$inc:{seq:1}}");
			seqId = new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_COUNTERS)
					.findOne("{_id:#}", sequenceName).as(ProfileIdIncrementation.class);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return seqId.getSeq();

	}

	@Override
	public void insertUserDetails(RegisterPojo registerPojo, long profileId) {

		new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS).insert(
				"{profile_id:#,fullname:#,email:#,phone:#,password:#,age:#,gender:#,address:#}", profileId,
				registerPojo.getFullName(), registerPojo.getEmail(), registerPojo.getPhonenumber(),
				registerPojo.getPassword(), registerPojo.getAge(), registerPojo.getGender(), registerPojo.getAddress());

	}

	@Override
	public boolean changePassword(String email, String pwd1) {

		try {
		new Jongo(MongoDBUtil.getDB()).getCollection(MongoCollectionConstants.CN_LOGINCREDENTIALS)
				.update("{email:#},{$set:{password:#}}", email, pwd1);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
