package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.UserDao;
import com.etc.wedding.dto.Huser;
import com.etc.wedding.dto.WeddingGround;

public class UserBiz {
/**
 * ÓÃ»§×¢²á
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
 * µÇÂ¼
 * @param uname
 * @param pwd
 * @return
 * @throws SQLException 
 */
public Huser login(String uname, String pwd) throws SQLException {
	UserDao dao = new UserDao();
	Huser hu=new Huser();
	hu= dao.login(uname,pwd);
	dao.closeRourse();
	return hu;
}

}
