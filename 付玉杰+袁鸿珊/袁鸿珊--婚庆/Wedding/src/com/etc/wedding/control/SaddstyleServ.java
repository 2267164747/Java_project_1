package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SwsFileBiz;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingDress;
import com.etc.wedding.dto.WeddingStyle;
import com.etc.wedding.dto.WeddingStyleFlow;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SaddstyleServ extends HttpServlet {

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
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		su.initialize(this.getServletConfig(), request, response);
		su.setCharset("utf-8");
		try {
			su.upload();
		} catch (SmartUploadException e) {
			System.out.print("su.upload失败");
			e.printStackTrace();
		}
		SwsFileBiz biz = new SwsFileBiz();
		int wsid = 0;
		try {
			wsid = biz.getWsid();
		} catch (SQLException e) {
			System.out.println("wisd获取失败，真是失败");
			e.printStackTrace();
		}
		WeddingStyle ws=new WeddingStyle(); 	ws.setWsid(wsid);
		String wstype = su.getRequest().getParameter("wstype");		ws.setWstype(wstype);
		String wsname = su.getRequest().getParameter("wsname");ws.setWsname(wsname);
		int wsprice = Integer.parseInt(su.getRequest().getParameter("wsprice"));ws.setWsprice(wsprice);
		String wsdescription = su.getRequest().getParameter("wsdescription");ws.setWsdescription(wsdescription);
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
		String wslabel =ss;ws.setWslabel(wslabel);
/**
 * 案例流程部分
 */
		WeddingStyleFlow wsf=new WeddingStyleFlow();
		int wsfid = wsid;  wsf.setWsfid(wsfid); wsf.setWsid(wsid);// 外键 
		// int wsid=su.getRequest().getParameter("") ;
		String wsfmain = su.getRequest().getParameter("wsfmain");wsf.setWsfmain(wsfmain);
		String wsfvice = su.getRequest().getParameter("wsfvice");wsf.setWsfvice(wsfvice);
		String wsfforeword = su.getRequest().getParameter("wsfforeword");wsf.setWsfforeword(wsfforeword);
		String wsfcontents1 = su.getRequest().getParameter("wsfcontents1");wsf.setWsfcontents1(wsfcontents1);
		String wsfcontents2 = su.getRequest().getParameter("wsfcontents2");wsf.setWsfcontents2(wsfcontents2);
		String wsfcontents3 = su.getRequest().getParameter("wsfcontents3");wsf.setWsfcontents3(wsfcontents3);
		String wsfcontents4 = su.getRequest().getParameter("wsfcontents4");wsf.setWsfcontents4(wsfcontents4);
/*
 * 以下是图片部分
*/
		int pcid = 0;
		try {
			pcid = biz.getPcid();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Picture> listpc1=new ArrayList<Picture>();
		for (int i = 0; i <8; i++) {
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
			pc.setWsid(wsid);
			pcid++;
			listpc1.add(pc);
			/*try {
				int count2 = biz.addtest(pc);
				if (count2 != 0) {
					System.out.println("添加成功");
				}
			} catch (SQLException e) {
				System.out.println("添加失败+"+i);
				e.printStackTrace();
			}*/

			}
		List<Picture> listpc2=new ArrayList<Picture>();
		for (int i = 8; i <16; i++) {
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
			pc.setWsfid(wsfid);	
			pcid++;
			listpc2.add(pc);
			}
		biz.AddStyle(ws,wsf,listpc1,listpc2);
		//request.getRequestDispatcher("SlistClothServ").forward(request, response);

	}

}
