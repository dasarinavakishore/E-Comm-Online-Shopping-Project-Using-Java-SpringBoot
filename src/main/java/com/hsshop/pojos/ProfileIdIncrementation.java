package com.hsshop.pojos;

import org.springframework.data.annotation.Id;


public class ProfileIdIncrementation {
	public static final String INC_PROFILEID = "profileId";
	@Id
	String id;
	long seq;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public long getSeq() {
		return seq;
	}

	public void setSeq(long seq) {
		this.seq = seq;
	}

}
