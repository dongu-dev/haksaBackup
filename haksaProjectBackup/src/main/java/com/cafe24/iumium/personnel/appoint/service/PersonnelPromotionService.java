package com.cafe24.iumium.personnel.appoint.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.iumium.personnel.appoint.dto.PersonnelPromotion;
import com.cafe24.iumium.personnel.appoint.dao.PersonnelPromotionDao;

@Service
@Transactional
public class PersonnelPromotionService {
	@Autowired
	private PersonnelPromotionDao PersonnelPromotionDao;
	
	public Map<String, Object> personnelPromotionList() {
		
		Map<String, Object> map = new HashMap<String, Object> ();
		List<PersonnelPromotion> promotionList = PersonnelPromotionDao.personnelPromotionList();
		map.put("promotionList", promotionList);
		return map;
	}
	
	public int savePersonnelPromotion(PersonnelPromotion personnelPromotion) {
		System.out.println("service호출");
		return PersonnelPromotionDao.savePersonnelPromotion(personnelPromotion);
	}
}	
