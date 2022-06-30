package com.genie.web.controller.freeboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.genie.web.DAO.FreeBoardDao;
import com.genie.web.entity.Notice;

public class ListController implements Controller{
	
	private FreeBoardDao freeBoardDao;
	
	public void setfreeBoardDao(FreeBoardDao freeBoardDao) {
		this.freeBoardDao = freeBoardDao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("freeBoard.list");
		
		List<Notice> list = freeBoardDao.getList();
		mv.addObject("list", list);
		
		return mv;
	}

}
