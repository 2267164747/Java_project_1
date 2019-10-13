package com.etc.wedding.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.etc.wedding.util.Log;

public class BaseDao {
	public Connection con;
	public PreparedStatement ps;
	public ResultSet rs;
	public Statement st;
	public final static String JNDINAME="java:comp/env/jdbc/Wedding";
	
	public void getConn() throws SQLException{
		if(con==null||con.isClosed()){
			   InitialContext ic = null;
			try {
				ic = new InitialContext();
			} catch (NamingException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			   DataSource ds = null;
			try {
				ds = (DataSource) ic.lookup(JNDINAME);
			} catch (NamingException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			   con = ds.getConnection();
		   }
	}
	/**
	 * 事务的开启
	 */
	public void beginTran() {
		try {
			try {
				getConn();
			} catch (SQLException e) {
				Log.logger.debug("数据库连接失败！！");
				e.printStackTrace();
			}
			con.setAutoCommit(false);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}
	/**
	 * 提交事务
	 */
   public void commitTran(){
		try {
			con.commit();			
		} catch (SQLException e) {
			Log.logger.debug("提交失败");
			e.printStackTrace();
		}finally{
			try {
				closeRourse();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
   /**
    * 回滚事务
    */
   public void rollbackTran() {
		try {
			con.rollback();
		} catch (SQLException e) {
			Log.logger.debug("回滚失败");
			e.printStackTrace();
		}finally{
			try {
				closeRourse();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public void closeRourse() throws SQLException{
		if(con!=null){
			con.close();
		}
		if(ps!=null){
			ps.close();
		}
		if(rs!=null){
			rs.close();
		}
	}
	public ResultSet executeQuery(String sql, int startPage, int endPage) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql1 = "select * from(select rownum numrow, w.* from ("+sql+") w) tb , tstaff ts ,tmeetroom tr where ts.tsid=tb.tsid and tr.tmrid = tb.tmrid and numrow >= '"+startPage+"' and numrow < '"+endPage+"'" ;
		try {
			ps = con.prepareStatement(sql1);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return rs;
	}
	public  ResultSet executeQuery2(String sql, int startPage, int endPage) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql1 = "select * from(select rownum numrow, t.* from("+sql+") t) where numrow >='"+startPage+"' and numrow<'"+endPage+"'";
		try {
			ps = con.prepareStatement(sql1);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return rs;
	}

}
