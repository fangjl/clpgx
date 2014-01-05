
package com.dlh.clpgx.modules.sys.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Length;
import com.dlh.clpgx.freamwork.domain.IdEntity;


@Entity
@Table(name = "sys_dict")
@DynamicInsert @DynamicUpdate
public class Dict extends  IdEntity {

	private static final long serialVersionUID = 1L;
	private String label;	// 标签名
	private String value;	// 数据值
	private String type;	// 类型
	private String description;// 描述
	private Integer sort;	// 排序

	public Dict() {
		super();
	}
	
	public Dict(Long id) {
		this();
		this.id = id;
	}

	
	
	@Length(min=1, max=100)
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	@Length(min=1, max=100)
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Length(min=1, max=100)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Length(min=0, max=100)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@NotNull
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
}