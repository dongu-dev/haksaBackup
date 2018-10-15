package com.cafe24.iumium.personnel.code.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.appoint.dto.PersonnelAppointment;
import com.cafe24.iumium.personnel.code.dao.PersonnelCodeDao;
import com.cafe24.iumium.personnel.code.dto.CertificateCode;
import com.cafe24.iumium.personnel.code.dto.CertificatePurposeCode;
import com.cafe24.iumium.personnel.code.dto.PersonnelCommonCode;
import com.cafe24.iumium.personnel.code.dto.RewardPunishmentCode;
import com.cafe24.iumium.personnel.code.dto.TrainingCode;

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
		
		Map<String, Object> PersonnelCommonCodeList = new HashMap<String, Object>();
		PersonnelCommonCodeList.put("startPage", startPage);
		PersonnelCommonCodeList.put("pagePerRow", pagePerRow);
		PersonnelCommonCodeList.put("optionSearch", optionSearch);
		PersonnelCommonCodeList.put("keyWord", keyWord);
		logger.info("startPage값 : " + startPage);
		logger.info("pagePerRow값 : " + pagePerRow);
		logger.info("optionSearch값 : " + optionSearch);
		logger.info("keyWord값 : " + keyWord);
		
		List<PersonnelCommonCode> PersonnelCommonCode = personnelCodeDao.selectPersonnelCommonCodeList(PersonnelCommonCodeList);
		
		Map<String, Object> reListPersonnelCommonCode = new HashMap<String, Object>();
		reListPersonnelCommonCode.put("PersonnelCommonCode", PersonnelCommonCode);
		reListPersonnelCommonCode.put("lastPage", lastPage);
		
		return reListPersonnelCommonCode;
	}
	
	// 상벌코드 리스트 service 메소드
	public Map<String, Object> getrewardPunishmentCode() {
		Map<String, Object> rewardPunishmentCodeMap = new HashMap<String, Object> ();
		List<RewardPunishmentCode> rewardPunishmentCodeList = personnelCodeDao.selectRewardPunishmentCode();
		rewardPunishmentCodeMap.put("rewardPunishmentCodeList", rewardPunishmentCodeList);
		return rewardPunishmentCodeMap;
	}
	
	// 연수코드 리스트 service 메소드
	public Map<String, Object> getTrainingCodeList() {
		Map<String, Object> trainingMap = new HashMap<String, Object> ();
		List<TrainingCode> getTrainingList = personnelCodeDao.selectTrainingCode();
		trainingMap.put("getTrainingList", getTrainingList);
		return trainingMap;
	}
	
	// 증명서코드 리스트 service 메소드
	public Map<String, Object> getCertificateCodeList() {
		Map<String, Object> CertificateMap = new HashMap<String, Object> ();
		List<CertificateCode> getCertificateList = personnelCodeDao.selectCertificateCode();
		CertificateMap.put("getCertificateList", getCertificateList);
		return CertificateMap;
	}
	
	// 증명서용도코드 리스트 service 메소드
	public Map<String, Object> getCertificatePurposeCodeList() {
		Map<String, Object> CertificatePurposeMap = new HashMap<String, Object> ();
		List<CertificatePurposeCode> getCertificatePurposeList = personnelCodeDao.selectCertificatePurposeCode();
		CertificatePurposeMap.put("getCertificatePurposeList", getCertificatePurposeList);
		return CertificatePurposeMap;
	}
}
