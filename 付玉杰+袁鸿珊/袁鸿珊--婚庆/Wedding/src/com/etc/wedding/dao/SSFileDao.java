package com.etc.wedding.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingDress;

public class SSFileDao extends BaseDao {
	public int getWdrid() throws SQLException {
		try {
			getConn();
		} catch (SQLException e) {
			System.out.println("getconn失败");
			e.printStackTrace();
		}
		int wdid = 0;
		String sql = "select nvl(max(wdid),0)+ 1 from weddingdress t";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			while (rs.next()) {
				wdid = rs.getInt(1);
				System.out.println(wdid);
			}
		}
		return wdid;
	}

	public int getPcid() throws SQLException {
		getConn();
		int pcid = 0;
		String sql = "select  nvl(max(pid),0)+ 1 from picture t";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			while (rs.next()) {
				pcid = rs.getInt(1);
				System.out.println(pcid);
			}
		}
		return pcid;
	}

	public int addtest(Picture pc) throws SQLException {
		getConn();
		String sql = "insert into picture (pid,wdid,ppic)values(?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setInt(1, pc.getPid());
		ps.setInt(2, pc.getWdid());
		ps.setBytes(3, pc.getPpic());
		int count = ps.executeUpdate();
		return count;
	}

	public int addWdress(WeddingDress wd) throws SQLException {
		getConn();
		String sql = "insert into weddingdress values(?,?,?,?,?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wd.getWdid());
		ps.setString(2, wd.getWdname());
		ps.setString(3, wd.getWdseries());
		ps.setInt(4, wd.getWdprice());
		ps.setString(5, wd.getWdcolor());
		ps.setString(6, wd.getWdintroduction());
		ps.setString(7, wd.getWdclothes());
		ps.setString(8, wd.getWdaccessories());
		ps.setString(9, wd.getWdexplain());
		int count = ps.executeUpdate();
		return count;
	}

	public List<WeddingDress> getWedDressInf() throws SQLException {
		getConn();
		List<WeddingDress> list = null;
		String sql = "select * from weddingdress";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			list = new ArrayList<WeddingDress>();
			while (rs.next()) {
				WeddingDress wd = new WeddingDress();
				wd.setWdid(rs.getInt("wdid"));
				wd.setWdname(rs.getString("wdname"));
				wd.setWdseries(rs.getString("wdseries"));
				wd.setWdprice(rs.getInt("wdprice"));
				wd.setWdcolor(rs.getString("wdcolor"));
				wd.setWdintroduction(rs.getString("wdintroduction"));
				wd.setWdclothes(rs.getString("wdclothes"));
				wd.setWdaccessories(rs.getString("wdaccessories"));
				wd.setWdexplain(rs.getString("wdexplain"));
				list.add(wd);
			}
		}
		return list;
	}

	public List<Picture> getWedDressPic(int wdid) throws SQLException {
		List<Picture> list = null;
		getConn();
		String sql = "select * from Picture where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wdid);
		rs = ps.executeQuery();
		if (rs != null) {
			list = new ArrayList<Picture>();
			while (rs.next()) {
				byte[] pic = null;
				Picture pc = new Picture();
				pc.setPid(rs.getInt("pid"));
				list.add(pc);
			}
		}
		return list;
	}

	public WeddingDress getWedDressInfOne(int wdid) throws SQLException {
		getConn();
		WeddingDress wd = null;
		String sql = "select * from weddingdress where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wdid);
		rs = ps.executeQuery();
		if (rs.next()) {
			wd = new WeddingDress();
			wd.setWdid(rs.getInt("wdid"));
			wd.setWdname(rs.getString("wdname"));
			wd.setWdseries(rs.getString("wdseries"));
			wd.setWdprice(rs.getInt("wdprice"));
			wd.setWdcolor(rs.getString("wdcolor"));
			wd.setWdintroduction(rs.getString("wdintroduction"));
			wd.setWdclothes(rs.getString("wdclothes"));
			wd.setWdaccessories(rs.getString("wdaccessories"));
			wd.setWdexplain(rs.getString("wdexplain"));
		}
		return wd;
	}

	public int updateDress(WeddingDress wd) throws SQLException {
		getConn();
		String sql = "update weddingdress set wdname=?,wdseries=?,wdprice=?,"
				+ "wdcolor=?,wdintroduction=?,wdclothes=?,wdaccessories=?,"
				+ "wdexplain=? where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, wd.getWdname());
		ps.setString(2, wd.getWdseries());
		ps.setInt(3, wd.getWdprice());
		ps.setString(4, wd.getWdcolor());
		ps.setString(5, wd.getWdintroduction());
		ps.setString(6, wd.getWdclothes());
		ps.setString(7, wd.getWdaccessories());
		ps.setString(8, wd.getWdexplain());
		ps.setInt(9, wd.getWdid());
		int count = ps.executeUpdate();
		return count;
	}

	public int deleteDressPic(int wdid) throws SQLException {
		getConn();
		String sql = "delete from picture where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wdid);
		int count = ps.executeUpdate();
		if (count != 0) {
			System.out.println("Dao 删除婚纱图片成功");
		}
		return count;
	}

	public int deleteDress(int wdid) throws SQLException {
		getConn();
		String sql = "delete from weddingdress where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wdid);
		int count = ps.executeUpdate();
		return count;
	}

	public List<Picture> getDressPic(List<WeddingDress> listInf)
			throws SQLException {
		List<Picture> list = new ArrayList<Picture>();
		for (int i = 0; i < listInf.size(); i++) {
			WeddingDress wd = listInf.get(i);
			int wdid = wd.getWdid();
			Picture pc = getDressPid(wdid);
			list.add(pc); // 前台 查找婚纱的第一张图片的ID
		}
		return list;
	}

	public Picture getDressPid(int wdid) throws SQLException {
		getConn();
		Picture pc = null;
		String sql = "select * from picture where wdid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wdid);
		rs = ps.executeQuery();
		if (rs.next()) {
			pc = new Picture();
			pc.setPid(rs.getInt("pid"));
		}
		return pc;
	}
}
