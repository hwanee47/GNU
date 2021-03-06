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
	

	/**
	 * 사용자 리스트 조회처리
	 * @param 
	 * @return  List - 사용자리스트   
	 * @exception Exception
	 */
	public List<HashMap<String,String>> selectMemberList() throws Exception;
	
	
	/**
	 * 기기등록 처리
	 * @param map - 화면에서 입력한 기기정보
	 * @return   
	 * @exception Exception
	 */
	public void addmachine(HashMap<String, String> map) throws Exception;
	
	
	
	/**
	 * 기기삭제 처리
	 * @param map - 화면에서 입력한 기기정보
	 * @return   
	 * @exception Exception
	 */
	public void deleteMachine(HashMap<String, String> map) throws Exception;
	
	
	/**
	 * 기기 휴지상태 업데이트
	 * @param map - 아두이노에서 요청한 파라미터
	 * @return   
	 * @exception Exception
	 */
	public void updateStatus(HashMap<String, String> map) throws Exception;
	
	
	/**
	 * 사용자삭제
	 * @param map - 화면에서 선택한 사용자정보
	 * @return   
	 * @exception Exception
	 */
	public void deleteMember(HashMap<String, String> map) throws Exception;
	
	/**
	 * 휴지현황 리스트 조회처리
	 * @param 
	 * @return  List - 휴지현황리스트   
	 * @exception Exception
	 */
	public List<HashMap<String,String>> selectNowStatusList() throws Exception;
	
	public List<HashMap<String,String>> selectGroupList() throws Exception;
	
	public List<HashMap<String,String>> selectMachineList() throws Exception;
}
