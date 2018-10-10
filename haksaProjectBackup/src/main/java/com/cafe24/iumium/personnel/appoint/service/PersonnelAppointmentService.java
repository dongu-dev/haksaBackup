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
import com.cafe24.iumium.personnel.code.service.PersonnelCodeService;

@Service
@Transactional
public class PersonnelAppointmentService {
	@Autowired
	private PersonnelAppointmentDao personnelAppointmentDao;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelAppointmentService.class);
	
	public Map<String, Object> personnelAppointmentList() {
		
		Map<String, Object> map = new HashMap<String, Object> ();
		List<PersonnelAppointment> appointmentList = personnelAppointmentDao.personnelAppointmentList();
		map.put("appointmentList", appointmentList);
		return map;
	}
}
