package com.dlh.clpgx.modules.sys.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.dlh.clpgx.freamwork.domain.IdEntity;
@Entity
@Table(name = "sys_role")
public class Role  extends IdEntity{

	private String code;
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
	private String name;
	private String remark;
	
	
	
	
	
}
