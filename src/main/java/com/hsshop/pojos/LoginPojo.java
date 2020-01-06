package com.hsshop.pojos;

public class LoginPojo {
	
	private  String email;
	private String password;
	private String role;
	//private int profile_id;
	
	
	
//	public int getProfile_id() {
//		return profile_id;
//	}
//
//	public void setProfile_id(int profile_id) {
//		this.profile_id = profile_id;
//	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "LoginPojo [email=" + email + ", password=" + password + ", role=" + role + "]";
	}

	
}
