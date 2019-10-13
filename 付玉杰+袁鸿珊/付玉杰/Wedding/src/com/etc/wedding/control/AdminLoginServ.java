package com.etc.wedding.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.util.Log;

public class AdminLoginServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("password");
		UserBiz biz  = new UserBiz();
		try {
			Huser hu = biz.adminlogin(uname,pwd);
			if(hu!=null){
				request.getSession().setAttribute("hu", hu);
				request.getRequestDispatcher("Admin/backone/backindex.jsp").forward(request, response);
			}else{
				request.setAttribute("result", "该用户名不存在！");
				request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}

}
