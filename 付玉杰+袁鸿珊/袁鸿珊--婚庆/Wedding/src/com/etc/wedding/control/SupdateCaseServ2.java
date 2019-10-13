package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SFileBiz;
import com.etc.wedding.dto.WeddingCase;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SupdateCaseServ2 extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SmartUpload su = new SmartUpload();
		su.initialize(this.getServletConfig(), request, response);
		su.setCharset("utf-8");
		try {
			su.upload();
		} catch (SmartUploadException e) {
			System.out.print("su.upload失败");
			e.printStackTrace();
		}
		WeddingCase wc=new WeddingCase();
		int wcid=Integer.parseInt(request.getParameter("wcid"));
		wc.setWcid(wcid);
		String introduction=su.getRequest().getParameter("introduction");
		wc.setWcintroduction(introduction);
		String design=su.getRequest().getParameter("design");
		wc.setWcdesign(design);
		int count=Integer.parseInt(su.getRequest().getParameter("count"));
		wc.setWccount(count);
		String color=su.getRequest().getParameter("color");
		wc.setWccolor(color);
		String main=su.getRequest().getParameter("main");
		wc.setWcmain(main);
		String vice=su.getRequest().getParameter("vice");
		wc.setWcvice(vice);
		String ground=su.getRequest().getParameter("ground");
		wc.setWcground(ground);
		String label=su.getRequest().getParameter("label");
		wc.setWclabel(label);
		Date pubdate;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String da = su.getRequest().getParameter("wedding_date");
		System.out.println(da + "我是日期");
		try {
			pubdate = sdf.parse(da);
			wc.setWcwedding_date(pubdate);
		} catch (ParseException e) {
			System.out.println("日期转换格式失败");
			e.printStackTrace();
		}
		SFileBiz biz=new SFileBiz();
		int tt = 0;
		try {
			tt = biz.updateCase(wc);
		} catch (SQLException e) {
			System.out.println("修改失败");
			e.printStackTrace();
		}
		if(tt!=0){
			System.out.println("修改成功");
			request.getRequestDispatcher("SlistexampleServ1").forward(request, response);
		}
		else{
			System.out.println("修改失败");
		}
		
	}

}
