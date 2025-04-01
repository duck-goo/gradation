package com.app.mypage.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.logic.MailSend;
import com.app.logic.MakeCode;

public class MypageSendEmailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailSend mailSend = new MailSend();
		MakeCode makeCode = new MakeCode();
		String mailCode = makeCode.codeSix();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String userEmail = req.getParameter("userEmail");
		
		String path = "userNickname=" + URLEncoder.encode(req.getParameter("userNickname"), "UTF-8") + 
				"&userName=" + URLEncoder.encode(req.getParameter("userName"), "UTF-8") +
				"&userPhone=" + req.getParameter("userPhone") +
				"&userEmail=" + userEmail +
				"&userCode=" + req.getParameter("userCode") +
				"&userAddress=" + URLEncoder.encode(req.getParameter("userAddress"), "UTF-8") +
				"&userDetailAddress=" + URLEncoder.encode(req.getParameter("userDetailAddress"), "UTF-8");
		
		if(userDAO.emailCheck(userEmail) == 1){
//			이메일이 이미 존재할 때
			session.setAttribute("mailCode", false);
		}else {
//			이메일이 없을 때
			mailSend.sendMail(userEmail, mailCode);
			System.out.println(mailCode);
			session.setAttribute("mailCode", mailCode);
		}
		
		result.setRedirect(true);
		result.setPath("mypage-modify.mypage?" + path);
		return result;
	}

}
