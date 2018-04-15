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
 * @ 2018.01.27    김진환          최초 생성
 *
 *  
 */

@Repository
public class LoginDAOImpl extends EgovAbstractDAO implements LoginDAO {

	@Override
	public List<HashMap<String, String>> test() throws Exception {
		List<HashMap<String, String>> test = (List<HashMap<String, String>>) list("Employee.test",null);
		System.out.println(test.size());
		return null;
	}
	
	
	
	
}
