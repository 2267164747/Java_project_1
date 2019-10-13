package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.SFileDao;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;

public class SFileBiz {

	public int getWcid() throws SQLException {
		SFileDao dao=new SFileDao();
		int wcid=dao.getWcid();
		dao.closeRourse();
		return wcid;
	}

	public int getPcid() throws SQLException {
		SFileDao dao=new SFileDao();
		int pcid=dao.getPcid();
		dao.closeRourse();
		return pcid;
	}

	public void addWcCase(WeddingCase wc) throws SQLException {
		SFileDao dao=new SFileDao();
		dao.addWcCase(wc);
		dao.closeRourse();
		
	}
	public List<WeddingCase> showCaseList1() throws SQLException {
		SFileDao dao=new SFileDao();
		List<WeddingCase> list=dao.showCaseList1();
		dao.closeRourse();
		return list;
	}

	public int addtest(Picture pc) throws SQLException {
		SFileDao dao=new SFileDao();
		int count=0;
		try {
			count=dao.addtest(pc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.closeRourse();
		return count;
	}

	public WeddingCase getCaseAll(int wcid) throws SQLException {
		SFileDao dao=new SFileDao();
		WeddingCase wc=dao.getCaseAll(wcid);
		dao.closeRourse();
		return wc;
	}

	public List<Picture> getCasePictures(int wcid) throws SQLException {
		SFileDao dao=new SFileDao();
		List<Picture> list=dao.getCasePictures(wcid);
		dao.closeRourse();
		return list;
	}

	public byte[] getPic(int pid) throws SQLException {
		SFileDao dao=new SFileDao();
		byte[] pic=dao.getPic(pid);
		dao.closeRourse();
		return pic;
	}

	public int updateCase(WeddingCase wc) throws SQLException {
		SFileDao dao=new SFileDao();
		int count=dao.updateCase(wc);
		dao.closeRourse();
		return count;
	}

	public int deleteCase(int wcid) throws SQLException {
		SFileDao dao=new SFileDao();
		int cc=dao.deletePic(wcid);
		dao.closeRourse();
		int count=dao.deleteCase(wcid);
		dao.closeRourse();

		return count;
	}

	public List<WeddingCase> getWedCaseList() throws SQLException {
		SFileDao dao=new SFileDao();
		List<WeddingCase> list=dao.getWedCaseList();
		dao.closeRourse();
		return list;
	}

	public List<Picture> getWedCasePic(List<WeddingCase> lstWC) throws SQLException {
		SFileDao dao=new SFileDao();
		List<Picture> list=dao.getWedCasePic(lstWC);
		dao.closeRourse();
		return list;
	}

}
