package com.cafe24.iumium.personnel.appoint.dto;

public class PersonnelPromotion {
	public String promotionNumber;
	public String appointmentSchoolPersonnelNumber;
	public String rankCode;
	public int promotionAppointmentAnnualIncome;
	public int promotionAppointmentSalaryclass;
	public String promotionDay;
	public String promotionAppointmentDay;
	public String promotionAppointReason;
	public String promotionRegistrationDate;
	public String promotionModificationDate;
	
	public String getPromotionNumber() {
		return promotionNumber;
	}
	public void setPromotionNumber(String promotionNumber) {
		this.promotionNumber = promotionNumber;
	}
	public String getAppointmentSchoolPersonnelNumber() {
		return appointmentSchoolPersonnelNumber;
	}
	public void setAppointmentSchoolPersonnelNumber(String appointmentSchoolPersonnelNumber) {
		this.appointmentSchoolPersonnelNumber = appointmentSchoolPersonnelNumber;
	}
	public String getRankCode() {
		return rankCode;
	}
	public void setRankCode(String rankCode) {
		this.rankCode = rankCode;
	}
	public int getPromotionAppointmentAnnualIncome() {
		return promotionAppointmentAnnualIncome;
	}
	public void setPromotionAppointmentAnnualIncome(int promotionAppointmentAnnualIncome) {
		this.promotionAppointmentAnnualIncome = promotionAppointmentAnnualIncome;
	}
	public int getPromotionAppointmentSalaryclass() {
		return promotionAppointmentSalaryclass;
	}
	public void setPromotionAppointmentSalaryclass(int promotionAppointmentSalaryclass) {
		this.promotionAppointmentSalaryclass = promotionAppointmentSalaryclass;
	}
	public String getPromotionDay() {
		return promotionDay;
	}
	public void setPromotionDay(String promotionDay) {
		this.promotionDay = promotionDay;
	}
	public String getPromotionAppointmentDay() {
		return promotionAppointmentDay;
	}
	public void setPromotionAppointmentDay(String promotionAppointmentDay) {
		this.promotionAppointmentDay = promotionAppointmentDay;
	}
	public String getPromotionAppointReason() {
		return promotionAppointReason;
	}
	public void setPromotionAppointReason(String promotionAppointReason) {
		this.promotionAppointReason = promotionAppointReason;
	}
	public String getPromotionRegistrationDate() {
		return promotionRegistrationDate;
	}
	public void setPromotionRegistrationDate(String promotionRegistrationDate) {
		this.promotionRegistrationDate = promotionRegistrationDate;
	}
	public String getPromotionModificationDate() {
		return promotionModificationDate;
	}
	public void setPromotionModificationDate(String promotionModificationDate) {
		this.promotionModificationDate = promotionModificationDate;
	}
	// 값이 잘 들어갔는지 확인하기 위해 to String() 메소드 선언
	@Override
	public String toString() {
		return "PersonnelPromotion [promotionNumber=" + promotionNumber + ", appointmentSchoolPersonnelNumber="
				+ appointmentSchoolPersonnelNumber + ", rankCode=" + rankCode + ", promotionAppointmentAnnualIncome="
				+ promotionAppointmentAnnualIncome + ", promotionAppointmentSalaryclass="
				+ promotionAppointmentSalaryclass + ", promotionDay=" + promotionDay + ", promotionAppointmentDay="
				+ promotionAppointmentDay + ", promotionAppointReason=" + promotionAppointReason
				+ ", promotionRegistrationDate=" + promotionRegistrationDate + ", promotionModificationDate="
				+ promotionModificationDate + "]";
	}
}
