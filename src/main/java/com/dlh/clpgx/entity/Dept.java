package com.dlh.clpgx.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "clpgx_dept")
public class Dept extends IdEntity {

	private String code;
	private String name;
	private String remark;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	

}
