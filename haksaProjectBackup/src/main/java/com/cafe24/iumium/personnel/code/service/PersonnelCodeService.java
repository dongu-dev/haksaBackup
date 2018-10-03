package com.cafe24.iumium.personnel.code.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.code.dao.PersonnelCodeDao;
import com.cafe24.iumium.personnel.code.dto.PersonnelCommonCode;

@Service
@Transactional
public class PersonnelCodeService {
	@Autowired
	private PersonnelCodeDao personnelCodeDao;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeService.class);
	
	// 인사공통코드 리스트(listPersonnelCommonCode.jsp) service 메소드 -> 페이징 및 검색 옵션부여
	public Map<String, Object> selectPersonnelCommonCodeList(int currentPage, int pagePerRow, String optionSearch, String keyWord) {
		int startPage = (currentPage-1)*pagePerRow;
		
		int totalCount = personnelCodeDao.getTotalCount();
		logger.info("totalCount값 : " + totalCount);
		
		int lastPage = (int) (Math.ceil(totalCount / pagePerRow));
		
		Map<String, Object> listPersonnelCommonCode = new HashMap<String, Object>();
		listPersonnelCommonCode.put("startPage", startPage);
		listPersonnelCommonCode.put("pagePerRow", pagePerRow);
		listPersonnelCommonCode.put("optionSearch", optionSearch);
		listPersonnelCommonCode.put("keyWord", keyWord);
		logger.info("startPage값 : " + startPage);
		logger.info("pagePerRow값 : " + pagePerRow);
		logger.info("optionSearch값 : " + optionSearch);
		logger.info("keyWord값 : " + keyWord);
		
		List<PersonnelCommonCode> PersonnelCommonCode = personnelCodeDao.selectPersonnelCommonCodeList(listPersonnelCommonCode);
		
		Map<String, Object> reListPersonnelCommonCode = new HashMap<String, Object>();
		reListPersonnelCommonCode.put("PersonnelCommonCode", PersonnelCommonCode);
		reListPersonnelCommonCode.put("lastPage", lastPage);
		
		return reListPersonnelCommonCode;
	}
}
