package com.dlh.clpgx.modules.manager.entity;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import com.dlh.clpgx.freamwork.domain.IdEntity;
/**
 * 钢瓶档案
 * @author wqh
 *
 */
@Entity
@Table(name="gas_tank")
public class GasTank extends IdEntity {
	
	//RFID芯片编码
	@Column(name="XPBM",length=80)
	private String xpbm; 
	
	//所属省份
	@Column(name="SSSF",length=20)
	private String sssf;
	
	//所属城市
	@Column(name="SSCS",length=20)
	private String sscs; 
	
	//所属区域
	@Column(name="SSQY",length=20)
	private String ssqy; 
	
	//企业编码
	@Column(name="QYBM",length=20)
	private String qybm; 
	
	/*
	 * 全局一维码，所属城市+所属区域+企业编码+局部一维码
	 */
	@Column(name="ABARCODE",length=100)
	private String abarcode; 
	
	/*
	 * 全局一维码，所属城市+所属区域+企业编码+局部一维码
	 */
	@Column(name="GPID",length=40)
	private String gpid; 
	
	
	//一维码
	@Column(name="BARCODE",length=80)
	private String barcode; 
	
	//钢瓶编码
	@Column(name="GPBM",length=80)
	private String gpbm;   
	
	//(站点编码)
	@Column(name="ZDBM",length=40)
	private String zdbm;  
	
	//(客户编码)
	@Column(name="KHBM",length=40)
	private String khbm;
	
	//建档时间
	@Column(name="JDSJ")
	private java.util.Date jdsj; 
	
	//建档人
	@Column(name="JDR",length=20)  
	private String jdr; 
	
	//生产日期
	@Column(name="SCRQ")
	private java.util.Date scrq; 
	
	//钢瓶生产厂家编码
	@Column(name="SCCJ",length=40)
	private String sccj;   
	
	//发瓶时间
	@Column(name="FPSJ")
	private java.util.Date fpsj; 
	
	//发瓶人
	@Column(name="FPR",length=20)  
	private String fpr;  
	
	//规格型号，12kg,15kg
	@Column(name="GGXH")
	private String ggxh; 
	
	//充装介质
	@Column(name="MEDIUM")
	private String medium;  
	
	//钢瓶类型 (0:普通瓶1:智能瓶) 有rfid的为智能瓶
	@Column(name="GPLX", columnDefinition="number(1,0) default 0")
	private Integer gplx; 
	
	//皮重
	@Column(name="PZ")  
	private Double pz;
	
	//使用年限
	@Column(name="SYNX")
	private Integer synx;  
	
	//强检查周期
	@Column(name="QJZQ")
	private Integer qjzq;  
	
	//最后充装时间
	@Column(name="CZSJ")
	private java.util.Date czsj; 
	
	//建档方式
	@Column(name="JDFS")
	private Integer jdfs;    
	
	//业务流转平台状态
	@Column(name="YWZT")
	private Integer ywzt;   
	
	
	//上次检验日期
	@Column(name="LASHCHECKTIME")
	private java.util.Date lastCheckTime;
	
	//下次检验日期
	@Column(name="NEXTCHECKTIME")
	private java.util.Date nextCheckTime;
	
    
	
	public GasTank() {
		super();
	}

	public GasTank(String xpbm, String barcode, String gpbm, String zdbm,
			String sccj, String ggxh, String medium, Double pz,
			Date nextCheckTime) {
		super();
		this.xpbm = xpbm;
		this.barcode = barcode;
		this.gpbm = gpbm;
		this.zdbm = zdbm;
		this.sccj = sccj;
		this.ggxh = ggxh;
		this.medium = medium;
		this.pz = pz;
		this.nextCheckTime = nextCheckTime;
	}
	
	
	
	/* 
	 * 全局一维码
	 * 芯片唯一码维码=企业编码+钢瓶编码  ；许工
	 */
	public String getGpid() {
		return gpid;
	}

	/*
	 * 全局一维码
	 * 芯片唯一码维码=企业编码+钢瓶编码  ；许工
	 */
	public void setGpid(String gpid) {
		this.gpid = gpid;
	}

	/**
	 * rfid编码
	 * @return
	 */
	public String getXpbm() {
		return xpbm;
	}

	/**
	 * rfid编码
	 * @param xpbm
	 */
	public void setXpbm(String xpbm) {
		this.xpbm = xpbm;
	}
    
	/**
	 * 一维码
	 * @return
	 */
	public String getBarcode() {
		return barcode;
	}
    
	/**
	 * 一维码
	 * @param barcode
	 */
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
   
	/**
	 * 钢印号
	 * @return
	 */
	public String getGpbm() {
		return gpbm;
	}
    
	/**
	 * 钢印号
	 * @param gpbm
	 */
	public void setGpbm(String gpbm) {
		this.gpbm = gpbm;
	}
    
	
	/**
	 * 建档时间
	 * @return
	 */
	public java.util.Date getJdsj() {
		return jdsj;
	}
    
    /**
     * 建档时间
     * @param jdsj
     */
	public void setJdsj(java.util.Date jdsj) {
		this.jdsj = jdsj;
	}
    
     
	/**
	 * 生产日期
	 * @return
	 */
	public java.util.Date getScrq() {
		return scrq;
	}
    
	/**
	 * 生产日期
	 * @param scrq
	 */
	public void setScrq(java.util.Date scrq) {
		this.scrq = scrq;
	}
    
	/**
	 * /钢瓶生产厂家编码号
	 * @return
	 */
	public String getSccj() {
		return sccj;
	}
    
	/**
	 * /钢瓶生产厂家编码号
	 * @param sccj
	 */
	public void setSccj(String sccj) {
		this.sccj = sccj;
	}

