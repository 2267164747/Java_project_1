package com.etc.wedding.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.Reservation;
import com.etc.wedding.util.Log;

public class UserDao extends BaseDao{
/**
 *用户注册
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
 * 登录
 * @param uname
 * @param pwd
 * @return
 */
public Huser login(String uname, String pwd) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "select * from huser where huuname='"+uname+"' and hupwd='"+pwd+"' and huroel=0";
	try {
		ps = con.prepareStatement(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	Huser hu = null;
	try {
		rs = ps.executeQuery();
		if(rs.next()){
			hu = new Huser();
			hu.setHuid(rs.getInt("huid"));
			hu.setHuname(rs.getString("huname"));
			hu.setHuuname(rs.getString("huuname"));
		}
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return hu;
}
/**
 * 添加管理员
 * @param uname
 * @param pwd
 * @return
 */
public int addAdmin(String uname, String pwd) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "insert into huser(huid,huuname,hupwd,huroel) values((select nvl(max(huid),0)+1 from huser),"
			+ "'"+uname+"','"+pwd+"',1)";
	try {
		st = con.createStatement();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	int count = 0;
	try {
		count = st.executeUpdate(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return count;
}
/**
 * 显示所有用户
 * @return 
 */
public List<Huser> userShow() {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}	
	String sql = "select * from huser where huroel=0";
	try {
		st = con.createStatement();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	List<Huser> list = null;
	try {
		 rs= st.executeQuery(sql);
		 if(rs!=null){
			 list = new ArrayList<Huser>();
			 while(rs.next()){
				 Huser hu = new Huser();
				 hu.setHuid(rs.getInt("huid"));
				 hu.setHuname(rs.getString("huname"));
				 hu.setHuphone(rs.getLong("huphone"));
				 hu.setHuqq(rs.getInt("huqq"));
				 hu.setHuuname(rs.getString("huuname"));
				 list.add(hu);
			 }
		 }
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return list;
}
/**
 * 检测用户名是否存在
 * @param uname
 * @return
 */
public int checkUname(String uname) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql="select * from huser where huuname='"+uname+"'";
	try {
		st = con.createStatement();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	int count = 0;
	try {
		count = st.executeUpdate(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return count;
}
/**
 * 管理员登录
 * @param uname
 * @param pwd
 * @return
 */
public Huser adminLogin(String uname, String pwd) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "select * from huser where huuname='"+uname+"' and hupwd='"+pwd+"' and huroel=1";
	try {
		ps = con.prepareStatement(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	Huser hu = null;
	try {
		rs = ps.executeQuery();
		if(rs.next()){
			hu = new Huser();
			hu.setHuuname(rs.getString("huuname"));
			hu.setHupwd(rs.getString("hupwd"));
		}
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return hu;
}
/**
 * 用户预约
 * @param rs
 * @return
 */
public List<Reservation> getUserBooking(Reservation re) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	
	
	List<Reservation> list = null;
	
	Reservation r = null;
	
		String sql1 = "select * from RESERVATION re ,weddingground wg where re.wgid=wg.wgid and huid = "+re.getHuid()+"";
		try {
			st = con.createStatement();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = st.executeQuery(sql1);
			if(rs!=null){
				list = new ArrayList<Reservation>();
				while(rs.next()){
					r = new Reservation();
					r.setRdate(rs.getDate("rdate"));
					r.setRemark(rs.getString("remark"));
					r.setWgid(rs.getInt("wgid"));
					r.setWgname(rs.getString("wgbname"));
					list.add(r);
					
				}
			}
			
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
	return list;
}
/**
 * 修改管理密码
 * @param hu
 * @return
 */
public int updatePwd(Huser hu) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "update huser set hupwd ='"+hu.getHupwd()+"' where huid="+hu.getHuid()+"";
	try {
		st = con.createStatement();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	int count = 0;
	try {
		count = st.executeUpdate(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	
	return count;
}
/**
 * 删除用户
 * @param huid
 * @return
 */
public int deleAdmin(int huid) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "delete from huser where huid="+huid;
	try {
		st = con.createStatement();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	int count = 0;
	try {
		count = st.executeUpdate(sql);
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return count;
}
/**
 * 删除所选用户
 * @param str
 * @return
 */
public int deleAll(String str) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String [] strs = str.split(",");
	int count = 0;
	for(int i = 0 ; i < strs.length ; i++){
		String sql = "delete from huser where huid = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, strs[i]);
			ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		count++;
	}
		return count;
}
/**
 * 预约场地
 * @param rs
 * @return
 */
public int insertR(Reservation re) {
	try {
		getConn();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	String sql = "insert into  RESERVATION(rid,huid,wgid,rdate,remark)  "
			+ "values((select nvl(max(rid),0)+1 from  RESERVATION),"+re.getHuid()+","
					+ ""+re.getWgid()+",?,'"+re.getRemark()+"')";
	try {
		ps = con.prepareStatement(sql);
		ps.setDate(1, new Date(re.getRdate().getTime()));
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	int count = 0; 
	try {
		count = ps.executeUpdate();
	} catch (SQLException e) {
		Log.logger.debug(e.getMessage());
		e.printStackTrace();
	}
	return count;
}

}
