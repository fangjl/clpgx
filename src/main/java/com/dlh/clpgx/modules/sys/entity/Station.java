package com.dlh.clpgx.modules.sys.entity;
import com.dlh.clpgx.freamwork.domain.IdEntity;
/**
 * 公司下属站点   每个加气公司至少一个加气站
 * @author fjl
 */
public class Station  extends IdEntity {
	private String name;
	private Company company;
	private String address;
	
	
}
