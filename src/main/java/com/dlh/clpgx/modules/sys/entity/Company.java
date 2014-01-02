package com.dlh.clpgx.modules.sys.entity;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Table;
import com.dlh.clpgx.freamwork.domain.IdEntity;
@Entity
@Table(name = "clpgx_company")
public class Company  extends IdEntity{
	
	private String fullName;
	private String shortName;
	private byte[] Logo;
	private String lxr;
	private String lxdh;
	private String email;
	private String fax;
	private String lx;
	private Date   clsj;
	private String sssf;
	private String sscs;
	private String address;
	private String netAdress;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	public byte[] getLogo() {
		return Logo;
	}
	public void setLogo(byte[] logo) {
		Logo = logo;
	}
	public String getLxr() {
		return lxr;
	}
	public void setLxr(String lxr) {
		this.lxr = lxr;
	}
	public String getLxdh() {
		return lxdh;
	}
	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getLx() {
		return lx;
	}
	public void setLx(String lx) {
		this.lx = lx;
	}
	public Date getClsj() {
		return clsj;
	}
	public void setClsj(Date clsj) {
		this.clsj = clsj;
	}
	public String getSssf() {
		return sssf;
	}
	public void setSssf(String sssf) {
		this.sssf = sssf;
	}
	public String getSscs() {
		return sscs;
	}
	public void setSscs(String sscs) {
		this.sscs = sscs;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNetAdress() {
		return netAdress;
	}
	public void setNetAdress(String netAdress) {
		this.netAdress = netAdress;
	}
	
	
	
	
	
}
