package com.etc.wedding.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.wedding.dto.BanquetHall;
import com.etc.wedding.dto.BrandCharacteristics;
import com.etc.wedding.dto.DiningStandard;
import com.etc.wedding.dto.WGDiscount;
import com.etc.wedding.dto.WeddingGround;
import com.etc.wedding.util.Log;

public class GroundDao extends BaseDao {
	/**
	 * 婚礼场地
	 * @return
	 */
	public List<WeddingGround> showground() {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		List<WeddingGround> list = null;
		String sql = "select * from weddingground";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				list = new ArrayList<WeddingGround>();
				while(rs.next()){
					WeddingGround wg = new WeddingGround();
					wg.setWgaddress(rs.getString("wgaddress"));
					wg.setWgbname(rs.getString("wgbname"));
					wg.setWgdetail_address(rs.getString("wgdetail_address"));
					wg.setWgtype(rs.getString("wgtype"));
					wg.setWgprice(rs.getInt("wgprice"));
					wg.setWgpic(rs.getBytes("wgpic"));
					wg.setWgid(rs.getInt("wgid"));
					wg.setWgexplain(rs.getString("wgexplain"));
					list.add(wg);
				}
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 显示场地图片
	 * @param wgid
	 * @return
	 */
	public byte[] getgroundpic(int wgid) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "select  wgpic from weddingground where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		byte [] pic = null;
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				while(rs.next()){
					pic = rs.getBytes("wgpic");
				}
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return pic;
	}
	/**
	 * 获得场地所有信息
	 * @param wgid
	 * @return
	 */
	public WeddingGround getGroundMessage(int wgid) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "select * from weddingground where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		WeddingGround wg =null;
		try {
			rs = ps.executeQuery();
			if(rs.next()){
				wg = new WeddingGround();
				wg.setWgaddress(rs.getString("wgaddress"));
				wg.setWgbname(rs.getString("wgbname"));
				wg.setWgdetail_address(rs.getString("wgdetail_address"));
				wg.setWgtype(rs.getString("wgtype"));
				wg.setWgprice(rs.getInt("wgprice"));
				wg.setWgpic(rs.getBytes("wgpic"));
				wg.setWgid(rs.getInt("wgid"));
				wg.setWgbigpic(rs.getBytes("wgbigpic"));
				wg.setWgexplain(rs.getString("wgexplain"));
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql2 = "select * from  DININGSTANDARD where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql2);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
			if(rs.next()){
			DiningStandard ds = new DiningStandard();
			ds.setDsname(rs.getString("dsname"));
			ds.setDsmessage1(rs.getString("dsmessage1"));	
			ds.setDsmessage2(rs.getString("dsmessage2"));	
			ds.setDsmessage3(rs.getString("dsmessage3"));	
			wg.setDs(ds);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql3 = "select * from  BRANDCHARACTERISTICS where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql3);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
			if(rs.next()){
				BrandCharacteristics bc = new BrandCharacteristics();
				bc.setBcmeeting(rs.getString("bcmeeting"));
				bc.setBcrecommend(rs.getString("bcrecommend"));
				bc.setBcrite(rs.getString("bcrite"));
				bc.setBcstory(rs.getString("bcstory"));
				bc.setBcwedding(rs.getString("bcwedding"));
				wg.setBc(bc);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql4 = "select * from  BANQUETHALL where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql4);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				List<BanquetHall> list = new ArrayList<BanquetHall>();
				while(rs.next()){
					BanquetHall bq = new BanquetHall();
					bq.setBharea(rs.getDouble("bharea"));
					bq.setBhcount(rs.getInt("bhcount"));
					bq.setBhfloor(rs.getString("bhfloor"));
					bq.setBhheight(rs.getInt("bhheight"));
					bq.setBhname(rs.getString("bhname"));
					bq.setBhpic(rs.getBytes("bhpic"));
					bq.setBhpillar(rs.getString("bhpillar"));
					bq.setBhid(rs.getInt("bhid"));
					list.add(bq);
				}
				wg.setList(list);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql5 = "select * from  WGDISCOUNT where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql5);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				List<WGDiscount> list = new ArrayList<WGDiscount>();
				while(rs.next()){
					WGDiscount wgd = new WGDiscount();
					wgd.setWgdid(rs.getInt("wgdid"));
					wgd.setWgdcontents(rs.getString("wgdcontents"));
					wgd.setWgdname(rs.getString("wgdname"));
					list.add(wgd);	
				}
				wg.setList2(list);
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		
		return wg;
	}
	/**
	 * 宴会场地图片
	 * @param bhid
	 * @return
	 */
	public byte[] getDetailImg(int bhid) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "select bhpic from BANQUETHALL where bhid="+bhid+"";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		byte [] pic =null;
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				while(rs.next()){
					pic = rs.getBytes("bhpic");
				}
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}		
		return pic;
	}
	/**
	 * 获得大图
	 * @param wgid
	 * @return
	 */
	public byte[] getBigpic(int wgid) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "select  wgbigpic from weddingground where wgid="+wgid+"";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		byte [] pic = null;
		try {
			rs = ps.executeQuery();
			if(rs!=null){
				while(rs.next()){
					pic = rs.getBytes("wgbigpic");
				}
			}
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return pic;
	}
	/**
	 * 添加场地
	 * @param wg
	 * @return
	 */
	public int addGround(WeddingGround wg) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "insert into weddingground values((select nvl(max(wgid),0)+1 from weddingground),"
				+ "'"+wg.getWgbname()+"','"+wg.getWgtype()+"','"+wg.getWgexplain()+"','"+wg.getWgaddress()+"',"
						+ "'"+wg.getWgdetail_address()+"',"+wg.getWgprice()+",?,?)";
		try {
			ps= con.prepareStatement(sql);
			ps.setBytes(1, wg.getWgpic());
			ps.setBytes(2, wg.getWgbigpic());
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int num = 0;
		try {
			num = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int wgid = 0;
		if(num>0){
			String sql1 = "select max(wgid) wgid from weddingground";
			try {
				ps = con.prepareStatement(sql1);
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try {
				rs = ps.executeQuery();
				if(rs.next()){
					wgid = rs.getInt("wgid");
				}
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}	
		}
		
		return wgid;
	}
	/**
	 * 添加场地详细信息
	 * @param wg
	 * @return
	 */
	public boolean addDetail(WeddingGround wg) throws SQLException{
		int count1 = addBH(wg);
		int count2 = addBc(wg);
		int count3 = addDS(wg);
		int count4 = addWGD(wg);
		boolean flag = false;
		if(count1>0 && count2>0 && count3>0 && count4>0){
			flag = true;
		}
		return flag;
	}
	/**
	 * 添加独家优惠
	 */
	private int addWGD(WeddingGround wg) {
		int count = 0;
		for(WGDiscount wgd :wg.getList2()){
			String sql = "insert into WGDISCOUNT values((select nvl(max(wgdid),0)+1 from WGDISCOUNT),"
					+ ""+wg.getWgid()+",'"+wgd.getWgdname()+"','"+wgd.getWgdcontents()+"')";
			try {
				ps = con.prepareStatement(sql);
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try {
				count = ps.executeUpdate();
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		return count;
	}
	/**
	 * 添加宴会餐标
	 * @param wg
	 * @return
	 */
	private int addDS(WeddingGround wg) {
		int count = 0;
		DiningStandard ds = wg.getDs();
		String sql="insert into DININGSTANDARD values((select nvl(max(dsid),0)+1 from DININGSTANDARD),"
				+ ""+wg.getWgid()+",'"+ds.getDsname()+"','"+ds.getDsmessage1()+"','"+ds.getDsmessage2()+"',"
						+ "'"+ds.getDsmessage3()+"')";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			count = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
		return count;
	}
	/**
	 * 添加品牌特色
	 * @param wg
	 * @return
	 */
	private int addBc(WeddingGround wg) {
		int count = 0;
		BrandCharacteristics bc = wg.getBc();
		String sql="insert into BRANDCHARACTERISTICS values((select nvl(max(bcid),0)+1 from BRANDCHARACTERISTICS),"
				+ ""+wg.getWgid()+",'"+bc.getBcstory()+"','"+bc.getBcrite()+"','"+bc.getBcmeeting()+"',"
						+ "'"+bc.getBcwedding()+"','"+bc.getBcrecommend()+"')";
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			count = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
	
		return count;
	}
	/**
	 * 添加宴会厅
	 * @param wg
	 * @return 
	 */
	private int addBH(WeddingGround wg) {
		int count = 0;
		for(BanquetHall bh :wg.getList()){
			String sql = "insert into BANQUETHALL values((select nvl(max(bhid),0)+1 from BANQUETHALL),"
					+ ""+wg.getWgid()+",'"+bh.getBhname()+"',"+bh.getBhcount()+","+bh.getBharea()+","
							+ "'"+bh.getBhpillar()+"','"+bh.getBhfloor()+"',"+bh.getBhheight()+",?)";
			try {
				ps = con.prepareStatement(sql);
				ps.setBytes(1, bh.getBhpic());
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try {
				count = ps.executeUpdate();
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		
		return count;
	}
	/**
	 * 删除场地
	 * @param wgid
	 * @return
	 */
	public int deleGround(int wgid) {
		try {
			getConn();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		String sql = "delete from weddingground where wgid="+wgid;
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int count =0;
		try {
			count = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		return count;
	}
	/**
	 * 
	 * 修改场地
	 * @param wg
	 * @return
	 */
	public int updateGround(WeddingGround wg) throws SQLException{
		String sql ="update weddingground set wgbname='"+wg.getWgbname()+"',wgtype='"+wg.getWgtype()+"',wgexplain='"+wg.getWgexplain()+"',"
				+ "wgaddress='"+wg.getWgaddress()+"',wgdetail_address='"+wg.getWgdetail_address()+"',wgprice="+wg.getWgprice()+""
						+ " where wgid="+wg.getWgid();
		try {
			ps = con.prepareStatement(sql);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int count1 = 0 ;
		try {
			count1 = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		List<BanquetHall> list1 = wg.getList();
		int count2 = 0 ;
		for(BanquetHall bh : list1){
			String sql1 = "update banquethall set bhname='"+bh.getBhname()+"',bhcount="+bh.getBhcount()+","
					+ "bharea="+bh.getBharea()+",bhpillar='"+bh.getBhpillar()+"',bhfloor='"+bh.getBhfloor()+"',"
							+ "bhheight="+bh.getBhheight()+" where wgid="+wg.getWgid()+" and bhid="+bh.getBhid();
			try {
				ps = con.prepareStatement(sql1);
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try {
				count2 = ps.executeUpdate();
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		BrandCharacteristics bc = wg.getBc();
		int count3 = 0;
		String sql2 = "update brandcharacteristics set bcstory='"+bc.getBcstory()+"',bcrite='"+bc.getBcrite()+"',"
				+ "bcmeeting='"+bc.getBcmeeting()+"',bcwedding='"+bc.getBcwedding()+"',bcrecommend='"+bc.getBcrecommend()+"' "
						+ "where wgid="+wg.getWgid();
		try {
			ps = con.prepareStatement(sql2);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			count3 = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		DiningStandard ds = wg.getDs();
		int count4 =0;
		String sql3="update DiningStandard set dsname='"+ds.getDsname()+"',dsmessage1='"+ds.getDsmessage1()+"',"
				+ "dsmessage2='"+ds.getDsmessage2()+"',dsmessage3='"+ds.getDsmessage3()+"' where wgid="+wg.getWgid();
		try {
			ps = con.prepareStatement(sql3);
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		try {
			count4 = ps.executeUpdate();
		} catch (SQLException e) {
			Log.logger.debug(e.getMessage());
			e.printStackTrace();
		}
		int count5 = 0;
		for(WGDiscount wgd :wg.getList2()){
			String sql4="update WGDISCOUNT set wgdname='"+wgd.getWgdname()+"',wgdcontents='"+wgd.getWgdcontents()+"'"
					+ " where wgid="+wg.getWgid()+" and wgdid="+wgd.getWgdid();
			try {
				ps = con.prepareStatement(sql4);
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
			try {
				count5 = ps.executeUpdate();
			} catch (SQLException e) {
				Log.logger.debug(e.getMessage());
				e.printStackTrace();
			}
		}
		int count = 0;
		if(count1>0 && count2>0 && count3>0 && count4>0 && count5>0){
			count=1;
		}
		return count;
	}

}
