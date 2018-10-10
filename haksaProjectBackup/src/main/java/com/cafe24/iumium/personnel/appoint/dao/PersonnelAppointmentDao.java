package com.cafe24.iumium.personnel.appoint.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.appoint.dao.PersonnelAppointmentDao;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelAppointment;

@Repository
public class PersonnelAppointmentDao {
	private final String NS = "com.cafe24.iumium.personnel.appoint.dao.PersonnelAppointmentMapper.";
	
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelAppointmentDao.class);
	
	// 인사임용리스트 dao
	public List<PersonnelAppointment> personnelAppointmentList() {
		return sqlSessionTemplate.selectList(NS+"personnelAppointmentList");
	}
}
