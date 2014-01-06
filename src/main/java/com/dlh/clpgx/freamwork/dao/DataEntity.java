
package com.dlh.clpgx.freamwork.dao;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import org.hibernate.validator.constraints.Length;
import com.dlh.clpgx.modules.sys.entity.Company;
import com.dlh.clpgx.modules.sys.entity.User;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;


/**
 * 数据Entity类
 */
@MappedSuperclass
public abstract class DataEntity extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	/*
	 * 所有业务数据企业是独立的
	 */
	protected Company company;//所属企业
	
	
	
	protected User createBy;	// 创建者
	protected Date createDate;// 创建日期
	protected User updateBy;	// 更新者
	protected Date updateDate;// 更新日期
	protected String delFlag; // 删除标记（0：正常；1：删除；2：审核）
	protected String remarks;	// 备注
	
	
	
	@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="company_id")
	@NotFound(action = NotFoundAction.IGNORE)
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public DataEntity() {
		super();
		this.delFlag = DEL_FLAG_NORMAL;
	}
	
	@PrePersist
	public void prePersist(){
		/*User user = UserUtils.getUser();
		if (user.getId() != null){
			this.updateBy = user;
			this.createBy = user;
		}
		this.updateDate = new Date();
		this.createDate = this.updateDate;
		*/
	}
	  
	@PreUpdate
	public void preUpdate(){
		/*
		User user = UserUtils.getUser();
		if (user.getId() != null){
			this.updateBy = user;
		}
		this.updateDate = new Date();
		*/
	}
	
	@Length(min=0, max=255)
	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@NotFound(action = NotFoundAction.IGNORE)
	public User getCreateBy() {
		return createBy;
	}

	public void setCreateBy(User createBy) {
		this.createBy = createBy;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@NotFound(action = NotFoundAction.IGNORE)
	public User getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(User updateBy) {
		this.updateBy = updateBy;
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	
	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}


	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

}
