package com.gnu.app.service;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : LoginService.interface
 * @Description : 로그인에 관해 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.04.15    hwanee   최초 생성
 *
 *  
 */

public interface LoginService {
	/**
	 * 로그인처리
	 * @param map - 화면에서 입력한 로그인정보
	 * @return HashMap<String, String>  
	 * @exception Exception
	 */
	public HashMap<String, String> login(HashMap<String, String> map) throws Exception;
	
	
	/**
	 * 사용자 등록처리
	 * @param map - 화면에서 입력한 사용자정보
	 * @return   
	 * @exception Exception
	 */
	public void register(HashMap<String, String> map) throws Exception;
	
}
