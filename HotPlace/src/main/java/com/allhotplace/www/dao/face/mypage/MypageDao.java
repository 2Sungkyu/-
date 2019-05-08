package com.allhotplace.www.dao.face.mypage;

import java.util.HashMap;
import java.util.List;

import com.allhotplace.www.dto.Calendar;
import com.allhotplace.www.dto.Users;

public interface MypageDao {

	//회원정보조회
	public Users selectUserInfo(String user_id);

	//회원정보 업데이트
	public void updateUser(Users user);

	//회원별 캘린더 리스트 조회
	public List<Calendar> selectUserCalendar(String user_id);

	//user_no 조회
	public int selectUserNo(String user_id);
	
	//캘린더 등록
	public void insertCalendar(HashMap map);

	//캘린더 삭제
	public void deleteCalendar(int calendar_no);


}