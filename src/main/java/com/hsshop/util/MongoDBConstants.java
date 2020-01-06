package com.hsshop.util;

import java.util.List;

import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;

@SuppressWarnings("unchecked")
public class MongoDBConstants {

	public static List<ServerAddress> SERVER_ADDRESSES;
	public static List<MongoCredential> MONGO_CREDENTIALS;
	public static String DB_NAME = "hsshopping";

	static {
		try {

			String getAWSRegion = "localhost";
			Object result = getAWSRegion;
			SERVER_ADDRESSES = (List<ServerAddress>) result;

		} catch (Exception e) {

		}

	}
}
