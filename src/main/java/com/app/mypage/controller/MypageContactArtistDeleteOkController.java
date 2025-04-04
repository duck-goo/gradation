package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;

public class MypageContactArtistDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		
//		작가와 연락 내역 삭제
//		mypageDAO.delete(id);
		
//		작가와 연락 리스트 페이지로 이동
		result.setRedirect(true);
		result.setPath("mypage-contact-artist-list.mypage");
		return result;
		
	}

}
