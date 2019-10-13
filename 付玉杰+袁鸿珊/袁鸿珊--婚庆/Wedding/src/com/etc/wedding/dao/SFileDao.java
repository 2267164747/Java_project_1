package com.etc.wedding.dao;

import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.etc.wedding.dto.Picture;
import com.etc.wedding.dto.WeddingCase;

public class SFileDao extends BaseDao {

	public int getWcid() throws SQLException {
		try {
			getConn();
		} catch (SQLException e) {
			System.out.println("getconn ß∞‹");
			e.printStackTrace();
		}
		int wcid = 0;
		String sql = "select nvl(max(wcid),0)+ 1 from weddingcase t";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			while (rs.next()) {
				wcid = rs.getInt(1);
				System.out.println(wcid);
			}
		}
		return wcid;
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

	public void addWcCase(WeddingCase wc) throws SQLException {
		getConn();
		System.out.println(wc.getWcid());
		String sql = "insert into weddingcase values(?,?,?,?,?,?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wc.getWcid());
		ps.setString(2, wc.getWcintroduction());
		ps.setString(3, wc.getWcdesign());
		ps.setInt(4, wc.getWccount());
		ps.setString(5, wc.getWccolor());
		ps.setString(6, wc.getWcmain());
		ps.setString(7, wc.getWcvice());
		ps.setString(8, wc.getWcground());
		ps.setString(9, wc.getWclabel());
		ps.setDate(10, new Date(wc.getWcwedding_date().getTime()));

		int count = ps.executeUpdate();
		if (count != 0) {
			System.out.print("≤Â»ÎªÈ¿Ò∞∏¿˝–≈œ¢≥…π¶");
		}
	}

