package com.etc.wedding.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.junit.Test;

import com.etc.wedding.util.Log;



public class BaseDao {
	public Connection con;
	public PreparedStatement ps;
	public ResultSet rs;
	public Statement st;
	public final static String JNDINAME="java:comp/env/jdbc/Wedding";
	@Test
	public void getConn() throws SQLException{
		/*if (con == null || con.isClosed()) {
		InitialContext ic = new InitialContext();
		DataSource ds = (DataSource) ic.lookup(JNDIname);
		con = ds.getConnection();
	}*/
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
				System.out.println("���ݿ����ӳɹ�");
			} catch (NamingException e) {
				System.out.println("���ݿ�����ʧ��");
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try{
			   con = ds.getConnection();//������
			}catch(Exception e){
				e.getLocalizedMessage();
			}
		   }
	}
	/**
	 * ����Ŀ���
	 */
	public void beginTran() {
		try {
			try {
				getConn();
			} catch (SQLException e) {
				Log.logger.debug("���ݿ�����ʧ�ܣ���");
				e.printStackTrace();
			}
			con.setAutoCommit(false);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	}
	/**
	 * �ύ����
	 */
   public void commitTran(){
		try {
			con.commit();			
		} catch (SQLException e) {
			Log.logger.debug("�ύʧ��");
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
    * �ع�����
    */
   public void rollbackTran() {
		try {
			con.rollback();
		} catch (SQLException e) {
			Log.logger.debug("�ع�ʧ��");
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
