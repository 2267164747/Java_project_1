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
import com.etc.wedding.dto.WeddingCase;

public class SlistexampleServ1 extends HttpServlet {

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
		System.out.println("doget");
		WeddingCase wc = new WeddingCase();
		SFileBiz biz = new SFileBiz();
		try {
			List<WeddingCase>list=biz.showCaseList1();
			if(list!=null){
				System.out.println("查询成功");
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Admin/backone/Slistexample.jsp").forward(request, response);
			}
			else{
				System.out.println("查询失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
		System.out.println("dopost");
		WeddingCase wc = new WeddingCase();
		SFileBiz biz = new SFileBiz();
		try {
			List<WeddingCase>list=biz.showCaseList1();
			if(list!=null){
				System.out.println("查询成功");
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Admin/backone/Slistexample.jsp").forward(request, response);
			}
			else{
				System.out.println("查询失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
