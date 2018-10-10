package com.cafe24.iumium;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.iumium.personnel.appoint.service.PersonnelAppointmentService;



@Controller
public class PersonnelAppointController {
	@Autowired
	private PersonnelAppointmentService personnelAppointmentService;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelAppointController.class);
	
	// 기본 임용페이지 호출
	@RequestMapping(value="/personnelAppoint/addAppointment", method = RequestMethod.GET)
	public String addAppointment() {
		logger.info("임용 입력 페이지 호출");
		return "personnelAppoint/addAppointment";	
	}
	
	// 기본 임용 리스트 페이지 호출
	@RequestMapping(value="/personnelAppoint/appointmentList", method = RequestMethod.GET)
	public String appointmentList(Model model) {
		logger.info("임용 리스트 페이지 호출");
		
		Map<String, Object> appointmentList = personnelAppointmentService.personnelAppointmentList();
		
		model.addAttribute("appointmentList", appointmentList.get("appointmentList"));
		return "personnelAppoint/appointmentList";	
	}
		
	// 정규직 임용페이지 호출
	@RequestMapping(value="/personnelAppoint/addPermanentAppointment", method = RequestMethod.GET)
	public String addPermanentAppointment() {
		logger.info("정규직 임용 입력 페이지 호출");
		return "personnelAppoint/addPermanentAppointment";	
	} 
	
	// 승진처리 입력 페이지 호출
	@RequestMapping(value="/personnelAppoint/addPromotion", method = RequestMethod.GET)
	public String addPromotion() {
		logger.info("승진 입력 페이지 호출");
		return "personnelAppoint/addPromotion";	
	}
	
	// 승진처리 페이지에서 저장버튼 눌렀을 시 DB 입력처리 메소드
	@RequestMapping(value="/personnelAppoint/savePromotion", method = RequestMethod.GET)
	public String savePromotion() {
		logger.info("승진 입력 페이지 호출");
		return "personnelAppoint/addPromotion";	
	}
	
}
