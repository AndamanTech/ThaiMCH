package com.google.tmch.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.google.tmch.dao.MomDao;
import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;
import com.google.tmch.model.Mom;
import com.google.tmch.model.MomHealthHistory;
import com.google.tmch.model.MomWomb;

public class MomDaoImpl extends JdbcDaoSupport implements MomDao{

	@Override
	public boolean saveDataMom(Mom mom) throws Exception {
			try{
			String sql=	"INSERT INTO mom(" +
						"mom_id," +
						"mom_firstname," +
						"mom_lastname," +
						"mom_id13," +
						"mom_telno," +
						"mom_religion," +
						"mom_occupation, " +
						"crtd_timestamp," +
						"updt_timestamp)" +
						"VALUES (?,?,?,?,?,?,?,?,?)";
			this.getJdbcTemplate().update(sql,new Object[]{
							mom.getMom_id(),
							mom.getMom_firstname(),
							mom.getMom_lastname(),
							mom.getMom_id13(),
							mom.getMom_telno(),
							mom.getMom_religion(),
							mom.getMom_occupation(),
							mom.getCrtd_timestamp(),
							mom.getUpdt_timestamp()
			});
			return true;
		}catch(DataAccessException e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Mom> getlistMom(String limit,String offset) throws Exception {
		String sql="select * from mom LIMIT "+Integer.valueOf(limit)+" OFFSET "+Integer.valueOf(offset);
		System.out.println("Get list Mmom :: "+sql);
		List<Mom> listMom=this.getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Mom>(Mom.class));
		return listMom;
	}

	@Override
	public List<Mom> getlistMom() throws Exception {
		String sql="select * from mom ";//LIMIT "+Integer.valueOf(limit)+" OFFSET "+Integer.valueOf(offset);
		System.out.println("Get list Mmom :: "+sql);
		List<Mom> listMom=this.getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Mom>(Mom.class));
		return listMom;
	}

	@Override
	public Mom findMomById(String momid) throws Exception {
		String sql="select * from mom where mom_id=?";
		Mom resultmom=(Mom) this.getJdbcTemplate().queryForObject(sql, new Object[] {momid},new BeanPropertyRowMapper<Mom>(Mom.class));
		return resultmom;
	}

	@Override
	public MomHealthHistory getMomHealthHistory(String momid) throws Exception {
		String sql="select * from mom_health_history where mom_id=?";
		MomHealthHistory healthHistoryResult=(MomHealthHistory) this.getJdbcTemplate().queryForObject(sql, new Object[] {momid},new BeanPropertyRowMapper<MomHealthHistory>(MomHealthHistory.class));
		return healthHistoryResult;
	}

	@Override
	public List<MomWomb> getMomWomb(String momid) throws Exception {
		String sql="SELECT * from mom_womb \n" +
				"WHERE mom_womb.mom_id='"+momid+"'";
		List<MomWomb> healthHistoryResult=this.getJdbcTemplate().query(sql, new BeanPropertyRowMapper<MomWomb>(MomWomb.class));
		return healthHistoryResult;
	}

	@Override
	public List<Child> getChildList(String momid) throws Exception {
		String sql="select * from child where child.mom_id=?";
		List<Child> childList=this.getJdbcTemplate().query(sql, new Object[] {momid}, new BeanPropertyRowMapper<Child>(Child.class));
		return childList;
	}

