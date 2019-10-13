package com.etc.wedding.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.Log;

public class ShowgroundServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		GroundBiz biz = new GroundBiz();
		String type = request.getParameter("type");
		try {
			List<WeddingGround> list = biz.showground();
			if(list!=null){
				if(type.equals("before")){
					request.setAttribute("list", list);
					request.getRequestDispatcher("weddingground.jsp").forward(request, response);
				}
				if(type.equals("after")){
					request.setAttribute("list", list);
					request.getRequestDispatcher("Admin/backone/groundshow.jsp").forward(request, response);
				}
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
