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
	 * f을 조회한다.
	 * @param InWarVo - 화면에서 입력한 입고정보
	 * @return List - 입고실적 LIST
	 * @exception Exception
	 */
	public List<HashMap<String, String>> test() throws Exception;
	
}
