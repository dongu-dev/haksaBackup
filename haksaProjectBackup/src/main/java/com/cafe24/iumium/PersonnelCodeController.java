package com.cafe24.iumium;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.iumium.personnel.code.service.PersonnelCodeService;


@Controller
public class PersonnelCodeController {
	@Autowired
	private PersonnelCodeService PersonnelCodeService;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeController.class);
	
	// 인사입력 페이지 호출
	@RequestMapping(value="/personnelCode/addPersonnelCommon", method = RequestMethod.GET)
	public String insertPersonnelCommonCode() {
		logger.info("인사입력페이지 호출");
		return "personnelCode/addPersonnelCommon";	
	}
	
	@RequestMapping(value="/a", method = RequestMethod.GET)
	public String a() {
		logger.info("인사입력페이지 호출");
		return "personnelCode/test";	
	}
	
	@RequestMapping(value="/b", method = RequestMethod.GET)
	public String b() {
		logger.info("test1페이지 호출");
		return "personnelCode/test1";	
	}
	
	@RequestMapping(value="/c", method = RequestMethod.GET)
	public String c() {
		logger.info("test2페이지 호출");
		return "personnelCode/test2";	
	}
	
	
	// 인사공통코드 리스트 페이지 데이터 호출
	@RequestMapping(value="/personnelCode/personnelCommonList", method = RequestMethod.GET)
	public String personnelCommonCodeList(Model model
				, @RequestParam(value="currentPage", defaultValue="1") int currentPage
				, @RequestParam(value="pagePerRow", required=true, defaultValue="10") int pagePerRow
				, @RequestParam(value="optionSearch", defaultValue="") String optionSearch
				, @RequestParam(value="keyWord", defaultValue="") String keyWord) {
	
	Map<String, Object> personnelCommonCodeList = PersonnelCodeService.selectPersonnelCommonCodeList(currentPage, pagePerRow, optionSearch, keyWord);
	
	model.addAttribute("PersonnelCommonCode", personnelCommonCodeList.get("PersonnelCommonCode"));
	model.addAttribute("lastPage", personnelCommonCodeList.get("lastPage"));
	model.addAttribute("currentPage", currentPage);
	model.addAttribute("pagePerRow", pagePerRow);
	model.addAttribute("optionSearch", optionSearch);
	model.addAttribute("keyWord", keyWord);
	logger.info("PersonnelCommonCode값" + personnelCommonCodeList.get("PersonnelCommonCode"));
	logger.info("lastPage값" + personnelCommonCodeList.get("lastPage"));
	logger.info("currentPage값" + currentPage);
	logger.info("pagePerRow값" + pagePerRow);
	logger.info("optionSearchr값" + optionSearch);
	logger.info("keyWord값" +keyWord);
		
		return "personnelCode/personnelCommonList";
	}
	
	// 상벌코드 입력 페이지 호출
	@RequestMapping(value="/personnelCode/addRewardPunishment", method = RequestMethod.GET)
	public String addRewardPunishment() {
		logger.info("상벌 입력 페이지 호출");
		return "personnelCode/addRewardPunishment";	
	}
	
	// 상벌코드 리스트 페이지 호출
	@RequestMapping(value="/personnelCode/rewardPunishmentList", method = RequestMethod.GET)
	public String rewardPunishmentList(Model model) {
		logger.info("상벌리스트 페이지 호출");
		Map<String, Object> rewardPunishmentCodeMap = PersonnelCodeService.getrewardPunishmentCode();
		model.addAttribute("rewardPunishmentCodeList", rewardPunishmentCodeMap.get("rewardPunishmentCodeList"));
		return "personnelCode/rewardPunishmentList";	
	}
	
	// 연수코드 입력 페이지 호출
	@RequestMapping(value="/personnelCode/addTraining", method = RequestMethod.GET)
	public String addTraining() {
		logger.info("연수 입력 페이지 호출");
		return "personnelCode/addTraining";	
	}
	
	// 연수코드 리스트 페이지 호출
	@RequestMapping(value="/personnelCode/trainingList", method = RequestMethod.GET)
	public String trainingList(Model model) {
		logger.info("연수코드 리스트 페이지 호출");
		Map<String, Object> trainingMap = PersonnelCodeService.getTrainingCodeList();
		model.addAttribute("getTrainingList", trainingMap.get("getTrainingList"));
		return "personnelCode/trainingList";	
	}
	
	// 증명서코드 입력 페이지 호출
	@RequestMapping(value="/personnelCode/addCertificate", method = RequestMethod.GET)
	public String addCertificate() {
		logger.info("증명서코드 입력 페이지 호출");
		return "personnelCode/addCertificate";	
	}
	
	// 증명서코드 리스트 페이지 호출
	@RequestMapping(value="/personnelCode/certificateList", method = RequestMethod.GET)
	public String certificateList(Model model) {
		logger.info("증명서코드 리스트 페이지 호출");
		Map<String, Object> certificateMap = PersonnelCodeService.getCertificateCodeList();
		model.addAttribute("getCertificateList", certificateMap.get("getCertificateList"));
		return "personnelCode/certificateList";	
	}
	
	// 증명서용도코드 입력 페이지 호출
	@RequestMapping(value="/personnelCode/addCertificatePurpose", method = RequestMethod.GET)
	public String addPCertificatePurpose() {
		logger.info("증명서용도코드 입력 페이지 호출");
		return "personnelCode/addCertificatePurpose";	
	}
	
	// 증명서용도코드 리스트 페이지 호출
	@RequestMapping(value="/personnelCode/certificatePurposeList", method = RequestMethod.GET)
	public String certificatePurposeList(Model model) {
		logger.info("증명서용도코드 리스트 페이지 호출");
		Map<String, Object> certificatePurposeMap = PersonnelCodeService.getCertificatePurposeCodeList();
		model.addAttribute("getCertificatePurposeList", certificatePurposeMap.get("getCertificatePurposeList"));
		return "personnelCode/certificatePurposeList";	
	}
}