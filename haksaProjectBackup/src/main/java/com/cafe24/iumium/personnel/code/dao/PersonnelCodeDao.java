package com.cafe24.iumium.personnel.code.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.code.dto.CertificateCode;
import com.cafe24.iumium.personnel.code.dto.CertificatePurposeCode;
import com.cafe24.iumium.personnel.code.dto.PersonnelCommonCode;
import com.cafe24.iumium.personnel.code.dto.RewardPunishmentCode;
import com.cafe24.iumium.personnel.code.dto.TrainingCode;

@Repository
public class PersonnelCodeDao {
	private final String NS = "com.cafe24.iumium.personnel.code.dao.PersonnelCodeMapper.";
	
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeDao.class);
	
	// 인사공통코드 리스트
	public List<PersonnelCommonCode> selectPersonnelCommonCodeList(Map<String, Object> personnelCommonCodeList) {
		return sqlSessionTemplate.selectList(NS+"personnelCommonCodeList", personnelCommonCodeList);
	}
	
	// 인사공통코드 전체 행개수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne(NS+"totalCount");
	}
	
	// 상벌코드 리스트
	public List<RewardPunishmentCode> selectRewardPunishmentCode() {
		return sqlSessionTemplate.selectList(NS+"selectRewardPunishmentCode");
	}
	
	// 연수코드 리스트
	public List<TrainingCode> selectTrainingCode() {
		return sqlSessionTemplate.selectList(NS+"selectTrainingCode");
	}
	
	// 증명서코드 리스트
	public List<CertificateCode> selectCertificateCode() {
		return sqlSessionTemplate.selectList(NS+"selectCertificateCode");
	}
	
	// 증명서용도코드 리스트
	public List<CertificatePurposeCode> selectCertificatePurposeCode() {
		return sqlSessionTemplate.selectList(NS+"selectCertificatePurposeCode");
	}
}
