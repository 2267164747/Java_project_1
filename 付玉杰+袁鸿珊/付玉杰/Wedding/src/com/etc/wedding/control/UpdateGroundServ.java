package com.etc.wedding.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
import com.jspsmart.upload.SmartUploadException;

public class UpdateGroundServ extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String wid = request.getParameter("wgid");
		int wgid = 0;
		if(wid!=null&&!wid.equals("")){
			wgid = Integer.parseInt(wid);
		}
		WeddingGround wg = new WeddingGround();
		wg.setWgid(wgid);
		String wgname = request.getParameter("wgname");
		String wgtype = request.getParameter("wgtype");
		String wgexplain =request.getParameter("wgexplain");
		String wgaddress = request.getParameter("wgaddress");
		String wgaddressdetail = request.getParameter("wgaddressdetail");
		String price = request.getParameter("wgprice");
		int wgprice = 0;
		if(price!=null&&!price.equals("")){
			wgprice = Integer.parseInt(price);
		}
		wg.setWgtype(wgtype);
		wg.setWgprice(wgprice);
		wg.setWgexplain(wgexplain);
		wg.setWgdetail_address(wgaddressdetail);
		wg.setWgbname(wgname);
		wg.setWgaddress(wgaddress);
		String bhname1 = request.getParameter("bhname1");
		String count1 = request.getParameter("bhcount1");
		String area1 = request.getParameter("bharea1");
		double bharea1 = 0;
		int bhcount1 = 0;
		if (area1 != null && !area1.equals("")) {
			bharea1 = Double.parseDouble(area1);
		}
		if (count1 != null && !count1.equals("")) {
			bhcount1 = Integer.parseInt(count1);
		}
		String bid = request.getParameter("bhid1");
		int bhid = 0;
		if (bid != null && !bid.equals("")) {
			bhid = Integer.parseInt(bid);
		}
		String bhpillar1 = request.getParameter("bhpillar1");
		String bhfloor1 = request.getParameter("bhfloor1");
		String height1 = request.getParameter("bhheight1");
		String bhname2 = request.getParameter("bhname2");
		String count2 = request.getParameter("bhcount2");
		String area2 = request.getParameter("bharea2");
		String bid2 = request.getParameter("bhid2");
		int bhid2 = 0;
		if (bid2 != null && !bid2.equals("")) {
			bhid2 = Integer.parseInt(bid2);
		}
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
		String bhpillar2 = request.getParameter("bhpillar2");
		String bhfloor2 = request.getParameter("bhfloor2");
		String height2 = request.getParameter("bhheight2");
		double bhheight2 = 0;
		if (height2 != null && !height2.equals("")) {
			bhheight2 = Double.parseDouble(height2);
		}
		
		List<BanquetHall> list = new ArrayList<BanquetHall>();
		BanquetHall bh = new BanquetHall();
		bh.setBharea(bharea1);
		bh.setBhcount(bhcount1);
		bh.setBhfloor(bhfloor1);
		bh.setBhheight(bhheight1);
		bh.setBhname(bhname1);
		bh.setBhpillar(bhpillar1);
		bh.setBhid(bhid);
	
		list.add(bh);
		BanquetHall bh2 = new BanquetHall();
		bh2.setBharea(bharea2);
		bh2.setBhcount(bhcount2);
		bh2.setBhfloor(bhfloor2);
		bh2.setBhheight(bhheight2);
		bh2.setBhname(bhname2);
		bh2.setBhpillar(bhpillar2);
		bh2.setBhid(bhid2);
	
		list.add(bh2);
		wg.setList(list);
		DiningStandard ds = new DiningStandard();
		String dsname = request.getParameter("dsname");
		String dsmessage1 = request.getParameter("dsmessage1");
		String dsmessage2 = request.getParameter("dsmessage2");
		String dsmessage3 = request.getParameter("dsmessage3");
		ds.setDsname(dsname);
		ds.setDsmessage1(dsmessage1);
		ds.setDsmessage2(dsmessage2);
		ds.setDsmessage3(dsmessage3);
		wg.setDs(ds);
		BrandCharacteristics bc = new BrandCharacteristics();
		String bcstory = request.getParameter("bcstory");
		String bcrite = request.getParameter("bcrite");
		String bcmeeting = request.getParameter("bcmeeting");
		String bcwedding = request.getParameter("bcwedding");
		String bcrecommend = request.getParameter("bcrecommend");
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
		String wgdname1 = request.getParameter("wgdname1");
		String wgdcontents1 = request.getParameter("wgdcontents1");
		String gdid = request.getParameter("wgdid1");
		int wgdid1 = 0;
		if (gdid != null && !gdid.equals("")) {
			wgdid1 = Integer.parseInt(gdid);
		}
		wgd1.setWgdid(wgdid1);
		wgd1.setWgdcontents(wgdcontents1);
		wgd1.setWgdname(wgdname1);
		list2.add(wgd1);
		String wgdname2 = request.getParameter("wgdname2");
		String wgdcontents2 = request.getParameter("wgdcontents2");
		String gdid2 = request.getParameter("wgdid2");
		int wgdid2 = 0;
		if (gdid2 != null && !gdid2.equals("")) {
			wgdid2 = Integer.parseInt(gdid2);
		}
		wgd2.setWgdid(wgdid2);
		wgd2.setWgdcontents(wgdcontents2);
		wgd2.setWgdname(wgdname2);
		list2.add(wgd2);
		String wgdname3 = request.getParameter("wgdname3");
		String wgdcontents3 = request.getParameter("wgdcontents3");
		String gdid3 = request.getParameter("wgdid3");
		int wgdid3 = 0;
		if (gdid3 != null && !gdid3.equals("")) {
			wgdid3 = Integer.parseInt(gdid3);
		}
		wgd3.setWgdid(wgdid3);
		wgd3.setWgdcontents(wgdcontents3);
		wgd3.setWgdname(wgdname3);
		list2.add(wgd3);
		String wgdname4 = request.getParameter("wgdname4");
		String wgdcontents4 = request.getParameter("wgdcontents4");
		String gdid4 = request.getParameter("wgdid4");
		int wgdid4 = 0;
		if (gdid4 != null && !gdid4.equals("")) {
			wgdid4 = Integer.parseInt(gdid4);
		}
		wgd4.setWgdid(wgdid4);
		wgd4.setWgdcontents(wgdcontents4);
		wgd4.setWgdname(wgdname4);
		list2.add(wgd4);
		String wgdname5 = request.getParameter("wgdname5");
		String wgdcontents5 = request.getParameter("wgdcontents5");
		String gdid5 = request.getParameter("wgdid5");
		int wgdid5 = 0;
		if (gdid5 != null && !gdid5.equals("")) {
			wgdid5 = Integer.parseInt(gdid5);
		}
		wgd5.setWgdid(wgdid5);
		wgd5.setWgdcontents(wgdcontents5);
		wgd5.setWgdname(wgdname5);
		list2.add(wgd5);
		String wgdname6 = request.getParameter("wgdname6");
		String wgdcontents6 = request.getParameter("wgdcontents6");
		String gdid6 = request.getParameter("wgdid6");
		int wgdid6 = 0;
		if (gdid6 != null && !gdid6.equals("")) {
			wgdid6 = Integer.parseInt(gdid6);
		}
		wgd6.setWgdid(wgdid6);
		wgd6.setWgdcontents(wgdcontents6);
		wgd6.setWgdname(wgdname6);
		list2.add(wgd6);
		String wgdname7 = request.getParameter("wgdname7");
		String wgdcontents7 = request.getParameter("wgdcontents7");
		String gdid7 = request.getParameter("wgdid7");
		int wgdid7 = 0;
		if (gdid7 != null && !gdid7.equals("")) {
			wgdid7 = Integer.parseInt(gdid7);
		}
		wgd7.setWgdid(wgdid7);
		wgd7.setWgdcontents(wgdcontents7);
		wgd7.setWgdname(wgdname7);
		list2.add(wgd7);
		wg.setList2(list2);
		GroundBiz biz = new GroundBiz();
		PrintWriter out = response.getWriter();
		try {
			int count = biz.updateGround(wg);
			if(count>0){
				out.print("修改场地成功！！！3秒后跳转...");
				String content = "3;ShowgroundServ?type=after";
				response.setHeader("refresh", content);
			}else{
				out.print("修改场地是失败！！！3秒后跳转...");
				String content = "3;ShowgroundServ?type=after";
				response.setHeader("refresh", content);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		doGet(request,response);
	}

}