	@Override
	public boolean saveMomHealthHistory(MomHealthHistory momhealth)
			throws Exception {
		try{
			String sql=	"INSERT INTO mom_health_history(" +
						"mom_health_history_id," +
						"mom_id," +
						"mom_health_crdt_time," +
						"mom_health_updt_time)" +
						"VALUES (?,?,?,?)";
			this.getJdbcTemplate().update(sql,new Object[]{
					momhealth.getMom_health_history_id(),
					momhealth.getMom_id(),
					momhealth.getMom_health_crdt_time(),
					momhealth.getMom_health_updt_time()
			});
			return true;
		}catch(DataAccessException e){
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean updateMom(final Mom mom) throws Exception {
		try{

			StringBuilder build=new StringBuilder();
			build.append("UPDATE `mom` SET \n" +
					"mom.mom_firstname = ?,\n" +//1
					"mom.mom_lastname= ?,\n" +//2
					"mom.mom_id13=? ,\n" +//3
					"mom.mom_telno= ?,\n" +//4
					"mom.mom_email= ?,\n" +//5
					"mom.mom_religion= ?,\n" +//6
					"mom.mom_occupation= ?,\n" +//7
					
					"mom.dad_firstname= ?,\n" +//8
					"mom.dad_lastname= ? ,\n"+//9
					"mom.dad_id13 = ?,\n" +//10
					"mom.dad_telno = ?,\n" +//11
					"mom.dad_email = ?,\n" +//12
					"mom.dad_religion = ?,\n" +//13
					"mom.dad_occupation = ?,\n" +//14
					
					"mom.address_no = ?,\n" +//15
					"mom.address_soi = ?,\n" +//16
					"mom.address_road = ?,\n" +//17
					"mom.address_moo = ?,\n" +//18
					"mom.address_tumbol = ?,\n" +//19
					"mom.address_amphur = ?,\n" +//20
					"mom.address_changwat = ?,\n" +//21
					"mom.address_zipcode = ?,\n" +//22
					"mom.crtd_timestamp = ?,\n" +//23
					"mom.updt_timestamp = ?\n" +//24
					"where (mom.mom_id= ?)");//25
			this.getJdbcTemplate().batchUpdate(build.toString(), new BatchPreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					ps.setString(1,  mom.getMom_firstname());
					ps.setString(2,  mom.getMom_lastname());
					ps.setString(3,  mom.getMom_id13());
					ps.setString(4,  mom.getMom_telno());
					ps.setString(5,  mom.getMom_email());
					ps.setString(6,  mom.getMom_religion());
					ps.setString(7,  mom.getMom_occupation());
					
					ps.setString(8,  mom.getDad_firstname());
					ps.setString(9,  mom.getDad_lastname());
					ps.setString(10, mom.getDad_id13());
					ps.setString(11, mom.getDad_telno());
					ps.setString(12, mom.getMom_email());
					ps.setString(13, mom.getMom_religion());
					ps.setString(14, mom.getMom_occupation());
					
					ps.setString(15, mom.getAddress_no());
					ps.setString(16, mom.getAddress_soi());
					ps.setString(17, mom.getAddress_road());
					ps.setString(18, mom.getAddress_moo());
					ps.setString(19, mom.getAddress_tumbol());
					ps.setString(20, mom.getAddress_amphur());
					ps.setString(21, mom.getAddress_changwat());
					ps.setString(22, mom.getAddress_zipcode());
					
					ps.setString(23, mom.getCrtd_timestamp());
					ps.setString(24, mom.getUpdt_timestamp());
					
					ps.setString(25, mom.getMom_id());
				}
				
				@Override
				public int getBatchSize() {
					return 1;
				}
			});
			return true;
		}catch(DataAccessException e){
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public boolean updateMomHealthHistory(final MomHealthHistory momhealth)
			throws Exception {
		System.out.println("Update MOm health history method");
		try{

			StringBuilder build=new StringBuilder();
			build.append("UPDATE `mom_health_history` SET \n" +
					"mom_health_history.mom_weight = ?,\n" +//1
					"mom_health_history.mom_height= ?,\n" +//2
					"mom_health_history.mom_contraception=? ,\n" +//3
					"mom_health_history.mom_surgical_history= ?,\n" +//4
					"mom_health_history.mom_allergic_history= ?,\n" +//5
					"mom_health_history.mom_physical_health= ?,\n" +//6
					"mom_health_history.mom_health_updt_time= ?\n" +//7
					"where (mom_health_history.mom_health_history_id= ?)");//8
			this.getJdbcTemplate().batchUpdate(build.toString(), new BatchPreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {					
					ps.setString(1, momhealth.getMom_weight());
					ps.setString(2, momhealth.getMom_height());
					ps.setString(3,momhealth.getMom_contraception());
					ps.setString(4, momhealth.getMom_surgical_history());
					ps.setString(5, momhealth.getMom_allergic_history());
					ps.setString(6, momhealth.getMom_physical_health());
					ps.setString(7, momhealth.getMom_health_updt_time());
					ps.setString(8, momhealth.getMom_health_history_id());
				}
				
				@Override
				public int getBatchSize() {
					return 1;
				}
			});
			return true;
		}catch(DataAccessException e){
			System.out.println(e.getMessage());
			return false;
		}

	}

	@Override
	public boolean addPregnancy(MomWomb momwomb) throws Exception {
		try{
			String sql=	"INSERT INTO mom_womb(" +
						"mom_womb_history_id," +
						"mom_id," +
						"mom_womb_order," +
						"mom_predit_be_born," +
						"mom_weight_before_womb," +
						"mom_operated_on_womb," +
						"mom_womb_crtd_time, " +
						"mom_womb_updt_time)" +
						"VALUES (?,?,?,?,?,?,?,?)";
			this.getJdbcTemplate().update(sql,new Object[]{
					momwomb.getMom_womb_history_id(),
					momwomb.getMom_id(),
					momwomb.getMom_womb_order(),
					momwomb.getMom_predit_be_born(),
					momwomb.getMom_weight_before_womb(),
					momwomb.getMom_operated_on_womb(),
					momwomb.getMom_womb_crtd_time(),
					momwomb.getMom_womb_updt_time()
			});
			return true;
		}catch(DataAccessException e){
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public boolean addChild(Child child,Child_vaccine vaccine) throws Exception {
		
		try{
			String sql=	"INSERT INTO child(" +
						"child_id," +//1
						"mom_id," +//2
						"child_order," +//3
						"child_firstname," +//4
						"child_lastname," +//5
						"child_gender, " +//6
						"child_birthday," +//7
						"child_weight," +//8
						"child_height," +//9
						"child_length_of_head," +//10
						"child_crtd_time," +//11
						"child_uptd_time)" +//12
						"VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
			this.getJdbcTemplate().update(sql,new Object[]{
					child.getChild_id(),//1
					child.getMom_id(),//2
					child.getChild_order(),//3
					child.getChild_firstname(),//4
					child.getChild_lastname(),//5
					child.getChild_gender(),//6
					child.getChild_birthday(),//7
					child.getChild_weight(),//8
					child.getChild_height(),//9
					child.getChild_length_of_head(),//10
					child.getChild_crtd_time(),//11
					child.getChild_uptd_time()//12
			});
			
			String vaccine_sql="INSERT INTO child_vaccine(" +
								"child_vaccine_id," +
								"child_id," +
								"crt_time," +
								"updt_time)" +
								"VALUES (?,?,?,?)";
			this.getJdbcTemplate().update(vaccine_sql, new Object[]{
					vaccine.getChild_vaccine_id(),
					vaccine.getChild_id(),
					vaccine.getCrt_time(),
					vaccine.getUpdt_time()
			});
			return true;
		}catch(DataAccessException e){
			System.out.println(e.getMessage());
			return false;
		}
	}

}
