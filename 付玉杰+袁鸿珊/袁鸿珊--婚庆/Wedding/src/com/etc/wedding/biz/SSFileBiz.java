package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.SFileDao;
import com.etc.wedding.dao.SSFileDao;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;
import com.etc.wedding.dto.WeddingDress;

public class SSFileBiz {

	public int getWdrid() throws SQLException {
		SSFileDao dao = new SSFileDao();
		int wdid = dao.getWdrid();
		dao.closeRourse();
		return wdid;
	}

	public int getPcid() throws SQLException {
		SSFileDao dao = new SSFileDao();
		int pcid = dao.getPcid();
		dao.closeRourse();
		return pcid;
	}

	public int addtest(Picture pc) throws SQLException {
		SSFileDao dao = new SSFileDao();
		int count = 0;
		try {
			count = dao.addtest(pc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.closeRourse();
		return count;
	}

	public int addWdress(WeddingDress wd) throws SQLException {
		SSFileDao dao = new SSFileDao();
		int count = dao.addWdress(wd);
		dao.closeRourse();
		return count;
	}

	public List<WeddingDress> getWedDressInf() throws SQLException {
		SSFileDao dao = new SSFileDao();
		List<WeddingDress> list = dao.getWedDressInf();
		dao.closeRourse();
		return list;
	}

	public List<Picture> getWedDressPic(int wdid) throws SQLException {// 查询图片列表

		SSFileDao dao = new SSFileDao();
		List<Picture> list = dao.getWedDressPic(wdid);
		dao.closeRourse();
		return list;
	}

	public WeddingDress getWedDressInfOne(int wdid) throws SQLException {// 查询单个信息
		SSFileDao dao = new SSFileDao();
		WeddingDress wd = dao.getWedDressInfOne(wdid);
		dao.closeRourse();
		return wd;
	}

	public int updateDress(WeddingDress wd) throws SQLException {
		SSFileDao dao = new SSFileDao();
		int count = dao.updateDress(wd);
		dao.closeRourse();
		return count;

	}

	public int deleteDressPic(int wdid) throws SQLException {
		SSFileDao dao = new SSFileDao();
		int count = dao.deleteDressPic(wdid);
		dao.closeRourse();
		return count;
	}

	public int deleteDress(int wdid) throws SQLException {
		SSFileDao dao = new SSFileDao();
		int count = dao.deleteDress(wdid);
		dao.closeRourse();
		return count;
	}

	public List<Picture> getDressPic(List<WeddingDress> listInf) throws SQLException{
		//半半拉拉的工程
		SSFileDao dao=new SSFileDao();
		List<Picture> list=dao.getDressPic(listInf);
		dao.closeRourse();		
		return list;
	}
}
