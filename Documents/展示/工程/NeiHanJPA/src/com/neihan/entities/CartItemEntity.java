package com.neihan.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CART_ITEM database table.
 * 
 */
@Entity
@Table(name="CART_ITEM")
public class CartItemEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, precision=22)
	private long ciid;

	@Column(precision=22)
	private int cinum;

	@Column(precision=22)
	private int gid;

	@Column(precision=22)
	private int usid;

	public CartItemEntity() {
	}

	public long getCiid() {
		return this.ciid;
	}

	public void setCiid(long ciid) {
		this.ciid = ciid;
	}

	public int getCinum() {
		return this.cinum;
	}

	public void setCinum(int cinum) {
		this.cinum = cinum;
	}

	public int getGid() {
		return this.gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public int getUsid() {
		return this.usid;
	}

	public void setUsid(int usid) {
		this.usid = usid;
	}

}