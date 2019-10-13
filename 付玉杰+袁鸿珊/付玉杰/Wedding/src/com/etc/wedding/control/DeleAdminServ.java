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

public class DeleAdminServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
	   String type = request.getParameter("type");
	  
		UserBiz biz = new UserBiz();
		if(type.equals("singlechoice")){
			 String id = request.getParameter("huid");
			 int huid = 0;
			   if(id!=null &&!id.equals("")){
				   huid= Integer.parseInt(id);
			   }
			try {
				int count = biz.deleAdmin(huid);
				if(count>0){
					out.print("删除成功！3秒后跳转......");
					String c = "3;Admin/backone/user.jsp";
					response.setHeader("refresh", c);
				}else{
					out.print("删除失败！3秒后跳转......");
					String c = "3;Admin/backone/user.jsp";
					response.setHeader("refresh", c);
				}
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		if(type.equals("choicedelete")){
			String str = request.getParameter("str");
			try {
				int count = biz.deleAll(str);
				if(count>0){
					out.print("删除成功！3秒后跳转......");
					String c = "3;UserManagerServ";
					response.setHeader("refresh", c);
				}else{
					out.print("删除失败！3秒后跳转......");
					String c = "3;UserManagerServ";
					response.setHeader("refresh", c);
				}
				
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

}
