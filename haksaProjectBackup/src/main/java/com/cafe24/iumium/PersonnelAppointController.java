package com.cafe24.iumium;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe24.iumium.personnel.appoint.dto.PersonnelPromotion;
import com.cafe24.iumium.personnel.appoint.service.PersonnelAppointmentService;
import com.cafe24.iumium.personnel.appoint.service.PersonnelPromotionService;



@Controller
public class PersonnelAppointController {
	@Autowired private PersonnelAppointmentService personnelAppointmentService;
	@Autowired private PersonnelPromotionService personnelPromotionService;
	
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
	
	// 정규직 임용 입력페이지 호출
	@RequestMapping(value="/personnelAppoint/addPermanentAppointment", method = RequestMethod.GET)
	public String addPermanentAppointment() {
		logger.info("정규직 임용 입력 페이지 호출");
		return "personnelAppoint/addPermanentAppointment";	
	}
	
	// 정규직 임용 리스트 페이지 호출
	@RequestMapping(value="/personnelAppoint/permanentAppointmentList", method = RequestMethod.GET)
	public String permanentAppointmentList(Model model) {
		logger.info("임용 리스트 페이지 호출");
		
		Map<String, Object> permanentAppointmentList = personnelAppointmentService.personnelPermanentAppointmentList();
		
		model.addAttribute("permanentAppointmentList", permanentAppointmentList.get("personnelPermanentAppointment"));
		return "personnelAppoint/permanentAppointmentList";	
	}
	
	// 비정규직 임용 페이지 호출
	@RequestMapping(value="/personnelAppoint/addTemporaryAppointment", method = RequestMethod.GET)
	public String addTemporaryAppointment() {
		logger.info("비정규직 임용 리스트 페이지 호출");
		return "personnelAppoint/addTemporaryAppointment";
	}
	
	// 비정규직 임용 리스트 페이지 호출
	@RequestMapping(value="/personnelAppoint/temporaryAppointmentList", method = RequestMethod.GET)
	public String temporaryAppointmentList(Model model) {
		logger.info("비정규직 임용 리스트 페이지 호출");
		
		Map<String, Object> temporaryAppointmentList = personnelAppointmentService.personneltemporaryAppointmentList();
				
		model.addAttribute("temporaryAppointmentList", temporaryAppointmentList.get("personnelTemporaryAppointment"));
		return "personnelAppoint/temporaryAppointmentList";	
	}
	
	// 승진처리 입력 페이지 호출
	@RequestMapping(value="/personnelAppoint/addPromotion", method = RequestMethod.GET)
	public String addPromotion() {
		logger.info("승진 입력 페이지 호출");
		return "personnelAppoint/addPromotion";	
	}
	
	// 승진처리 페이지에서 저장버튼 눌렀을 시 DB 입력처리 메소드
	@ResponseBody
	@RequestMapping(value="/personnelAppoint/savePromotion", method = RequestMethod.POST)
	//Json으로 보낸 파라미터값을 받기 위해 어노테이션 @RequestBody 선언
	public void savePromotion(@RequestBody PersonnelPromotion personnelPromotion) {
		personnelPromotionService.savePersonnelPromotion(personnelPromotion);
		System.out.println();
		System.out.println("호출");
	}
	
	// 승진처리 리스트 페이지 호출
	@RequestMapping(value="/personnelAppoint/promotionProcessList", method = RequestMethod.GET)
	public String promotionProcessList(Model model) {
		logger.info("승진 처리 리스트 페이지 호출");
		Map<String, Object> map = personnelPromotionService.personnelPromotionList();
		
		model.addAttribute("promotionList", map.get("promotionList"));
		
		return "personnelAppoint/promotionProcessList";
	}
	
	// 인사기본사항 페이지 호출
	@RequestMapping(value="/personnelAppoint/addPersonnelBasicDetail", method = RequestMethod.GET)
	public String addPersonnelBasicDetail() {
		logger.info("인사기본사항 페이지 호출");
		return "personnelAppoint/addPersonnelBasicDetail";	
	}
		
}
