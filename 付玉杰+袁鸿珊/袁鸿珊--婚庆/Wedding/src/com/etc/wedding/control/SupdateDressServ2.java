package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SSFileBiz;
import com.etc.wedding.dto.WeddingDress;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SupdateDressServ2 extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
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
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
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
		/**
		 * 以上是经常都有的
		 */
		WeddingDress wd = new WeddingDress();
		int wdid = Integer.parseInt(request.getParameter("wdid"));
		wd.setWdid(wdid);
		String wdname = su.getRequest().getParameter("wdname");
		wd.setWdname(wdname);
		String wdseries = su.getRequest().getParameter("wdseries");
		wd.setWdseries(wdseries);
		int wdprice = Integer.parseInt(su.getRequest().getParameter("wdprice"));
		wd.setWdprice(wdprice);
		String wdcolor = su.getRequest().getParameter("wdcolor");
		wd.setWdcolor(wdcolor);
		String wdintroduction =su.getRequest().getParameter("wdintroduction");
		wd.setWdintroduction(wdintroduction);
		String wdclothes = su.getRequest().getParameter("wdclothes");
		wd.setWdclothes(wdclothes);
		String wdaccessories =su.getRequest().getParameter("wdaccessories");
		wd.setWdaccessories(wdaccessories);
		String wdexplain =su.getRequest().getParameter("wdexplain");
		wd.setWdexplain(wdexplain);
		int count=0;
		SSFileBiz biz=new SSFileBiz();
		try {
			count=biz.updateDress(wd);
			
		} catch (SQLException e) {
			System.out.println("修改信息失败");
			e.printStackTrace();
		}
		if(count!=0){
			System.out.println("修改失败");
		}
		request.getRequestDispatcher("SlistClothServ").forward(request, response);
		//先写修改
	}

}
