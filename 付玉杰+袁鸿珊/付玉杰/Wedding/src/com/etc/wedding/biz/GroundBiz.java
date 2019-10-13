package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.GroundDao;
import com.etc.wedding.dto.WeddingGround;

public class GroundBiz {
	/**
	 * 婚礼场地
	 * @return
	 * @throws SQLException 
	 */
	public List<WeddingGround> showground() throws SQLException {
		GroundDao dao = new GroundDao();
		List<WeddingGround> list = dao.showground();
		dao.closeRourse();
		return list;
	}
	/**
	 * 显示婚礼场地图片
	 * @param wgid
	 * @return
	 * @throws SQLException 
	 */
	public byte[] getgroundpic(int wgid) throws SQLException {
		GroundDao dao = new GroundDao();
		byte [] pics = dao.getgroundpic(wgid);
		dao.closeRourse();
		return pics;
	}
	/**
	 * 获得场地所有信息
	 * @param wgid
	 * @return
	 * @throws SQLException 
	 */
	public WeddingGround getGroundMessage(int wgid) throws SQLException {
		GroundDao dao = new GroundDao();
		WeddingGround wg = dao.getGroundMessage(wgid);
		dao.closeRourse();
		return wg;
	}
	/**
	 * 获得宴会场地图片
	 * @param bhid
	 * @return
	 * @throws SQLException 
	 */
	public byte[] getDetailImg(int bhid) throws SQLException {
		GroundDao dao = new GroundDao();
		byte [] pic = dao.getDetailImg(bhid);
		dao.closeRourse();
		return pic;
	}
	/**
	 * 获取大图
	 * @param wgid
	 * @return
	 * @throws SQLException 
	 */
	public byte[] getBigpic(int wgid) throws SQLException {
		GroundDao dao = new GroundDao();
		byte [] pic = dao.getBigpic(wgid);
		dao.closeRourse();
		return pic;
	}
	/**
	 * 添加场地
	 * @param wg
	 * @return
	 * @throws SQLException 
	 */
	public int addGround(WeddingGround wg) throws SQLException {
		GroundDao dao = new GroundDao();
		int wgid = dao.addGround(wg);
		dao.closeRourse();
		return wgid;
	}
	/**
	 * 添加场地详细信息
	 * @param wg
	 * @return
	 */
	public boolean addDetial(WeddingGround wg) {
		GroundDao dao = new GroundDao();
		boolean flag = false;
		dao.beginTran();
		try{
			flag = dao.addDetail(wg);
			dao.commitTran();
		}catch (SQLException e){
			dao.rollbackTran();
		}
		return flag;
	}
	/**
	 * 删除场地
	 * @param wgid
	 * @return
	 * @throws SQLException 
	 */
	public int deleGround(int wgid) throws SQLException {
		GroundDao dao = new GroundDao();
		int count = dao.deleGround(wgid);
		dao.closeRourse();
		return count;
	}
	/**
	 * 修改场地
	 * @param wg
	 * @return
	 * @throws SQLException 
	 */
	public int updateGround(WeddingGround wg) throws SQLException {
		GroundDao dao = new  GroundDao();
		dao.beginTran();
		int count = 0;
		try{
			 count = dao.updateGround(wg);
			dao.commitTran();
		}catch (SQLException e){
			dao.rollbackTran();
		}
		
		return count;
	}


}
