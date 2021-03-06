package com.allhotplace.www.service.impl.mypage;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.allhotplace.www.dao.face.mypage.MypageDao;
import com.allhotplace.www.dto.Bookmark;
import com.allhotplace.www.dto.Calendar;
import com.allhotplace.www.dto.Schedule;
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
		
		HashMap map = new HashMap();
		map.put("user_no", user_no);
		map.put("cal", cal);
		
		mypageDao.insertCalendar(map);
	}

	@Override
	public void removeCalendar(int calendar_no) {
		mypageDao.deleteCalendar(calendar_no);
	}

	@Override
	public List<Bookmark> getBookmarkList(String user_id) {
		return mypageDao.selectUserBookmark(user_id);
	}

	@Override
	public void deleteBookmark(int bookmark_no) {
		mypageDao.deleteBookmark(bookmark_no);
	}

	@Override
	public List<Schedule> viewSchedule(int calendar_no) {
		return mypageDao.selectSchedule(calendar_no);
	}

	@Override
	public int deleteSchedule(int schedule_no) {
		return mypageDao.deleteSchedule(schedule_no);
	}

	@Override
	public int isOpenCheck(int calendar_no) {
		return mypageDao.isOpenCheck(calendar_no);
	}

	@Override
	public void calChangeYes(int calendar_no) {
		mypageDao.calendarYes(calendar_no);
	}

	@Override
	public void calChangeNo(int calendar_no) {
		mypageDao.calendarNo(calendar_no);
	}

	@Override
	public void scheduleUpdate(int schedule_no, String schedule_startTime, String schedule_endTime) {
		
		HashMap map = new HashMap();
		map.put("schedule_no", schedule_no);
		map.put("schedule_startTime", schedule_startTime);
		map.put("schedule_endTime", schedule_endTime);
		
		System.out.println("service");
		System.out.println("sch_no"+schedule_no);
		System.out.println("start"+schedule_startTime);
		System.out.println("end"+schedule_endTime);
			
		mypageDao.updateSchedule(map);
	}

}
