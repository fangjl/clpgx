package com.dlh.clpgx.entity;

import javax.persistence.*;
import org.hibernate.validator.constraints.Length;
@Entity
@Table(name = "fill_records")
public class FillRecords extends IdEntity{
	//date formats
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * cindex       db_column: c_index 
     */ 	
	@Length(max=255)
	
	private java.lang.String cindex;
    /**
     * starttime       db_column: starttime 
     */ 	
	@Length(max=255)
	
	private java.lang.String starttime;
    /**
     * duration       db_column: duration 
     */ 	
	@Length(max=255)
	
	private java.lang.String duration;
    /**
     * normalfill       db_column: normalfill 
     */ 	
	@Length(max=255)
	
	private java.lang.String normalfill;
    /**
     * chipcode       db_column: chipcode 
     */ 	
	@Length(max=255)
	
	private java.lang.String chipcode;
    /**
     * gascylindercode       db_column: gascylindercode 
     */ 	
	@Length(max=255)
	
	private java.lang.String gascylindercode;
    /**
     * departcode       db_column: departcode 
     */ 	
	@Length(max=255)
	
	private java.lang.String departcode;
    /**
     * producdate       db_column: producdate 
     */ 	
	@Length(max=255)
	
	private java.lang.String producdate;
    /**
     * clientcode       db_column: clientcode 
     */ 	
	@Length(max=255)
	
	private java.lang.String clientcode;
    /**
     * filltype       db_column: filltype 
     */ 	
	@Length(max=255)
	
	private java.lang.String filltype;
    /**
     * worker       db_column: worker 
     */ 	
	@Length(max=255)
	
	private java.lang.String worker;
    /**
     * initweight       db_column: initweight 
     */ 	
	@Length(max=255)
	
	private java.lang.String initweight;
    /**
     * fillweight       db_column: fillweight 
     */ 	
	@Length(max=255)
	
	private java.lang.String fillweight;
    /**
     * desweight       db_column: desweight 
     */ 	
	@Length(max=255)
	
	private java.lang.String desweight;
    /**
     * revdata       db_column: revdata 
     */ 	
	@Length(max=255)
	
	private java.lang.String revdata;
	//columns END


	public FillRecords(){
	}

	
	
	@Column(name = "c_index", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getCindex() {
		return this.cindex;
	}
	
	public void setCindex(java.lang.String value) {
		this.cindex = value;
	}
	
	@Column(name = "starttime", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getStarttime() {
		return this.starttime;
	}
	
	public void setStarttime(java.lang.String value) {
		this.starttime = value;
	}
	
	@Column(name = "duration", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getDuration() {
		return this.duration;
	}
	
	public void setDuration(java.lang.String value) {
		this.duration = value;
	}
	
	@Column(name = "normalfill", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getNormalfill() {
		return this.normalfill;
	}
	
	public void setNormalfill(java.lang.String value) {
		this.normalfill = value;
	}
	
	@Column(name = "chipcode", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getChipcode() {
		return this.chipcode;
	}
	
	public void setChipcode(java.lang.String value) {
		this.chipcode = value;
	}
	
	@Column(name = "gascylindercode", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getGascylindercode() {
		return this.gascylindercode;
	}
	
	public void setGascylindercode(java.lang.String value) {
		this.gascylindercode = value;
	}
	
	@Column(name = "departcode", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getDepartcode() {
		return this.departcode;
	}
	
	public void setDepartcode(java.lang.String value) {
		this.departcode = value;
	}
	
	@Column(name = "producdate", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getProducdate() {
		return this.producdate;
	}
	
	public void setProducdate(java.lang.String value) {
		this.producdate = value;
	}
	
	@Column(name = "clientcode", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getClientcode() {
		return this.clientcode;
	}
	
	public void setClientcode(java.lang.String value) {
		this.clientcode = value;
	}
	
	@Column(name = "filltype", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getFilltype() {
		return this.filltype;
	}
	
	public void setFilltype(java.lang.String value) {
		this.filltype = value;
	}
	
	@Column(name = "worker", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getWorker() {
		return this.worker;
	}
	
	public void setWorker(java.lang.String value) {
		this.worker = value;
	}
	
	@Column(name = "initweight", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getInitweight() {
		return this.initweight;
	}
	
	public void setInitweight(java.lang.String value) {
		this.initweight = value;
	}
	
	@Column(name = "fillweight", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getFillweight() {
		return this.fillweight;
	}
	
	public void setFillweight(java.lang.String value) {
		this.fillweight = value;
	}
	
	@Column(name = "desweight", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getDesweight() {
		return this.desweight;
	}
	
	public void setDesweight(java.lang.String value) {
		this.desweight = value;
	}
	
	@Column(name = "revdata", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getRevdata() {
		return this.revdata;
	}
	
	public void setRevdata(java.lang.String value) {
		this.revdata = value;
	}
	

	

}
