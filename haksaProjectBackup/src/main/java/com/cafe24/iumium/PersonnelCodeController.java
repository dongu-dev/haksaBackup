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
	@RequestMapping(value="/personnelCode/addPersonnelCommonCode", method = RequestMethod.GET)
	public String insertPersonnelCommonCode() {
		logger.info("인사입력페이지 호출");
		return "personnelCode/addPersonnelCommonCode";	
	}
	
	
	
	@RequestMapping(value="/test", method = RequestMethod.GET)
	public String test() {
		logger.info("인사입력페이지 호출");
		return "personnelCode/test";	
	}
	
	// 인사공통코드 리스트 페이지 데이터 호출
	@RequestMapping(value="/personnelCode/personnelCommonCodeList", method = RequestMethod.GET)
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
		
		return "personnelCode/personnelCommonCodeList";
	}
}