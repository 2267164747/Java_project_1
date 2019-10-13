package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.util.Log;

public class UpdatePwdServ extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		Huser hu = (Huser)request.getSession().getAttribute("hu");
		if(hu!=null){
			request.setAttribute("hu", hu);
			request.getRequestDispatcher("Admin/backone/updatepwd.jsp").forward(request, response);
		}
		
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
	Huser hu = (Huser)request.getSession().getAttribute("hu");
	String pwd = request.getParameter("newpass");
	hu.setHupwd(pwd);
	UserBiz biz = new UserBiz();
	PrintWriter out = response.getWriter();
	try {
		int count = biz.updatePwd(hu);
		if(count>0){
			out.print("修改密码成功！3秒后跳转......");
			String content = "3;adminlogin.jsp";
			response.setHeader("refresh",content);
		}else{
			out.print("修改密码失败！3秒后跳转......");
			String content = "3;Admin/backone/updatepwd.jsp";
			response.setHeader("refresh",content);
		}
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	}

}
