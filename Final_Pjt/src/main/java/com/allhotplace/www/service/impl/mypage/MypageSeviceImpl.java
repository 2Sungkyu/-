package com.allhotplace.www.service.impl.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.allhotplace.www.dao.face.mypage.MypageDao;
import com.allhotplace.www.dto.Calendar;
import com.allhotplace.www.dto.Users;
import com.allhotplace.www.service.face.mypage.MypageService;

@Service
public class MypageSeviceImpl implements MypageService{

	@Autowired MypageDao mypageDao;

	@Override
	public Users viewUserInfo(String user_id) {
		return mypageDao.selectUserInfo(user_id);
	}

	@Override
	public void updateInfo(Users user) {
		mypageDao.updateUser(user);
	}

	@Override
	public List<Calendar> viewUserCalendarList(String user_id) {
		return mypageDao.selectUserCalendar(user_id);
	}

	@Override
	public void addCalendar(String user_id, Calendar cal) {
		int user_no = mypageDao.selectUserNo(user_id);
		mypageDao.insertCalendar(user_no, cal);
	}

	@Override
	public void removeCalendar(int calendar_no) {
		mypageDao.deleteCalendar(calendar_no);
	}

}