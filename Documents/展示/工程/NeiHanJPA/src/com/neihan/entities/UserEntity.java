package com.neihan.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the USERS database table.
 * 
 */
@Entity
@Table(name="USERS")
public class UserEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="USERS_USID_GENERATOR", sequenceName="USERID_SEQUENCE", initialValue=1000000, allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USERS_USID_GENERATOR")
	@Column(unique=true, nullable=false, precision=22)
	private long usid;

	@Column(length=20)
	private String uemail;

	@Column(length=20)
	private String upassword;

	@Column(length=20)
	private String utelephone;

	@Column(precision=1)
	private int utype;

	@Column(length=10)
	private String uusername;

	public UserEntity() {
	}

	public long getUsid() {
		return this.usid;
	}

	public void setUsid(long usid) {
		this.usid = usid;
	}

	public String getUemail() {
		return this.uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpassword() {
		return this.upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUtelephone() {
		return this.utelephone;
	}

	public void setUtelephone(String utelephone) {
		this.utelephone = utelephone;
	}

	public int getUtype() {
		return this.utype;
	}

	public void setUtype(int utype) {
		this.utype = utype;
	}

	public String getUusername() {
		return this.uusername;
	}

	public void setUusername(String uusername) {
		this.uusername = uusername;
	}

}