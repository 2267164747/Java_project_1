package com.etc.wedding.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.util.Log;

public class GroundImgServ extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String type = request.getParameter("type");
		GroundBiz biz = new GroundBiz();
		if(type!=null&&!type.equals("")){
			if(type.equals("ground")){
				String wid = request.getParameter("wgid");
				int wgid = 0;
				if(wid!=null&&!wid.equals("")){
					wgid = Integer.parseInt(wid);
				}
				
				try {
					byte[] pics = biz.getgroundpic(wgid);
					ServletOutputStream out = response.getOutputStream();

					if(pics!=null){
						out.write(pics);
					}
					out.flush();
					out.close();
				} catch (SQLException e) {
					Log.logger.debug(e.getMessage());
					e.printStackTrace();
				}
			}
			if(type.equals("grounddetail")){
				String bid = request.getParameter("bhid");
				int bhid = 0;
				if(bid!=null&&!bid.equals("")){
					bhid = Integer.parseInt(bid);
				}
				try {
					byte [] pic = biz.getDetailImg(bhid);
					ServletOutputStream out = response.getOutputStream();
					if(pic!=null){
						out.write(pic);
					}
					out.flush();
					out.close();
				} catch (SQLException e) {
					Log.logger.debug(e.getMessage());
					e.printStackTrace();
				}
			}
			if(type.equals("bigpic")){
				String wid = request.getParameter("wgid");
				int wgid = 0;
				if(wid!=null&&!wid.equals("")){
					wgid = Integer.parseInt(wid);
				}
				try {
					byte [] pic = biz.getBigpic(wgid);
					ServletOutputStream out = response.getOutputStream();

					if(pic!=null){
						out.write(pic);
					}
					out.flush();
					out.close();
				} catch (SQLException e) {
					Log.logger.debug(e.getMessage());
					e.printStackTrace();
				}
			}
		}
		

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
	
	}

}
