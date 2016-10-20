package com.buyerschoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class User {
	
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int rid;
    
	@Transient
	private String password;
	
	@Column(unique = true)
	private String username;
	@Column
	private String fsname;
	@Column
	private String lsname;
	@Column
	private String sex;
	@Column
	private int age;
	@Column
	private String emailid;
	@Column
	private String address;	

	@Column
	private String mobile;
	
	
	
	
	public User()
	{}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}



	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}




	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	
	public String getMobile() {
		return mobile;
	}


	
	public String getFsname() {
		return fsname;
	}
	public void setFsname(String fsname) {
		this.fsname = fsname;
	}
	
	public String getLsname() {
		return lsname;
	}
	public void setLsname(String lsname) {
		this.lsname = lsname;
	}
	
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	
}

