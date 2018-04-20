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
	public boolean login(HashMap<String, String> map) throws Exception {
		int cnt = (Integer)select("Member.loginCheck", map);
		
		//로그인정보가 없는경우 false
		if(cnt==0) return false; 
		
		return true;
	}

	
	@Override
	public void register(HashMap<String, String> map) throws Exception {
		insert("Member.insertMember", map);
	}
	
	
	
	
}
