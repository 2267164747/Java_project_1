package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.Date;

import com.etc.wedding.dao.SydDao;

public class SydBiz {

	public int searchDressTime(int wdid, Date data) throws SQLException {
		SydDao dao = new SydDao();
		int count = dao.searchDressTime(wdid, data);
		dao.closeRourse();
		return count;
	}

	public int getRservWdid() throws SQLException {
		SydDao dao = new SydDao();
		int rid = dao.getRservWdid();
		dao.closeRourse();
		return rid;
	}

	public int addReservDress(int rid, int wdid, Date data) throws SQLException {
		SydDao dao = new SydDao();
		int count = dao.addReservDress(rid,wdid,data);
		dao.closeRourse();
		return count;
	}
}
