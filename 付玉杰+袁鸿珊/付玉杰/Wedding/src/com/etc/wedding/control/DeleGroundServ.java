package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.util.Log;

public class DeleGroundServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String wid = request.getParameter("wgid");
		int wgid = 0;
		if(wid!=null&&!wid.equals("")){
			wgid = Integer.parseInt(wid);
		}
		GroundBiz biz = new GroundBiz();
		PrintWriter out = response.getWriter();
		try {
			int count = biz.deleGround(wgid);
			if(count>0){
				/*out.print("ɾ�����سɹ�������3�����ת...");
				String content = "3;ShowgroundServ?type=after";
				response.setHeader("refresh", content);*/
				request.getRequestDispatcher("ShowgroundServ?type=after").forward(request, response);
			}else{
//				out.print("ɾ������ʧ�ܣ�����3�����ת...");
//				String content = "3;ShowgroundServ?type=after";
//				response.setHeader("refresh", content);
				request.getRequestDispatcher("ShowgroundServ?type=after").forward(request, response);

			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
	}

}
