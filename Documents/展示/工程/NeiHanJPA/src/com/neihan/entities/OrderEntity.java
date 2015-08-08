package com.neihan.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ORDERS database table.
 * 
 */
@Entity
@Table(name="ORDERS")
public class OrderEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="ORDERS_OID_GENERATOR", sequenceName="ORDERID_SEQUENCE", initialValue=5000000, allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="ORDERS_OID_GENERATOR")
	@Column(unique=true, nullable=false, precision=22)
	private long oid;

	@Column(precision=22)
	private int gid;

	@Column(precision=1)
	private int ostate;

	@Column(precision=22)
	private int usid;

	public OrderEntity() {
	}

	public long getOid() {
		return this.oid;
	}

	public void setOid(long oid) {
		this.oid = oid;
	}

	public int getGid() {
		return this.gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public int getOstate() {
		return this.ostate;
	}

	public void setOstate(int ostate) {
		this.ostate = ostate;
	}

	public int getUsid() {
		return this.usid;
	}

	public void setUsid(int usid) {
		this.usid = usid;
	}

}