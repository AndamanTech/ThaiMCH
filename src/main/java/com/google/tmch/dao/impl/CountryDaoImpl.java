package com.google.tmch.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.google.tmch.dao.CountryDao;
import com.google.tmch.model.City;

public class CountryDaoImpl extends JdbcDaoSupport implements CountryDao{
	
//	private static final Log LOG=LogFactory.getLog(CountryDaoImpl.class);
	
	@Override
	public List<City> getCountry() throws Exception {
//		LOG.debug("Inside CountryDaoImpl.getCountry");
		String sql="select * from Country where name LIKE '%k%'";
		List<City> country=this.getJdbcTemplate().query(sql, new BeanPropertyRowMapper<City>(City.class));
		return country;
	} 

}
