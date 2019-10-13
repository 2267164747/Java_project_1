package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.Log;

public class AllGroundServ extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String wid = request.getParameter("wgid");
		int wgid = 0;
		if(wid!=null&&!wid.equals("")){
			wgid = Integer.parseInt(wid);
		}
		GroundBiz biz = new GroundBiz();
		try {
			WeddingGround wg = biz.getGroundMessage(wgid);
			if(wg!=null){
				request.setAttribute("wg", wg);
				request.getRequestDispatcher("Admin/backone/allground.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}

}
