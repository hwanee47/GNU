package com.gnu.app.dao;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : LoginDAO.interface
 * @Description : LoginDAO
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.04.15    hwanee   최초 생성
 *
 *  
 */

public interface LoginDAO {
	/**
	 * f을 조회한다.
	 * @param InWarVo - 화면에서 입력한 입고정보
	 * @return List - 입고실적 LIST
	 * @exception Exception
	 */
	public List<HashMap<String, String>> test() throws Exception;
	
}
