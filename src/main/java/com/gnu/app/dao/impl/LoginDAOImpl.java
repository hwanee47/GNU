package com.gnu.app.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

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
		return (List<HashMap<String,String>>)list("Member.selectMemberList");
	}
	
	
	
	
}
