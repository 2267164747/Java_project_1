package com.etc.wedding.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.ChangCharacter;
import com.etc.wedding.util.Log;

public class JudgeGroundServ extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		ChangCharacter c = new ChangCharacter();
		String id =c.getNew(request.getParameter("wgid")) ;
		int wgid = 0 ;
		if(id!=null&&!id.equals("")){
			wgid = Integer.parseInt(id);
		}
		GroundBiz biz = new GroundBiz();
		try {
			WeddingGround  wg= biz.getGroundMessage(wgid);
			if(wg!=null){
				request.setAttribute("wg", wg);
				request.getRequestDispatcher("grounddetail.jsp").forward(request, response);
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
