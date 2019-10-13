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

import com.etc.wedding.biz.SwsFileBiz;
import com.etc.wedding.biz.SydBiz;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.Reservation;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SydhunshaServ extends HttpServlet {

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
		int wdid = Integer.parseInt(request.getParameter("wdid"));
		SmartUpload su = new SmartUpload();
		su.initialize(this.getServletConfig(), request, response);
		su.setCharset("utf-8");
		try {
			su.upload();
		} catch (SmartUploadException e) {
			System.out.print("su.uploadʧ��");
			e.printStackTrace();
		}
		Huser hu = (Huser) request.getSession().getAttribute("hu");
		SydBiz biz = new SydBiz();
		if (hu == null) {
			System.out.println("����δ��¼�������µ�¼��");
			response.sendRedirect("login.jsp");
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			String putdate = su.getRequest().getParameter("putdate");
			Date data = null;
			try {
				data = sdf.parse(putdate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (data == null) {
				System.out.println("��ѡ�����ڣ�");
				//response.getWriter().write("alert(\"��ѡ�����ڣ�\");");
				request.getRequestDispatcher("SydDressServ?wdid="+wdid).forward(request, response);
				response.getWriter().write("alert(\"��ѡ�����ڣ�\");");
			} else {
				/**
				 * �жϸ�ʱ���Ƿ�ռ��
				 */
				System.out.println("putdate" + putdate);
				
				int count = 0;
				try {
					count = biz.searchDressTime(wdid, data);
				} catch (SQLException e) {
					System.out.println("��ѯʧ����");
					e.printStackTrace();
				}
				if (count != 0) {
					System.out.println("������ռ�ã�������ѡ��");					
					request.getRequestDispatcher("SydDressServ?wdid="+wdid).forward(request, response);
					response.getWriter().write("alert(\"��ѡ�����ڣ�\");");
				} else {
					/**
					 * ��ʼ�����
					 */
					int rid = 0;
					try {
						rid = biz.getRservWdid();
						System.out.println(rid);
					} catch (SQLException e) {
						System.out.println("��ѯridʧ����");
						e.printStackTrace();
					}
					if (rid != 0) {
						Reservation rv = new Reservation();
						rv.setRid(rid);
						rv.setWdid(wdid);
						rv.setRdate(data);
						try {
							int blg = biz.addReservDress(rid, wdid, data);
						} catch (SQLException e) {
							System.out.println("���ʧ����");
							e.printStackTrace();
						}

					} else {
						System.out.println("��֪��Ϊʲô���������ǳ�����");
						response.getWriter().write("alert(\"��ѡ�����ڣ�\");");
						request.getRequestDispatcher("SydDressServ?wdid="+wdid).forward(request, response);
					}
				}
			}
		}
	}
}
