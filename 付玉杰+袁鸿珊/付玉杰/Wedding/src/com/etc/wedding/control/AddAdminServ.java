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
					out.print("���û����Ѵ��ڣ�");
				}else{
					out.print("��");
				}
			
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}else{
			out.print("�û�������Ϊ�գ�");
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
				out.print("��ӹ���Ա�ɹ���3�����ת......");
				String content = "3;UserManagerServ";
				response.setHeader("refresh", content);
			}else{
				out.print("��ӹ���Աʧ�ܣ�3�����ת......");
				String content = "3;Admin/backone/addAdmin.jsp";
				response.setHeader("refresh", content);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
	}

}
