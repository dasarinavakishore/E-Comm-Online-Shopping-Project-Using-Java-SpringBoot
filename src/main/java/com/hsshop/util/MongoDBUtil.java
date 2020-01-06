package com.hsshop.util;

import java.util.Arrays;
import java.util.List;

import org.bson.Document;

import com.hsshop.util.MongoDBConstants;
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientOptions;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class MongoDBUtil {

	private static MongoClient mongoClient = null;
	private static MongoDatabase db = null;
	private static DB jongoDB = null;

	private MongoDBUtil() {
	}

	/*
	 * static { initializeDB(); }
	 */

	@SuppressWarnings("deprecation")
	private static void initializeDB() {
		try {
			if (mongoClient == null) {
				List<ServerAddress> serverAddresses = Arrays.asList(new ServerAddress("localhost", 27017));
//				List<MongoCredential> credentials = MongoDBConstant.MONGO_CREDENTIALS;
				if (serverAddresses != null && serverAddresses.size() > 1) {
					MongoClientOptions.Builder builder = new MongoClientOptions.Builder();
// build the connection options
					builder.maxConnectionIdleTime(60000);
					builder.sslEnabled(true);
					MongoClientOptions options = builder.build();

					mongoClient = new MongoClient(serverAddresses, options);
					mongoClient.slaveOk();
				} else {
					mongoClient = new MongoClient(serverAddresses);
				}
			}
			if (db == null) {
				db = mongoClient.getDatabase(MongoDBConstants.DB_NAME);
			}
			if (jongoDB == null) {
				jongoDB = new DB(mongoClient, MongoDBConstants.DB_NAME);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static DB getDB() {
		if (jongoDB == null) {
			initializeDB();
		}
		return jongoDB;
	}

	public static MongoCollection<Document> getCollection(String collectionName) {
		return getMongoDataBase().getCollection(collectionName);
	}

	public static MongoDatabase getMongoDataBase() {
		if (db == null) {
			initializeDB();
		}
		return db;
	}

}
