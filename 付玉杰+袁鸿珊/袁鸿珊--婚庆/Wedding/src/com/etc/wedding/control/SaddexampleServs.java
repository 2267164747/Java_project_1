package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.SFileBiz;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class SaddexampleServs extends HttpServlet {

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

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WeddingCase wc = new WeddingCase();
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
		SFileBiz biz = new SFileBiz();
		int wcid = 0;
		try {
			wcid = biz.getWcid();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		wc.setWcid(wcid);
		String introduce = su.getRequest().getParameter("introduce");
		wc.setWcintroduction(introduce);
		String design = su.getRequest().getParameter("design");
		wc.setWcdesign(design);
		String num = su.getRequest().getParameter("num");
		int count = Integer.parseInt(num);
		wc.setWccount(count);
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
		wc.setWccolor(ss);
		String nameone = su.getRequest().getParameter("nameone");
		wc.setWcmain(nameone);//
		String nametwo = su.getRequest().getParameter("nametwo");
		wc.setWcvice(nametwo);
		String sets = su.getRequest().getParameter("sets");
		wc.setWcground(sets);
		String[] strs = su.getRequest().getParameterValues("sl");
		String st = "";
		for (int i = 0; i < strs.length; i++) {
			if (i == 0) {
				st = strs[i];
			}

			else {
				st += "," + strs[i];
			}
		}
		wc.setWclabel(st);// (9)
		Date pubdate = null;
		try {
			String da = su.getRequest().getParameter("datey");
			System.out.println(da + "我是日期");
			pubdate = sdf.parse(da);
			wc.setWcwedding_date(pubdate);
		} catch (ParseException e) {
		}
		try {
			biz.addWcCase(wc);
		} catch (SQLException e) {

		}

		/**
		 * 以下是关于插入图片的代码
		 */
		int pcid = 0;
		try {
			pcid = biz.getPcid();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (int i = 0; i <7; i++) {
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
			pc.setWcid(wcid);
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
			request.getRequestDispatcher("SlistexampleServ1").forward(request, response);		
	}
}
