package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.UserDao;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.Reservation;
import com.etc.wedding.dto.WeddingGround;

public class UserBiz {
/**
 * �û�ע��
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
 * ��¼
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
 * ��ӹ���Ա
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
 * ��ʾ�����û�
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
 * �����û����Ƿ����
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
 * ����Ա��¼
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
 * �û�ԤԼ
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
 * �޸�����
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
 * ɾ���û�
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
 * ɾ����ѡ�û�
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
 * ԤԼ����
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
