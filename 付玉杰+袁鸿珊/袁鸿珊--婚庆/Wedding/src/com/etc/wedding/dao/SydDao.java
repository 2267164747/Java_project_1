package com.etc.wedding.dao;

import java.sql.Date;
import java.sql.SQLException;


public class SydDao  extends BaseDao{

	public int searchDressTime(int wdid, java.util.Date data) throws SQLException {
		getConn();
		int count=0;
		String sql="select * from reservation where wdid=? and rdate=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, wdid);
		ps.setDate(2, new Date(data.getTime()));
		rs=ps.executeQuery();
		if(rs.next()){
			count=1;
		}
		return count;
	}
	public int getRservWdid() throws SQLException {
		getConn();
		int rid= 0;
		String sql = "select nvl(max(rid),0)+ 1 from reservation t";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if (rs != null) {
			while (rs.next()) {
				rid = rs.getInt(1);
				System.out.println(rid);
			}
		}
		return rid;
	}
	public int addReservDress(int rid, int wdid, java.util.Date data) throws SQLException {
		getConn();
		String sql="insert into reservation (rid,wdid,rdate) values (?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setInt(1, rid);
		ps.setInt(2, wdid);
		ps.setDate(3,new Date(data.getTime()));
		int count=ps.executeUpdate();
		return count;
	}
	
}
