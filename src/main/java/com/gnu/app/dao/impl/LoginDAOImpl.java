package com.gnu.app.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.gnu.app.HomeController;
import com.gnu.app.dao.LoginDAO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @Class Name : LoginDAOImpl.java
 * @Description : LoginDAOImpl
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.04.15    hwanee          최초 생성
 *
 *  
 */

@Repository
public class LoginDAOImpl extends EgovAbstractDAO implements LoginDAO {

	private static final Logger logger = Logger.getLogger(LoginDAOImpl.class);
	
	@Override
	public HashMap<String, String> login(HashMap<String, String> map) throws Exception {

		return (HashMap<String, String>)select("Member.loginCheck", map);
	}

	
	@Override
	public void register(HashMap<String, String> map) throws Exception {
		insert("Member.insertMember", map);
	}


	@Override
	public List<HashMap<String,String>> selectMemberList() throws Exception {
		System.out.println("TESTSETS");
		return (List<HashMap<String,String>>)list("Member.selectMemberList");
	}


	@Override
	public void addmachine(HashMap<String, String> map) throws Exception {
		insert("Member.insertMachine", map);
		
		//return (List<HashMap<String,String>>)list("Member.selectMachine");
	}


	@Override
	public List<HashMap<String, String>> selectNowStatusList() throws Exception {
		return (List<HashMap<String,String>>)list("Member.selectNowStatusList");
	}


	@Override
	public List<HashMap<String, String>> selectGroupList() throws Exception {
		return (List<HashMap<String,String>>)list("Member.selectGroupList");
	}


	@Override
	public List<HashMap<String, String>> selectMachineList() throws Exception {
		return (List<HashMap<String,String>>)list("Member.selectMachineList");
	}


	@Override
	public void deleteMachine(HashMap<String, String> map) throws Exception {
		delete("Member.deleteMachine", map);
	}


	@Override
	public void updateStatus(HashMap<String, String> map) throws Exception {
		update("Member.updateStatus", map);
		
	}


	@Override
	public void deleteMember(HashMap<String, String> map) throws Exception {
		delete("Member.deleteMember", map);
	}

	
	
	
	
}
