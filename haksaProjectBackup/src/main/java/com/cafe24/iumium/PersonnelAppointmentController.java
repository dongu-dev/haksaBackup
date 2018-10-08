package com.cafe24.iumium;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class PersonnelAppointmentController {
	private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeController.class);
	
	@RequestMapping(value="/personnelAppointment/addAppointment", method = RequestMethod.GET)
	public String insertPersonnelCommonCode() {
		logger.info("인사임용입력페이지 호출");
		return "personnelAppointment/addAppointment";	
	} 
}
