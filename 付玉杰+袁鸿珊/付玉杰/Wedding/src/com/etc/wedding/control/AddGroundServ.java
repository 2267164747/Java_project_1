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
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class AddGroundServ extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		SmartUpload su = new SmartUpload();
		su.setCharset("UTF-8");
		su.initialize(this.getServletConfig(),request,response);
		WeddingGround wg = new WeddingGround();

		try {
			su.upload();
			String wgname = su.getRequest().getParameter("wgname");
			String wgtype = su.getRequest().getParameter("wgtype");
			String wgexplain =su.getRequest().getParameter("wgexplain");
			String wgaddress = su.getRequest().getParameter("wgaddress");
			String wgaddressdetail = su.getRequest().getParameter("wgaddressdetail");
			String price = su.getRequest().getParameter("wgprice");
			int wgprice = 0;
			if(price!=null&&!price.equals("")){
				wgprice = Integer.parseInt(price);
			}
			wg.setWgtype(wgtype);
			wg.setWgprice(wgprice);
			wg.setWgexplain(wgexplain);
			wg.setWgdetail_address(wgaddressdetail);
			wg.setWgbname(wgname);
			wg.setWgaddress(wgaddress);
			File file1 = su.getFiles().getFile(0);
			File file2 = su.getFiles().getFile(1);
			int size1 = file1.getSize();
			int size2 = file2.getSize();
			byte [] wgpic = new byte[size1];
			for(int i = 0 ; i < size1 ; i++){
				wgpic[i] = file1.getBinaryData(i);
			}
			byte [] wgbigpic = new byte[size2];
			for(int j = 0 ; j < size2 ; j++){
				wgbigpic[j] = file2.getBinaryData(j);
			}
			wg.setWgpic(wgpic);
			wg.setWgbigpic(wgbigpic);
		} catch (SmartUploadException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		GroundBiz biz = new GroundBiz();
		//PrintWriter out = response.getWriter();
		try {
			int wgid  = biz.addGround(wg);
			if(wgid!=0){
				/*out.print("添加场地成功！！！3秒后跳转...");
				String content = "3;Admin/backone/addgrounddetail.jsp";
				response.setHeader("refresh", content);*/
				request.setAttribute("wgid", wgid);
				request.getRequestDispatcher("Admin/backone/addgrounddetail.jsp").forward(request, response);
			}else{
				/*out.print("添加场地失败！！！3秒后跳转...");
				String content = "3;Admin/backone/Saddground.jsp";
				response.setHeader("refresh", content);*/
				request.getRequestDispatcher("Admin/backone/Saddground.jsp").forward(request, response);

			}
			
			
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		
	}

}
