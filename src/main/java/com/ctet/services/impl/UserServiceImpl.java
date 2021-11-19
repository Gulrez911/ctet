package com.ctet.services.impl;

import java.util.Date;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ctet.data.Company;
import com.ctet.data.User;
import com.ctet.repositories.UserRepository;
import com.ctet.services.CompanyService;
import com.ctet.services.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	@Autowired
	CompanyService companyService;

	public User authenticate(String user, String password, String company) {
		Company comp = companyService.findByCompanyName(company);
		if (comp == null) {
			return null;
		}

		User usr = userRepository.findByPrimaryKeyAndPassword(user, password, comp.getCompanyId());
		if (usr == null) {
			return null;
		}

		return usr;
	}

	@Override
	public void saveOrUpdate(User user) {
		User user2 = userRepository.findByPrimaryKey(user.getEmail());
		if (user2 != null) {
			user.setUpdateDate(new Date());
			user.setCreateDate(user2.getCreateDate());
			user.setId(user2.getId());
			Mapper mapper = new DozerBeanMapper();
			mapper.map(user, user2);
			userRepository.save(user2);
		} else {
			user.setCreateDate(new Date());
			userRepository.save(user);
		}
	}

	@Override
	public User findByPrimaryKey(String email) {
		// TODO Auto-generated method stub
		List<User> usrs = userRepository.findByPrimaryKeyFromList(email);
		if (usrs == null || usrs.size() == 0) {
			return null;
		}

		return usrs.get(0);
		// return userRepository.findByPrimaryKey(email, companyId);
	}
	
	@Override
	public User findByPrimaryKey(String email, String companyId) {
		// TODO Auto-generated method stub
		List<User> usrs = userRepository.findByPrimaryKeyFromList(email, companyId);
		if (usrs == null || usrs.size() == 0) {
			return null;
		}

		return usrs.get(0);
		// return userRepository.findByPrimaryKey(email, companyId);
	}

//	@Override
//	public void saveOrUpdateUser(User user) {
//		// TODO Auto-generated method stub
//
//	}

}
