package com.google.tmch.dao.impl;


import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.google.tmch.dao.ChildDao;
import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;

public class ChildDaoImpl extends JdbcDaoSupport implements ChildDao {

	@Override
	public Child findChildById(String childid) throws Exception {
		String sql="select * from child where child_id=?";
		Child child=(Child) this.getJdbcTemplate().queryForObject(sql, new Object[] {childid},new BeanPropertyRowMapper<Child>(Child.class));
		return child;
	}

	@Override
	public boolean updateChildProfile(final Child child) throws Exception {
		try{

			StringBuilder build=new StringBuilder();
			build.append("UPDATE `child` SET \n" +
					"child.child_firstname= ?,\n" +//1
					"child.child_lastname=? ,\n" +//2
					"child.child_blood= ?,\n" +//3
					"child.child_id13= ?,\n" +//4
					"child.child_region= ?,\n" +//5
					"child.child_gender= ?,\n" +//6
					"child.child_birthday= ?,\n" +//7
					"child.child_weight= ?,\n" +//8
					"child.child_height= ?,\n" +//9
					"child.child_length_of_head= ?,\n" +//10
					"child.child_false_born = ?, \n"+//11
					"child.child_health_born = ?, \n"+//12
					"child.child_uptd_time = ?\n"+//13
					"where (child.child_id= ?)");//14
			this.getJdbcTemplate().batchUpdate(build.toString(), new BatchPreparedStatementSetter() {
				
				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					ps.setString(1,child.getChild_firstname());
					ps.setString(2,child.getChild_lastname());
					ps.setString(3,child.getChild_blood());
					ps.setString(4,child.getChild_id13());
					ps.setString(5,child.getChild_region());
					ps.setString(6,child.getChild_gender());
					ps.setString(7,child.getChild_birthday());
					ps.setDouble(8,child.getChild_weight());
					ps.setDouble(9,child.getChild_height());
					ps.setDouble(10,child.getChild_length_of_head());
					ps.setString(11,child.getChild_false_born());
					ps.setString(12,child.getChild_health_born());
					ps.setString(13,child.getChild_uptd_time());
					ps.setString(14,child.getChild_id());
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
	public boolean updateChildVaccine(final Child_vaccine vaccine) throws Exception {
		try{
			StringBuilder build=new StringBuilder();
			build.append("UPDATE `child_vaccine` SET \n" +
							"child_vaccine.hb_vac_1= ?,\n" +//1
							"child_vaccine.hb_vac_2= ?,\n" +//2
							"child_vaccine.opv_vac_1= ?,\n" +//3
							"child_vaccine.opv_vac_2= ?,\n" +//4
							"child_vaccine.opv_vac_3= ?,\n" +//5
							"child_vaccine.opv_vac_4= ?,\n" +//6
							"child_vaccine.opv_vac_5= ?,\n" +//7
							"child_vaccine.mmr_vac_1= ?,\n" +//10
							"child_vaccine.mmr_vac_2= ?,\n" +//11
							"child_vaccine.je_vac_1= ?,\n" +//12
							"child_vaccine.je_vac_2= ?,\n" +//13
							"child_vaccine.dt_1= ?,\n" +//14
							"child_vaccine.updt_time= ? ,\n" + //15
							"child_vaccine.bcg1= ? ,\n" +//16
							"child_vaccine.je_vac_3= ? \n"+//17
							"WHERE (child_vaccine.child_vaccine_id = ? )");//18
			
				this.getJdbcTemplate().batchUpdate(build.toString(), new BatchPreparedStatementSetter() {
					
					@Override
					public void setValues(PreparedStatement ps, int i) throws SQLException {
						ps.setString(1, vaccine.getHb_vac_1());
						ps.setString(2, vaccine.getHb_vac_2());
						ps.setString(3, vaccine.getOpv_vac_1());
						ps.setString(4, vaccine.getOpv_vac_2());
						ps.setString(5, vaccine.getOpv_vac_3());
						ps.setString(6, vaccine.getOpv_vac_4());
						ps.setString(7, vaccine.getOpv_vac_5());
						ps.setString(8, vaccine.getMmr_vac_1());
						ps.setString(9, vaccine.getMmr_vac_2());
						ps.setString(10, vaccine.getJe_vac_1());
						ps.setString(11, vaccine.getJe_vac_2());
						ps.setString(12, vaccine.getDt_1());
						ps.setString(13, vaccine.getUpdt_time());
						ps.setString(14, vaccine.getBcg1());
						ps.setString(15, vaccine.getJe_vac_3());
						ps.setString(16, vaccine.getChild_id());
					}
					
					@Override
					public int getBatchSize() {
						
						return 1;
					}
				});
				return true;
		}catch(Exception e){
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public Child_vaccine getChild_vaccine(String child_id) throws Exception {
		String sql="select * from child_vaccine where child_vaccine.child_id = ?";
		Child_vaccine child_vaccine=(Child_vaccine) this.getJdbcTemplate().queryForObject(sql, new Object[] {child_id},new BeanPropertyRowMapper<Child_vaccine>(Child_vaccine.class));
		return child_vaccine;
	}

}
