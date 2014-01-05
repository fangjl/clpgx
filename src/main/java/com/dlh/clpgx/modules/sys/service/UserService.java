package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.BaseService;
import com.dlh.clpgx.modules.sys.entity.Company;
import com.dlh.clpgx.modules.sys.entity.Office;
import com.dlh.clpgx.modules.sys.entity.Role;
import com.dlh.clpgx.modules.sys.entity.User;
import com.dlh.clpgx.modules.sys.repository.CompanyDao;
import com.dlh.clpgx.modules.sys.repository.OfficeDao;
import com.dlh.clpgx.modules.sys.repository.RoleDao;
import com.dlh.clpgx.modules.sys.repository.UserDao;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Clock;
import org.springside.modules.utils.Encodes;
@Service
@Transactional(readOnly = true)
public class  UserService  extends  BaseService{
	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;

	private Clock clock = Clock.DEFAULT;
	@Autowired
	private CompanyDao companyDao;
	@Autowired
	private OfficeDao officeDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private RoleDao roleDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(User user){
		userDao.save(user);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(User user){
		userDao.save(user);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		userDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public User findOne(Long id){
		return userDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<User> findAll(){
		return userDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<User> findPageByFieldsOrCriteria(BaseQuery vo){
		return userDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<User> findPageByFieldsAndCriteria(BaseQuery vo){
		return userDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	

	public User findUserByLoginName(String loginName){
		return userDao.findUserByLoginName(loginName);
	}
	
	@Transactional(readOnly = false)
	public void registerUser(User user) {
		
		entryptPassword(user);
		Company company = new Company();
		company.setFullName("深圳深岩有限公司");
		companyDao.save(company);
		Office office = new Office();
		office.setCompany(company);
		office.setType("1"); //加气站
		office.setName("深圳深岩有限公司");
		officeDao.save(office);
		user.setCompany(company);
		userDao.save(user);
		Role role = new Role();
		role.setName("系统管理员");
		role.setOffice(office);
		role.addUser(user);
		roleDao.save(role);
		
		
	}
	

	/**
	 * 验证密码
	 * @param plainPassword 明文密码
	 * @param password 密文密码
	 * @return 验证成功返回true
	 */
	public static boolean validatePassword(String plainPassword, String password) {
		byte[] salt = Encodes.decodeHex(password.substring(0,16));
		byte[] hashPassword = Digests.sha1(plainPassword.getBytes(), salt, HASH_INTERATIONS);
		return password.equals(Encodes.encodeHex(salt)+Encodes.encodeHex(hashPassword));
	}
	
	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	private void entryptPassword(User user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));

		byte[] hashPassword = Digests.sha1(user.getPassword().getBytes(), salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}

	

	
	
	
	
}
