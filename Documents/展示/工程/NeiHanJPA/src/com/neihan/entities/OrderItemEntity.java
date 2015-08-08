package com.neihan.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ORDER_ITEM database table.
 * 
 */
@Entity
@Table(name="ORDER_ITEM")
public class OrderItemEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, precision=22)
	private long oiid;

	@Column(precision=22)
	private int gid;

	@Column(precision=22)
	private int oid;

	@Column(precision=22)
	private int oinum;

	public OrderItemEntity() {
	}

	public long getOiid() {
		return this.oiid;
	}

	public void setOiid(long oiid) {
		this.oiid = oiid;
	}

	public int getGid() {
		return this.gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public int getOid() {
		return this.oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getOinum() {
		return this.oinum;
	}

	public void setOinum(int oinum) {
		this.oinum = oinum;
	}

}