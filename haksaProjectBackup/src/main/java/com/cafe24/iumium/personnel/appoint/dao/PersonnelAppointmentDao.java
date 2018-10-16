package com.cafe24.iumium.personnel.appoint.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.appoint.dao.PersonnelAppointmentDao;
import com.cafe24.iumium.personnel.appoint.dto.OtherAppointment;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelAppointment;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelBasic;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelBasicChangeBreakdown;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelPermanentAppointment;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelTemporaryAppointment;

@Repository
public class PersonnelAppointmentDao {
	private final String NS = "com.cafe24.iumium.personnel.appoint.dao.PersonnelAppointmentMapper.";
	
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelAppointmentDao.class);
	
	// 기본임용리스트 dao
	public List<PersonnelAppointment> personnelAppointmentList() {
		return sqlSessionTemplate.selectList(NS+"personnelAppointmentList");
	}
	
	// 정규직 임용리스트 dao
	public List<PersonnelPermanentAppointment> personnelPermanentAppointmentList() {
		return sqlSessionTemplate.selectList(NS+"personnelPermanentAppointmentList");
	}
	
	//비정규직 임용리스트 dao
	public List<PersonnelTemporaryAppointment> personneltemporaryAppointmentList() {
		return sqlSessionTemplate.selectList(NS+"personnelTemporaryAppointmentList");
	}
	
	// 이응빈
	// 인사기본사항 리스트 dao
	public List<PersonnelBasic> getPersonnelBasicList() {
		return sqlSessionTemplate.selectList(NS+"personnelBasicList");
	}
	
	// 인사기본사항변동내역 리스트 dao
	public List<PersonnelBasicChangeBreakdown> getPersonnelBasicChangeBreakdownList() {
		return sqlSessionTemplate.selectList(NS+"personnelBasicChangeBreakdownList");
	}
	
	// 기타임용 리스트 dao
	public List<OtherAppointment> getOtherAppointmentList() {
		return sqlSessionTemplate.selectList(NS+"otherAppointmentList");
	}
}
