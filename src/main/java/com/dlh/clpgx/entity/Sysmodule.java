package com.dlh.clpgx.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


//JPA标识
@Entity
@Table(name = "clpgx_sysmodule")

public class Sysmodule extends IdEntity {

	
	public String code;
	public String name;
	public String url;
	
	
	public Sysmodule parent;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@ManyToOne
	public Sysmodule getParent() {
		return parent;
	}
	public void setParent(Sysmodule parent) {
		this.parent = parent;
	}
	
	
	
	
	
	
}
