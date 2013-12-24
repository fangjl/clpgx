package com.dlh.clpgx.entity;
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name = "clpgx_role")
public class Role extends IdEntity  {
	private String name;
	private String remark;
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
