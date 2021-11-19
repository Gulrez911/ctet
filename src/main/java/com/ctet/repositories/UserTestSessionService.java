package com.ctet.repositories;

import com.ctet.data.UserTestSession;

public interface UserTestSessionService {

	public UserTestSession findUserTestSession(String user, String testName, String companyId);

	public UserTestSession saveOrUpdate(UserTestSession userTestSession);

}