    /**
     * 介质
     * @return
     */
	public String getMedium() {
		return medium;
	}
    

	/**
	 * 介质
	 * @param medium
	 */
	public void setMedium(String medium) {
		this.medium = medium;
	}
    
	/**
	 * 钢瓶规格型号
	 * @return
	 */
	public String getGgxh() {
		return ggxh;
	}

    
	/**
	 * 钢瓶规格型号
	 * @return
	 */
	public void setGgxh(String ggxh) {
		this.ggxh = ggxh;
	}

    
	/**
	 * 钢瓶类型
	 * @return
	 */
	public Integer getGplx() {
		return gplx;
	}
 
    
	/**
	 * 钢瓶类型
	 * @return
	 */
	public void setGplx(Integer gplx) {
		this.gplx = gplx;
	}
    
	/**
	 * 所属城市
	 * @return
	 */
	public String getSscs() {
		return sscs;
	}

	/**
	 * 所属城市
	 * @return
	 */
	public void setSscs(String sscs) {
		this.sscs = sscs;
	}
    
	/**
	 * 所属区域
	 * @return
	 */
	public String getSsqy() {
		return ssqy;
	}
    
	/**
	 * 所属区域
	 * @return
	 */
	public void setSsqy(String ssqy) {
		this.ssqy = ssqy;
	}
    
	/**
	 * 企业编码
	 * @return
	 */
	public String getQybm() {
		return qybm;
	}
   
	/**
	 * 企业编码
	 * @return
	 */
	public void setQybm(String qybm) {
		this.qybm = qybm;
	}
    
	/**
	 * 全局一维码，所属城市+所属区域+企业编码+局部一维码
	 * @return
	 */
	public String getAbarcode() {
		return abarcode;
	}
    
	/**
	 * 全局一维码，所属城市+所属区域+企业编码+局部一维码
	 * @return
	 */
	public void setAbarcode(String abarcode) {
		this.abarcode = abarcode;
	}
    
	/**
	 * 站点编号
	 * @return
	 */
	public String getZdbm() {
		return zdbm;
	}
    
	/**
	 * 站点编号
	 * @return
	 */
	public void setZdbm(String zdbm) {
		this.zdbm = zdbm;
	}
    
	/**
	 * 建档人
	 * @return
	 */
	public String getJdr() {
		return jdr;
	}
    
	/**
	 * 建档人
	 * @return
	 */
	public void setJdr(String jdr) {
		this.jdr = jdr;
	}
    
	/**
	 * 发瓶时间
	 * @return
	 */
	public java.util.Date getFpsj() {
		return fpsj;
	}
    
	/**
	 * 发瓶时间
	 * @return
	 */
	public void setFpsj(java.util.Date fpsj) {
		this.fpsj = fpsj;
	}
    
	/**
	 * 发瓶人
	 * @return
	 */
	public String getFpr() {
		return fpr;
	}

	/**
	 * 发瓶人
	 * @return
	 */
	public void setFpr(String fpr) {
		this.fpr = fpr;
	}
    
	/**
	 * 皮重
	 * @return
	 */
	public Double getPz() {
		return pz;
	}
    
	/**
	 * 皮重
	 * @return
	 */
	public void setPz(Double pz) {
		this.pz = pz;
	}
	/**
	 * 使用年限
	 * @return
	 */
	public Integer getSynx() {
		return synx;
	}
    
	/**
	 * 使用年限
	 * @return
	 */
	public void setSynx(Integer synx) {
		this.synx = synx;
	}
	/**
	 * 强检周期
	 * @return
	 */
	public Integer getQjzq() {
		return qjzq;
	}
    
	/**
	 * 强检周期
	 * @return
	 */
	public void setQjzq(Integer qjzq) {
		this.qjzq = qjzq;
	}
    
	/**
	 * 最后充装时间
	 * @return
	 */
	public java.util.Date getCzsj() {
		return czsj;
	}
    
	/**
	 * 最后充装时间
	 * @return
	 */
	public void setCzsj(java.util.Date czsj) {
		this.czsj = czsj;
	}
    
	/**
	 * 建档方式
	 * @return
	 */
	public Integer getJdfs() {
		return jdfs;
	}

	/**
	 * 建档方式
	 * @return
	 */
	public void setJdfs(Integer jdfs) {
		this.jdfs = jdfs;
	}
   
	/**
	 * 业务流转平台转状态
	 * @return
	 */
	public Integer getYwzt() {
		return ywzt;
	}
   
	/**
	 * 业务流转平台转状态
	 * @return
	 */
	public void setYwzt(Integer ywzt) {
		this.ywzt = ywzt;
	}
    
	/**
	 * 客户编码
	 * @return
	 */
	public String getKhbm() {
		return khbm;
	}

	/**
	 * 客户编码
	 * @return
	 */
	public void setKhbm(String khbm) {
		this.khbm = khbm;
	}
   
	/**
	 * 上次检验日期
	 * @return
	 */
	public java.util.Date getLastCheckTime() {
		return lastCheckTime;
	}
	
	/**
	 * 上次检验日期
	 * @return
	 */
	public void setLastCheckTime(java.util.Date lastCheckTime) {
		this.lastCheckTime = lastCheckTime;
	}
    
	/**
	 * 下次检验日期
	 * @return
	 */
	public java.util.Date getNextCheckTime() {
		return nextCheckTime;
	}

	/**
	 * 下次检验日期
	 * @return
	 */
	public void setNextCheckTime(java.util.Date nextCheckTime) {
		this.nextCheckTime = nextCheckTime;
	}

	
	/**
	 * 所属省份
	 * @return
	 */
	public String getSssf() {
		return sssf;
	}

	/**
	 * 所属省份
	 * @return
	 */
	public void setSssf(String sssf) {
		this.sssf = sssf;
	}
	
}
