package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SFileBiz;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;

public class ScasePageServ extends HttpServlet {

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
		int wcid=Integer.parseInt(request.getParameter("wcid"));
		System.out.println("wcid");
		System.out.println(wcid + "传值成功");
		SFileBiz biz = new SFileBiz();
		try {
			WeddingCase wc = biz.getCaseAll(wcid);
			if (wc != null) {
				System.out.println("查询详细信息成功");
			}
			request.setAttribute("wc", wc);
		} catch (SQLException e) {
			System.out.println("查询详细信息失败");
			e.printStackTrace();
		}
		try {
			List<Picture> list = biz.getCasePictures(wcid);
			request.setAttribute("piclist", list);
		} catch (SQLException e) {
			System.out.println("查询图片列表失败");
			e.printStackTrace();
		}
		request.getRequestDispatcher("casePage.jsp").forward(request, response);
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
