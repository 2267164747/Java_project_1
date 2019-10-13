package com.etc.wedding.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.wedding.dto.BanquetHall;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.WGDiscount;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.Log;

public class UserDao extends BaseDao{
/**
 *ÓÃ»§×¢²á
 * @param hu
 * @return
 */
	public int register(Huser hu) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "insert into huser values((select nvl(max(huid),0)+1 from huser),'"+hu.getHuuname()+"',"
				+ "'"+hu.getHupwd()+"','"+hu.getHuname()+"',"+hu.getHuphone()+","+hu.getHuqq()+",'0')";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int count = 0 ; 
		try {
			count = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return count;
	}
/**
 * µÇÂ¼
 * @param uname
 * @param pwd
 * @return
 */
public boolean login(String uname, String pwd) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "select * from huser where huuname='"+uname+"' and hupwd='"+pwd+"'";
	try {
		ps = con.prepareStatement(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	boolean falg = false;
	try {
		rs = ps.executeQuery();
		if(rs.next()){
			falg = true;
		}else{
			falg = false;
		}
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return falg;
}

}
