package com.etc.wedding.biz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.SwsFileDao;
import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingDress;
import com.etc.wedding.dto.WeddingStyle;
import com.etc.wedding.dto.WeddingStyleFlow;

public class SwsFileBiz {
	public int getWsid() throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		int wsid = dao.getWsid();
		dao.closeRourse();
		return wsid;
	}

	public int getPcid() throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		int pcid = dao.getPcid();
		dao.closeRourse();
		return pcid;
	}

	public int addtest(Picture pc) throws SQLException {
		SwsFileDao dao = new SwsFileDao();
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
		SwsFileDao dao = new SwsFileDao();
		int count = dao.addWdress(wd);
		dao.closeRourse();
		return count;
	}

	public List<WeddingDress> getWedDressInf() throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		List<WeddingDress> list = dao.getWedDressInf();
		dao.closeRourse();
		return list;
	}

	public List<Picture> getWedDressPic(int wdid) throws SQLException {// 查询图片列表
		SwsFileDao dao = new SwsFileDao();
		List<Picture> list = dao.getWedDressPic(wdid);
		dao.closeRourse();
		return list;
	}

	public WeddingDress getWedDressInfOne(int wdid) throws SQLException {// 查询单个信息
		SwsFileDao dao = new SwsFileDao();
		WeddingDress wd = dao.getWedDressInfOne(wdid);
		dao.closeRourse();
		return wd;
	}

	public int updateDress(WeddingDress wd) throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		int count = dao.updateDress(wd);
		dao.closeRourse();
		return count;

	}

	public int deleteDressPic(int wdid) throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		int count = dao.deleteDressPic(wdid);
		dao.closeRourse();
		return count;
	}

	public int deleteDress(int wdid) throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		int count = dao.deleteDress(wdid);
		dao.closeRourse();
		return count;
	}

	public List<Picture> getDressPic(List<WeddingDress> listInf)
			throws SQLException {
		SwsFileDao dao = new SwsFileDao();
		List<Picture> list = dao.getDressPic(listInf);
		dao.closeRourse();
		return list;
	}

	// 新鲜写的
	public void AddStyle(WeddingStyle ws, WeddingStyleFlow wsf,
			List<Picture> listpc1, List<Picture> listpc2)  {
		SwsFileDao dao = new SwsFileDao();
		if (ws != null && wsf != null && listpc1 != null && listpc2 != null) {
			try {
			dao.beginTran();
				dao.AddStyle(ws);
				dao.AddStyleFlow(wsf);
				dao.Addlistpca(listpc1);
				dao.Addlistpcb(listpc2);
				dao.commitTran();
				System.out.println("添加完成了");
			} catch (SQLException e) {
				dao.rollbackTran();
				System.out.println("添加失败");
				e.printStackTrace();
			}finally {
				try {
					dao.closeRourse();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
