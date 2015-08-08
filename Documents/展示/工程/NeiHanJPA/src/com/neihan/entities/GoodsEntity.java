package com.neihan.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the GOODS database table.
 * 
 */
@Entity
@Table(name="GOODS")
public class GoodsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="GOODS_GID_GENERATOR", sequenceName="GOODSID_SEQUENCE", initialValue=3000000, allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GOODS_GID_GENERATOR")
	@Column(unique=true, nullable=false, precision=22)
	private long gid;

	@Column(length=20)
	private String gcolor;

	@Column(length=4000)
	private String gdescription;

	@Column(length=64)
	private String gname;

	@Column(precision=22)
	private int gno;

	@Column(precision=22)
	private double gprice;

	@Column(precision=22)
	private int grest;

	@Column(length=5)
	private String gsize;

	@Column(length=20)
	private String gtype;

	public GoodsEntity() {
	}

	public long getGid() {
		return this.gid;
	}

	public void setGid(long gid) {
		this.gid = gid;
	}

	public String getGcolor() {
		return this.gcolor;
	}

	public void setGcolor(String gcolor) {
		this.gcolor = gcolor;
	}

	public String getGdescription() {
		return this.gdescription;
	}

	public void setGdescription(String gdescription) {
		this.gdescription = gdescription;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getGno() {
		return this.gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public double getGprice() {
		return this.gprice;
	}

	public void setGprice(double gprice) {
		this.gprice = gprice;
	}

	public int getGrest() {
		return this.grest;
	}

	public void setGrest(int grest) {
		this.grest = grest;
	}

	public String getGsize() {
		return this.gsize;
	}

	public void setGsize(String gsize) {
		this.gsize = gsize;
	}

	public String getGtype() {
		return this.gtype;
	}

	public void setGtype(String gtype) {
		this.gtype = gtype;
	}

}