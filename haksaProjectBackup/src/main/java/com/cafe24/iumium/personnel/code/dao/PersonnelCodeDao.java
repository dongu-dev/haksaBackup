package com.cafe24.iumium.personnel.code.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.code.dto.PersonnelCommonCode;

@Repository
public class PersonnelCodeDao {
	private final String NS = "com.cafe24.iumium.personnel.code.dao.PersonnelCodeMapper.";
	
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelCodeDao.class);
	
	// 인사공통코드 리스트
	public List<PersonnelCommonCode> selectPersonnelCommonCodeList(Map<String, Object> listPersonnelCommonCode) {
		return sqlSessionTemplate.selectList(NS+"listPersonnelCommonCode", listPersonnelCommonCode);
	}
	
	// 인사공통코드 전체 행개수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne(NS+"totalCount");
	}
}
