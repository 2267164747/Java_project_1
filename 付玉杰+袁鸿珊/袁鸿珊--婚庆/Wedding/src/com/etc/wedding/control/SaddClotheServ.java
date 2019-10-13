package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SFileBiz;
import com.etc.wedding.biz.SSFileBiz;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;
import com.etc.wedding.dto.WeddingDress;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SaddClotheServ extends HttpServlet {

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
		WeddingDress wd = new WeddingDress();
		SmartUpload su = new SmartUpload();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		su.initialize(this.getServletConfig(), request, response);
		su.setCharset("utf-8");
		try {
			su.upload();
		} catch (SmartUploadException e) {
			System.out.print("su.upload失败");
			e.printStackTrace();
		}
		SSFileBiz biz = new SSFileBiz();
		int wdid = 0;
		try {
			wdid = biz.getWdrid();
			wd.setWdid(wdid);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String wdname = su.getRequest().getParameter("wdname");
		wd.setWdname(wdname);
		String wdseries = su.getRequest().getParameter("wdseries");
		wd.setWdseries(wdseries);
		int wdprice = Integer.parseInt(su.getRequest().getParameter("wdprice"));
		wd.setWdprice(wdprice);
		String[] str = su.getRequest().getParameterValues("cl");
		String ss = null;
		for (int i = 0; i < str.length; i++) {
			if (i == 0) {
				ss = str[i];
			}

			else {
				ss += "," + str[i];
			}
		}// 色系
		String wdcolor = ss;
		wd.setWdcolor(wdcolor);
		String wdintroduction = su.getRequest().getParameter("wdintroduction");
		wd.setWdintroduction(wdintroduction);
		String wdclothes = su.getRequest().getParameter("wdclothes");
		wd.setWdclothes(wdclothes);
		String wdaccessories = su.getRequest().getParameter("wdaccessories");
		wd.setWdaccessories(wdaccessories);
		String wdexplain = su.getRequest().getParameter("wdexplain");
		wd.setWdexplain(wdexplain);	
		try {
			int count=biz.addWdress(wd);
			if(count!=0){
				System.out.println("添加婚纱成功");
			}else{
				System.out.println("添加婚纱失败");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
/**
 * 以下是添加图片
 */
		int pcid = 0;
		try {
			pcid = biz.getPcid();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (int i = 0; i <4; i++) {
			Picture pc = new Picture();
			byte[] pic = null;
			File file = su.getFiles().getFile(i);
			int size = file.getSize();
			pic = new byte[size];
			for (int j = 0; j < size; j++) {
				pic[j] = file.getBinaryData(j);
			}
			pc.setPid(pcid);
			pc.setPpic(pic);
			pc.setWdid(wdid);
			try {
				int count2 = biz.addtest(pc);
				if (count2 != 0) {
					System.out.println("添加成功");
				}
			} catch (SQLException e) {
				System.out.println("添加失败+"+i);
				e.printStackTrace();
			}
			pcid++;
			}
		request.getRequestDispatcher("SlistClothServ").forward(request, response);
	}

}
