package com.cafe24.iumium.personnel.appoint.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.appoint.dao.PersonnelAppointmentDao;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelAppointment;
import com.cafe24.iumium.personnel.appoint.dto.PersonnelPermanentAppointment;
import com.cafe24.iumium.personnel.code.service.PersonnelCodeService;

@Service
@Transactional
public class PersonnelAppointmentService {
	@Autowired
	private PersonnelAppointmentDao personnelAppointmentDao;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelAppointmentService.class);
	
	// 기본 임용 리스트 Service
	public Map<String, Object> personnelAppointmentList() {
		
		Map<String, Object> appointmentMap = new HashMap<String, Object> ();
		List<PersonnelAppointment> appointmentList = personnelAppointmentDao.personnelAppointmentList();
		appointmentMap.put("appointmentList", appointmentList);
		
		return appointmentMap;
	}
	
	// 정규직 임용 리스트 Service
	public Map<String, Object> personnelPermanentAppointmentList() {
		
		Map<String, Object> permanentAppointmentMap = new HashMap<String, Object> ();
		List<PersonnelPermanentAppointment> personnelPermanentAppointment = personnelAppointmentDao.personnelPermanentAppointmentList();
		permanentAppointmentMap.put("personnelPermanentAppointment", personnelPermanentAppointment);
		
		return permanentAppointmentMap;
	}
	
	// 비정규직 임용 리스트 Service
	public Map<String, Object> personneltemporaryAppointmentList() {
		
		Map<String, Object> permanentTemporaryMap = new HashMap<String, Object> ();
		List<PersonnelPermanentAppointment> personnelTemporaryAppointment = personnelAppointmentDao.personneltemporaryAppointmentList();
		permanentTemporaryMap.put("personnelTemporaryAppointment", personnelTemporaryAppointment);
		
		return permanentTemporaryMap;
	}
}
