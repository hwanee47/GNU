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
	public List<HashMap<String, String>> test() throws Exception {
		loginDAO.test();
		return null;
	}
	
	
	
	
}