	public List<WeddingCase> showCaseList1() throws SQLException {
		getConn();
		List<WeddingCase> list = null;
		String sql = "select *from weddingcase";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			list = new ArrayList<WeddingCase>();
			while (rs.next()) {
				WeddingCase wc = new WeddingCase();
				wc.setWcid(rs.getInt("wcid"));
				wc.setWcintroduction(rs.getString("wcintroduction"));// ªÈ¿ÒºÚΩÈ
				wc.setWcdesign(rs.getString("wcdesign"));// ªÈ¿Ò√Ë ˆ
				wc.setWccount(rs.getInt("wccount"));// ≤Œº”»À ˝
				wc.setWccolor(rs.getString("wccolor"));// ªÈ¿Ò…´≤ 
				wc.setWcmain(rs.getString("wcmain"));// ªÈ¿Ò÷˜Ã‚
				wc.setWcground(rs.getString("wcground"));// ªÈ¿Ò≥°µÿ
				wc.setWclabel(rs.getString("wclabel"));// ªÈ¿Ò±Í«©
				list.add(wc);
			}
		}
		return list;

	}

	public int addtest(Picture pc) throws SQLException {
		getConn();
		String sql = "insert into picture (pid,wcid,ppic)values(?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setInt(1, pc.getPid());
		ps.setInt(2, pc.getWcid());
		ps.setBytes(3, pc.getPpic());
		int count = ps.executeUpdate();
		return count;
	}

	public WeddingCase getCaseAll(int wcid) throws SQLException {
		WeddingCase wc = null;
		getConn();
		String sql = "select *from weddingcase where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wcid);
		rs = ps.executeQuery();
		if (rs != null) {
			while (rs.next()) {
				wc = new WeddingCase();
				wc.setWcid(rs.getInt("wcid"));
				wc.setWcintroduction(rs.getString("wcintroduction"));// ªÈ¿ÒºÚΩÈ
				wc.setWcdesign(rs.getString("wcdesign"));// ªÈ¿Ò√Ë ˆ
				wc.setWccount(rs.getInt("wccount"));// ≤Œº”»À ˝
				wc.setWccolor(rs.getString("wccolor"));// ªÈ¿Ò…´≤ 
				wc.setWcmain(rs.getString("wcmain"));// ªÈ¿Ò÷˜Ã‚
				System.out.println(rs.getString("wcmain"));
				wc.setWcground(rs.getString("wcground"));// ªÈ¿Ò≥°µÿ
				wc.setWclabel(rs.getString("wclabel"));// ªÈ¿Ò±Í«©
				wc.setWcvice(rs.getString("wcvice"));
				System.out.println(rs.getString("wcvice"));
				wc.setWcwedding_date(rs.getDate("wcwedding_date"));
			}
		}
		return wc;
	}

	public List<Picture> getCasePictures(int wcid) throws SQLException {
		List<Picture> list = null;
		getConn();
		String sql = "select * from Picture where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wcid);
		rs = ps.executeQuery();
		if (rs != null) {
			list = new ArrayList<Picture>();
			while (rs.next()) {
				byte[] pic = null;
				Picture pc = new Picture();
				pc.setPid(rs.getInt("pid"));
				pic = rs.getBytes("ppic");
				pc.setPpic(pic);
				list.add(pc);
			}
		}
		return list;
	}

	public byte[] getPic(int pid) throws SQLException {
		byte[] pic = null;
		getConn();
		String sql = "select * from Picture where pid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, pid);
		rs = ps.executeQuery();
		if (rs.next()) {
			pic = rs.getBytes("ppic");

		}
		return pic;
	}

	public int updateCase(WeddingCase wc) throws SQLException {
		getConn();
		String sql = "update weddingcase set WCINTRODUCTION=?, WCDESIGN=?,"
				+ "WCCOUNT=?,WCCOLOR=?,WCMAIN=?,"
				+ "WCVICE=?,WCGROUND=?,WCLABEL=?,WCWEDDING_DATE=? where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, wc.getWcintroduction());
		ps.setString(2, wc.getWcdesign());
		ps.setInt(3, wc.getWccount());
		ps.setString(4, wc.getWccolor());
		ps.setString(5, wc.getWcmain());
		ps.setString(6, wc.getWcvice());
		ps.setString(7, wc.getWcground());
		ps.setString(8, wc.getWclabel());
		ps.setDate(9, new Date(wc.getWcwedding_date().getTime()));
		ps.setInt(10, wc.getWcid());
		int count = ps.executeUpdate();
		return count;
	}

	public int deleteCase(int wcid) throws SQLException {
		getConn();
		String sql = "delete from weddingcase where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wcid);
		int count = ps.executeUpdate();
		return count;
	}

	public int deletePic(int wcid) throws SQLException {
		getConn();
		String sql = "delete from picture where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wcid);
		int count = ps.executeUpdate();
		return count;
	}

	public List<WeddingCase> getWedCaseList() throws SQLException {
		getConn();
		List<WeddingCase> list=null;
		String sql = "select * from WeddingCase";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			list=new ArrayList<WeddingCase>();
			while (rs.next()) {
				WeddingCase wc=new WeddingCase();
				wc.setWcid(rs.getInt("wcid"));
				wc.setWcmain(rs.getString("wcmain"));
				list.add(wc);
			}
		}
		return list;
	}

	public List<Picture> getWedCasePic(List<WeddingCase> lstWC) throws SQLException {
		List<Picture> list=new ArrayList<Picture>();
		for(int i=0;i<lstWC.size();i++){
			WeddingCase wc=lstWC.get(i);
			 int wcid=wc.getWcid();
			 Picture pc=getWedCasePicOne(wcid);
			 list.add(pc);
		}
		return list;
	}

	private Picture getWedCasePicOne(int wcid) throws SQLException {
		getConn();
		Picture pc=new Picture();
		String sql="select * from  picture where wcid=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, wcid);
		rs = ps.executeQuery();
		if(rs.next()){
			pc.setPid(rs.getInt("pid"));
		}
		else{
			System.out.println("≤È’“Õº∆¨id ß∞‹");
		}
		return pc;
	}
}
