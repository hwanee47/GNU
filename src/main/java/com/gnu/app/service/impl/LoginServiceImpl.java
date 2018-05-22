package com.gnu.app.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gnu.app.dao.LoginDAO;
import com.gnu.app.service.LoginService;

/**
 * @Class Name : InWarServiceImpl.java
 * @Description : 소재에 관해 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.01.27    김진환          최초 생성
 *
 *  
 */

@Service("loginService")
public class LoginServiceImpl  implements LoginService{

	@Autowired
	private LoginDAO loginDAO;
	
	@Override
	public HashMap<String, String> login(HashMap<String, String> map) throws Exception {
		return 	loginDAO.login(map);
	}

	@Override
	public void register(HashMap<String, String> map) throws Exception {
		loginDAO.register(map);
	}

	@Override
	public List<HashMap<String,String>> searchMemberList() throws Exception {
		return loginDAO.selectMemberList();
	}

	@Override
	public void addmachine(HashMap<String, String> map) throws Exception {
		loginDAO.addmachine(map);
	}

	@Override
	public List<HashMap<String, String>> searchNowStatusList() throws Exception {
		return loginDAO.selectNowStatusList();
	}

	@Override
	public List<HashMap<String, String>> searchGroupList() throws Exception {
		return loginDAO.selectGroupList();
	}

	@Override
	public List<HashMap<String, String>> searchMachineList() throws Exception {
		return loginDAO.selectMachineList();
	}

	@Override
	public void deleteMachine(HashMap<String, String> map) throws Exception {
		loginDAO.deleteMachine(map);
	}

	@Override
	public void updateStatus(HashMap<String, String> map) throws Exception {
		loginDAO.updateStatus(map);
	}
	
	
	
	
}
