package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SSFileBiz;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingDress;

public class SupdateDressServ extends HttpServlet {

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
		int wdid = Integer.parseInt(request.getParameter("wdid"));
		System.out.println("wdid");
		SSFileBiz biz=new SSFileBiz();
		try {
			WeddingDress wd=biz.getWedDressInfOne(wdid);
			request.setAttribute("wd", wd);
		} catch (SQLException e) {
			System.out.println("��ѯ��ɴ��ϸ��Ϣʧ��1");
			e.printStackTrace();
		}
		try {
			List<Picture> listPic=biz.getWedDressPic(wdid);
			request.setAttribute("listPic", listPic);
		} catch (SQLException e) {
			System.out.println("��ѯ��ɴͼƬʧ��1");
			e.printStackTrace();
		}
		request.getRequestDispatcher("/Admin/backone/SdetailDress.jsp").forward(request, response);
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
