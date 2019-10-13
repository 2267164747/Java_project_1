package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.UserDao;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.Reservation;
import com.etc.wedding.dto.WeddingGround;

public class UserBiz {
/**
 * 用户注册
 * @param hu
 * @return
 * @throws SQLException 
 */
	public int register(Huser hu) throws SQLException {
		UserDao dao = new UserDao();
		int count  = dao.register(hu);
		dao.closeRourse();
		return count;
	}
/**
 * 登录
 * @param uname
 * @param pwd
 * @return
 * @throws SQLException 
 */
public Huser login(String uname, String pwd) throws SQLException {
	UserDao dao = new UserDao();
	Huser hu = dao.login(uname,pwd);
	dao.closeRourse();
	return hu;
}
/**
 * 添加管理员
 * @param uname
 * @param pwd
 * @return
 * @throws SQLException 
 */
public int addAdmin(String uname, String pwd) throws SQLException {
	UserDao dao = new UserDao();
	int count = dao.addAdmin(uname,pwd);
	dao.closeRourse();
	return count;
}
/**
 * 显示所有用户
 * @return 
 * @throws SQLException 
 */
public List<Huser> userShow() throws SQLException {
	UserDao dao = new UserDao();
	List<Huser> list = dao.userShow();
	dao.closeRourse();
	return list;
	
}
/**
 * 检测该用户名是否存在
 * @param uname
 * @return
 * @throws SQLException 
 */
public int checkUname(String uname) throws SQLException {
	UserDao dao = new UserDao();
	int count = dao.checkUname(uname);
	dao.closeRourse();
	return count;
}
/**
 * 管理员登录
 * @param uname
 * @param pwd
 * @return
 * @throws SQLException 
 */
public Huser adminlogin(String uname, String pwd) throws SQLException {
	UserDao dao = new UserDao();
	Huser hu  = dao.adminLogin(uname,pwd);
	dao.closeRourse();
	return hu;
}
/**
 * 用户预约
 * @param rs
 * @return
 * @throws SQLException 
 */
public List<Reservation> getUserBooking(Reservation rs) throws SQLException {
	UserDao dao = new UserDao();
	List<Reservation> re = dao.getUserBooking(rs);
	dao.closeRourse();
	return re;
}
/**
 * 修改密码
 * @param hu
 * @return
 * @throws SQLException 
 */
public int updatePwd(Huser hu) throws SQLException {
	UserDao dao =new UserDao();
	int count = dao.updatePwd(hu);
	dao.closeRourse();
	return count;
}
/**
 * 删除用户
 * @param huid
 * @return
 * @throws SQLException 
 */
public int deleAdmin(int huid) throws SQLException {
	UserDao dao = new UserDao();
	int count = dao.deleAdmin(huid);
	dao.closeRourse();
	return count;
}
/**
 * 删除所选用户
 * @param str
 * @return
 * @throws SQLException 
 */
public int deleAll(String str) throws SQLException {
	UserDao dao = new UserDao();
	int count = dao.deleAll(str);
	dao.closeRourse();
	return count;
}
/**
 * 预约场地
 * @param rs
 * @return
 * @throws SQLException 
 */
public int insertR(Reservation rs) throws SQLException {
	UserDao dao = new UserDao();
	int count = dao.insertR(rs);
	dao.closeRourse();
	return count;
}


}
