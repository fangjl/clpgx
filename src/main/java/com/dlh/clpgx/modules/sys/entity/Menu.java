package com.dlh.clpgx.modules.sys.entity;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.google.common.collect.Lists;

/**
 * 菜单Entity
 * @author ThinkGem
 * @version 2013-05-15
 */
@Entity
@Table(name = "sys_menu")
@DynamicInsert @DynamicUpdate
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "parent","childList"})   

public class Menu {
	
	private Long id;
	private Menu parent;	   // 父级菜单
	private String parentIds;  // 所有父级编号
	private String name; 	   // 名称
	private String href; 	   // 链接
	private String target; 	   // 目标（ mainFrame、_blank、_self、_parent、_top）
	private String icon; 	   // 图标
	private Integer sort; 	   // 排序
	private String isShow; 	   // 是否在菜单中显示（1：显示；0：不显示）
	private String permission; // 权限标识
	
	private List<Menu> childList = Lists.newArrayList();// 拥有子菜单列表
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Menu(){
		super();
		this.sort = 30;
	}
	
	public Menu(Long id){
		this();
		this.id = id;
	}
	

	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="parent_id")
	@NotFound(action = NotFoundAction.IGNORE)
	@JsonIgnore
	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
	}

	@JsonIgnore
	@Length(min=1, max=255)
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	@Length(min=1, max=100)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Length(min=0, max=255)
	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	@Length(min=0, max=20)
	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
	
	@Length(min=0, max=100)
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public Integer getSort() {
		return sort;
	}
	
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	@Length(min=1, max=1)
	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}

	@Length(min=0, max=200)
	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	@OneToMany(cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.REMOVE},fetch=FetchType.LAZY,mappedBy="parent")
	@OrderBy(value="sort")
	@NotFound(action = NotFoundAction.IGNORE)
	public List<Menu> getChildList() {
		return childList;
	}

	public void setChildList(List<Menu> childList) {
		this.childList = childList;
	}
	
	
	
	@Transient
	public static void sortList(List<Menu> list, List<Menu> sourcelist, Long parentId){
		for (int i=0; i<sourcelist.size(); i++){
			Menu e = sourcelist.get(i);
			if (e.getParent()!=null && e.getParent().getId()!=null
					&& e.getParent().getId().equals(parentId)){
				list.add(e);
				// 判断是否还有子节点, 有则继续获取子节点
				for (int j=0; j<sourcelist.size(); j++){
					Menu child = sourcelist.get(j);
					if (child.getParent()!=null && child.getParent().getId()!=null
							&& child.getParent().getId().equals(e.getId())){
						sortList(list, sourcelist, e.getId());
						break;
					}
				}
			}
		}
	}

	@Transient
	public boolean isRoot(){
		return isRoot(this.id);
	}
	
	@Transient
	public static boolean isRoot(Long id){
		return id != null && id.equals(1L);
	}
}