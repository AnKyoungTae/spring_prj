package com.genie.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.genie.web.DAO.NoticeDao;
import com.genie.web.entity.Notice;

public class DetailController implements Controller{
	
	private NoticeDao noticeDao;
	
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("notice.detail");
		int boardNum = Integer.parseInt(request.getParameter("id"));
		
		Notice notice = noticeDao.getDetail(boardNum);
		mv.addObject("n", notice);
		
		return mv;
	}

}
