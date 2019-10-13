package com.etc.wedding.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.util.ChangCharacter;
import com.etc.wedding.util.Log;

public class RegisterServ extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String contact = request.getParameter("contact");
		String tel = request.getParameter("tel");
		long phone = 0;
		if(tel!=null&&!tel.equals("")){
			phone = Long.parseLong(tel);
		}
		String qq = request.getParameter("qq");
		int QQ = 0;
		if(qq!=null&&!qq.equals("")){
			QQ = Integer.parseInt(qq);
		}
		Huser hu = new Huser();
		hu.setHuname(contact);
		hu.setHuphone(phone);
		hu.setHupwd(pwd);
		hu.setHuuname(email);
		hu.setHuqq(QQ);
		UserBiz biz = new UserBiz();
		try {
			int count = biz.register(hu);
			if(count>0){
				request.setAttribute("result", "×¢²á³É¹¦");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				request.setAttribute("result", "×¢²áÊ§°Ü");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}

}
