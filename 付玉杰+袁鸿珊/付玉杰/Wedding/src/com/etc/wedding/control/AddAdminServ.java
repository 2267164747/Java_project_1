package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.util.Log;

public class AddAdminServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String uname=request.getParameter("uname");
		UserBiz biz = new UserBiz();
		if(uname!=null&&!uname.equals("")){
			try {
				int count = biz.checkUname(uname);
				if(count>0){
					out.print("该用户名已存在！");
				}else{
					out.print("√");
				}
			
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}else{
			out.print("用户名不能为空！");
		}
		out.flush();
		out.close();
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		UserBiz biz = new UserBiz();
		PrintWriter out = response.getWriter();
		try {
			int count = biz.addAdmin(uname,pwd);
			if(count>0){
				out.print("添加管理员成功！3秒后跳转......");
				String content = "3;UserManagerServ";
				response.setHeader("refresh", content);
			}else{
				out.print("添加管理员失败！3秒后跳转......");
				String content = "3;Admin/backone/addAdmin.jsp";
				response.setHeader("refresh", content);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
	}

}
