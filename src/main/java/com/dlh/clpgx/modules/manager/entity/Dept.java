/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.dlh.clpgx.modules.manager.entity;

import javax.persistence.*;

import org.hibernate.validator.constraints.Length;

import com.dlh.clpgx.freamwork.domain.IdEntity;


@Entity
@Table(name = "clpgx_dept")
public class Dept extends IdEntity{
	
	
	//date formats
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
   
	
    /**
     * code       db_column: code 
     */ 	
	@Length(max=255)
	private java.lang.String code;
    /**
     * name       db_column: name 
     */ 	
	@Length(max=255)
	private java.lang.String name;
    /**
     * remark       db_column: remark 
     */ 	
	@Length(max=255)
	private java.lang.String remark;
	//columns END


	public Dept(){
	}

	public Dept(
		java.lang.Long id
	){
		this.id = id;
	}
	
	
	@Column(name = "code", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getCode() {
		return this.code;
	}
	
	public void setCode(java.lang.String value) {
		this.code = value;
	}
	
	@Column(name = "name", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "remark", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	

	
}

