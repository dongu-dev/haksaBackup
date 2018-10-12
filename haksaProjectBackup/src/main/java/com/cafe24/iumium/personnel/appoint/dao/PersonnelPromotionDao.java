package com.cafe24.iumium.personnel.appoint.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.iumium.personnel.appoint.dto.PersonnelPromotion;


@Repository
public class PersonnelPromotionDao {
private final String NS = "com.cafe24.iumium.personnel.appoint.dao.PersonnelPromotionMapper.";
	
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(PersonnelPromotionDao.class);
	
	// 승진처리 리스트 dao
	public List<PersonnelPromotion> personnelPromotionList() {
		return sqlSessionTemplate.selectList(NS+"personnelPromotionList");
	}
	
	public int savePersonnelPromotion(PersonnelPromotion personnelPromotion) {
		System.out.println("dao호출");
		return sqlSessionTemplate.insert(NS+"addPersonnelPromotion", personnelPromotion);
	}
}
