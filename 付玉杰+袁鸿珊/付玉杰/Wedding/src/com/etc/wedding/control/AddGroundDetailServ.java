package com.etc.wedding.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.wedding.biz.GroundBiz;
import com.etc.wedding.dto.BanquetHall;
import com.etc.wedding.dto.BrandCharacteristics;
import com.etc.wedding.dto.DiningStandard;
import com.etc.wedding.dto.WGDiscount;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.Log;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class AddGroundDetailServ extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		WeddingGround wg = new WeddingGround();
		SmartUpload su = new SmartUpload();
		su.setCharset("UTF-8");
		su.initialize(this.getServletConfig(), request, response);
		try {
			su.upload();
		} catch (SmartUploadException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String bhname1 = su.getRequest().getParameter("bhname1");
		String count1 = su.getRequest().getParameter("bhcount1");
		String area1 = su.getRequest().getParameter("bharea1");
		double bharea1 = 0;
		int bhcount1 = 0;
		if (area1 != null && !area1.equals("")) {
			bharea1 = Double.parseDouble(area1);
		}
		if (count1 != null && !count1.equals("")) {
			bhcount1 = Integer.parseInt(count1);
		}
		String bhpillar1 = su.getRequest().getParameter("bhpillar1");
		String bhfloor1 = su.getRequest().getParameter("bhfloor1");
		String height1 = su.getRequest().getParameter("bhheight1");
		String bhname2 = su.getRequest().getParameter("bhname2");
		String count2 = su.getRequest().getParameter("bhcount2");
		String area2 = su.getRequest().getParameter("bharea2");
		int bhcount2 = 0;
		double bharea2 = 0;
		double bhheight1 = 0;
		if (area2 != null && !area2.equals("")) {
			bharea2 = Double.parseDouble(area2);
		}
		if (height1 != null && !height1.equals("")) {
			bhheight1 = Double.parseDouble(height1);
		}
		if (count2 != null && !count1.equals("")) {
			bhcount2 = Integer.parseInt(count2);
		}
		String bhpillar2 = su.getRequest().getParameter("bhpillar2");
		String bhfloor2 = su.getRequest().getParameter("bhfloor2");
		String height2 = su.getRequest().getParameter("bhheight2");
		double bhheight2 = 0;
		if (height2 != null && !height2.equals("")) {
			bhheight2 = Double.parseDouble(height2);
		}
		File file1 = su.getFiles().getFile(0);
		int size1 = file1.getSize();
		byte[] bhpic1 = new byte[size1];
		for (int i = 0; i < size1; i++) {
			bhpic1[i] = file1.getBinaryData(i);
		}
		File file2 = su.getFiles().getFile(1);
		int size2 = file2.getSize();
		byte[] bhpic2 = new byte[size2];
		for (int i = 0; i < size2; i++) {
			bhpic2[i] = file2.getBinaryData(i);
		}
		List<BanquetHall> list = new ArrayList<BanquetHall>();
		BanquetHall bh = new BanquetHall();
		bh.setBharea(bharea1);
		bh.setBhcount(bhcount1);
		bh.setBhfloor(bhfloor1);
		bh.setBhheight(bhheight1);
		bh.setBhname(bhname1);
		bh.setBhpillar(bhpillar1);
		bh.setBhpic(bhpic1);
		list.add(bh);
		BanquetHall bh2 = new BanquetHall();
		bh2.setBharea(bharea2);
		bh2.setBhcount(bhcount2);
		bh2.setBhfloor(bhfloor2);
		bh2.setBhheight(bhheight2);
		bh2.setBhname(bhname2);
		bh2.setBhpillar(bhpillar2);
		bh2.setBhpic(bhpic2);
		list.add(bh2);
		wg.setList(list);
		DiningStandard ds = new DiningStandard();
		String dsname = su.getRequest().getParameter("dsname");
		String dsmessage1 = su.getRequest().getParameter("dsmessage1");
		String dsmessage2 = su.getRequest().getParameter("dsmessage2");
		String dsmessage3 = su.getRequest().getParameter("dsmessage3");
		ds.setDsname(dsname);
		ds.setDsmessage1(dsmessage1);
		ds.setDsmessage2(dsmessage2);
		ds.setDsmessage3(dsmessage3);
		wg.setDs(ds);
		BrandCharacteristics bc = new BrandCharacteristics();
		String bcstory = su.getRequest().getParameter("bcstory");
		String bcrite = su.getRequest().getParameter("bcrite");
		String bcmeeting = su.getRequest().getParameter("bcmeeting");
		String bcwedding = su.getRequest().getParameter("bcwedding");
		String bcrecommend = su.getRequest().getParameter("bcrecommend");
		bc.setBcmeeting(bcmeeting);
		bc.setBcrecommend(bcrecommend);
		bc.setBcrite(bcrite);
		bc.setBcstory(bcstory);
		bc.setBcwedding(bcwedding);
		wg.setBc(bc);
		List<WGDiscount> list2 = new ArrayList<WGDiscount>();
		WGDiscount wgd1 = new WGDiscount();
		WGDiscount wgd2 = new WGDiscount();
		WGDiscount wgd3 = new WGDiscount();
		WGDiscount wgd4 = new WGDiscount();
		WGDiscount wgd5 = new WGDiscount();
		WGDiscount wgd6 = new WGDiscount();
		WGDiscount wgd7 = new WGDiscount();
		String wgdname1 = su.getRequest().getParameter("wgdname1");
		String wgdcontents1 = su.getRequest().getParameter("wgdcontents1");
		wgd1.setWgdcontents(wgdcontents1);
		wgd1.setWgdname(wgdname1);
		list2.add(wgd1);
		String wgdname2 = su.getRequest().getParameter("wgdname2");
		String wgdcontents2 = su.getRequest().getParameter("wgdcontents2");
		wgd1.setWgdcontents(wgdcontents2);
		wgd1.setWgdname(wgdname2);
		list2.add(wgd2);
		String wgdname3 = su.getRequest().getParameter("wgdname3");
		String wgdcontents3 = su.getRequest().getParameter("wgdcontents3");
		wgd1.setWgdcontents(wgdcontents3);
		wgd1.setWgdname(wgdname3);
		list2.add(wgd3);
		String wgdname4 = su.getRequest().getParameter("wgdname4");
		String wgdcontents4 = su.getRequest().getParameter("wgdcontents4");
		wgd1.setWgdcontents(wgdcontents4);
		wgd1.setWgdname(wgdname4);
		list2.add(wgd4);
		String wgdname5 = su.getRequest().getParameter("wgdname5");
		String wgdcontents5 = su.getRequest().getParameter("wgdcontents5");
		wgd1.setWgdcontents(wgdcontents5);
		wgd1.setWgdname(wgdname5);
		list2.add(wgd5);
		String wgdname6 = su.getRequest().getParameter("wgdname6");
		String wgdcontents6 = su.getRequest().getParameter("wgdcontents6");
		wgd1.setWgdcontents(wgdcontents6);
		wgd1.setWgdname(wgdname6);
		list2.add(wgd6);
		String wgdname7 = su.getRequest().getParameter("wgdname7");
		String wgdcontents7 = su.getRequest().getParameter("wgdcontents7");
		wgd1.setWgdcontents(wgdcontents7);
		wgd1.setWgdname(wgdname7);
		list2.add(wgd7);
		wg.setList2(list2);
		String id = request.getParameter("wgid");
		int wgid = 0;
		if(id!=null&&!id.equals("")){
			wgid = Integer.parseInt(id);
		}
		wg.setWgid(wgid);
		GroundBiz biz = new GroundBiz();
		boolean flag = biz.addDetial(wg);
	}

}
