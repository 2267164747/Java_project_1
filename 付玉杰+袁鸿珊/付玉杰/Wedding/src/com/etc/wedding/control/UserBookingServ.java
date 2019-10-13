package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.UserBiz;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.Reservation;
import com.etc.wedding.util.Log;

public class UserBookingServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		Huser hu =(Huser) request.getSession().getAttribute("hu");
		UserBiz biz = new UserBiz();

		if(hu!=null){
			String wid = request.getParameter("wgid");
			int wgid = 0 ;
			String wgname = request.getParameter("wgname");
			String date = request.getParameter("reDate");
			Date reDate =null;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			if(date!=null&&!date.equals("")){
				try {
					reDate = sdf.parse(date);
				} catch (ParseException e) {
					Log.logger.debug(e.getMessage());
					e.printStackTrace();
				}
			}
			int huid = hu.getHuid();
			String reText = request.getParameter("reText");
			Reservation rs = new Reservation();
			rs.setRemark(reText);
			rs.setHuid(huid);
			rs.setRdate(reDate);
			if(wid!=null && !wid.equals("")){
				wgid = Integer.parseInt(wid);
				rs.setWgid(wgid);
				try {
					int count = biz.insertR(rs);
					if(count>0){
						out.print("Success!And jump in 3 seconds......");
						
					}else{
						out.print("Fail!");
					}
				} catch (SQLException e) {
					Log.logger.debug(e.getMessage());
					e.printStackTrace();
				}
			}

			try {
				List<Reservation> list = biz.getUserBooking(rs);
				if(list!=null){
					request.setAttribute("wgname", wgname);
					request.setAttribute("list", list);
					request.getRequestDispatcher("userbooking.jsp").forward(request, response);
				}else{
					
					request.getRequestDispatcher("index.jsp").forward(request, response);

				}
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}else{
			out.print("Please login first and jump in 3 seconds......");
			String c = "3;login.jsp";
			response.setHeader("refresh", c);
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doGet(request,response);
	}

}
