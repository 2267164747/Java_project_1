package com.etc.wedding.biz;

import java.sql.SQLException;
import java.util.List;

import com.etc.wedding.dao.GroundDao;
import com.etc.wedding.dto.WeddingGround;

public class GroundBiz {
	/**
	 * ���񳡵�
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
	 * ��ʾ���񳡵�ͼƬ
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
	 * ��ó���������Ϣ
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
	 * �����᳡��ͼƬ
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
	 * ��ȡ��ͼ
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
	 * ��ӳ���
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
	 * ��ӳ�����ϸ��Ϣ
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
	 * ɾ������
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
	 * �޸ĳ���
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
