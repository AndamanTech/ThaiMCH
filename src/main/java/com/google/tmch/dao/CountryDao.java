package com.google.tmch.dao;

import java.util.List;

import com.google.tmch.model.City;

public interface CountryDao {
	public List<City> getCountry()throws Exception;
}
