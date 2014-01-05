package com.dlh.clpgx.modules.sys.service;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Clock;
import org.springside.modules.utils.Encodes;

import com.dlh.clpgx.modules.sys.entity.Company;
import com.dlh.clpgx.modules.sys.entity.User;
import com.dlh.clpgx.modules.sys.repository.CompanyDao;
import com.dlh.clpgx.modules.sys.repository.UserDao;
import com.dlh.clpgx.modules.sys.security.ShiroDbRealm.ShiroUser;
import com.dlh.clpgx.rest.ServiceException;

@Service
@Transactional
public class UserService{
	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	private UserDao userDao;
	private Clock clock = Clock.DEFAULT;	
	@Autowired
	private CompanyDao companyDao;
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}




	
	
	
	

	public List<User> getAllUser() {
		return (List<User>) userDao.findAll();
	}

	public User getUser(Long id) {
		return userDao.findOne(id);
	}

	public User findUserByLoginName(String loginName) {
		return userDao.findByLoginName(loginName);
	}

	public void registerUser(User user) {
		entryptPassword(user);
		user.setRoles("user");
		user.setRegisterDate(clock.getCurrentDate());
		Company company = new Company();
		companyDao.save(company);
		user.setCompany(company);
		userDao.save(user);
	}

	public void updateUser(User user) {
		if (StringUtils.isNotBlank(user.getPlainPassword())) {
			entryptPassword(user);
		}
		userDao.save(user);
	}
	public void deleteUser(Long id) {
		if (isSupervisor(id)) {
		//	logger.warn("操作员{}尝试删除超级管理员用户", getCurrentUserName());
			throw new ServiceException("不能删除超级管理员用户");
		}
		userDao.delete(id);
	}
	/**
	 * 判断是否超级管理员.
	 */
	private boolean isSupervisor(Long id) {
		return id == 1;
	}
	/**
	 * 取出Shiro中的当前用户LoginName.
	 */
	private String getCurrentUserName() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user.getName();
	}
	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	private void entryptPassword(User user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));

		byte[] hashPassword = Digests.sha1(user.getPlainPassword().getBytes(), salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}

	public void setClock(Clock clock) {
		this.clock = clock;
	}
	


}
