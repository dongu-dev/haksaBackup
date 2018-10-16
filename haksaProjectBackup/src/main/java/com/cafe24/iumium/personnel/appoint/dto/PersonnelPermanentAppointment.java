package com.cafe24.iumium.personnel.appoint.dto;

public class PersonnelPermanentAppointment {
	private String appointmentSchoolPersonnelNumber;
	private int appointmentPermanentAnnualIncome;
	private String appointmentPermanentAnnualIncomeDivision;
	private String appointmentPermanentCareerDivision;
	private String appointmentPermanentContractStartTerm;
	private String appointmentPermanentContractEndTerm;
	private String appointmentPermanentAppointmentStartTerm;
	private String appointmentPermanentAppointmentEndTerm;
	private int appointmentPermanentSalaryclass;
	private String appointmentPermanentSalaryclassPromotion;
	private String appointmentPermanentAppointReason;
	private String appointmentPermanentRegistrationDate;
	private String appointmentPermanentModificationDate;
	
	public String getAppointmentSchoolPersonnelNumber() {
		return appointmentSchoolPersonnelNumber;
	}

	public void setAppointmentSchoolPersonnelNumber(String appointmentSchoolPersonnelNumber) {
		this.appointmentSchoolPersonnelNumber = appointmentSchoolPersonnelNumber;
	}


	public int getAppointmentPermanentAnnualIncome() {
		return appointmentPermanentAnnualIncome;
	}


	public void setAppointmentPermanentAnnualIncome(int appointmentPermanentAnnualIncome) {
		this.appointmentPermanentAnnualIncome = appointmentPermanentAnnualIncome;
	}


	public String getAppointmentPermanentAnnualIncomeDivision() {
		return appointmentPermanentAnnualIncomeDivision;
	}


	public void setAppointmentPermanentAnnualIncomeDivision(String appointmentPermanentAnnualIncomeDivision) {
		this.appointmentPermanentAnnualIncomeDivision = appointmentPermanentAnnualIncomeDivision;
	}


	public String getAppointmentPermanentCareerDivision() {
		return appointmentPermanentCareerDivision;
	}


	public void setAppointmentPermanentCareerDivision(String appointmentPermanentCareerDivision) {
		this.appointmentPermanentCareerDivision = appointmentPermanentCareerDivision;
	}


	public String getAppointmentPermanentContractStartTerm() {
		return appointmentPermanentContractStartTerm;
	}


	public void setAppointmentPermanentContractStartTerm(String appointmentPermanentContractStartTerm) {
		this.appointmentPermanentContractStartTerm = appointmentPermanentContractStartTerm;
	}


	public String getAppointmentPermanentContractEndTerm() {
		return appointmentPermanentContractEndTerm;
	}


	public void setAppointmentPermanentContractEndTerm(String appointmentPermanentContractEndTerm) {
		this.appointmentPermanentContractEndTerm = appointmentPermanentContractEndTerm;
	}


	public String getAppointmentPermanentAppointmentStartTerm() {
		return appointmentPermanentAppointmentStartTerm;
	}


	public void setAppointmentPermanentAppointmentStartTerm(String appointmentPermanentAppointmentStartTerm) {
		this.appointmentPermanentAppointmentStartTerm = appointmentPermanentAppointmentStartTerm;
	}


	public String getAppointmentPermanentAppointmentEndTerm() {
		return appointmentPermanentAppointmentEndTerm;
	}


	public void setAppointmentPermanentAppointmentEndTerm(String appointmentPermanentAppointmentEndTerm) {
		this.appointmentPermanentAppointmentEndTerm = appointmentPermanentAppointmentEndTerm;
	}


	public int getAppointmentPermanentSalaryclass() {
		return appointmentPermanentSalaryclass;
	}


	public void setAppointmentPermanentSalaryclass(int appointmentPermanentSalaryclass) {
		this.appointmentPermanentSalaryclass = appointmentPermanentSalaryclass;
	}


	public String getAppointmentPermanentSalaryclassPromotion() {
		return appointmentPermanentSalaryclassPromotion;
	}


	public void setAppointmentPermanentSalaryclassPromotion(String appointmentPermanentSalaryclassPromotion) {
		this.appointmentPermanentSalaryclassPromotion = appointmentPermanentSalaryclassPromotion;
	}


	public String getAppointmentPermanentAppointReason() {
		return appointmentPermanentAppointReason;
	}


	public void setAppointmentPermanentAppointReason(String appointmentPermanentAppointReason) {
		this.appointmentPermanentAppointReason = appointmentPermanentAppointReason;
	}


	public String getAppointmentPermanentRegistrationDate() {
		return appointmentPermanentRegistrationDate;
	}


	public void setAppointmentPermanentRegistrationDate(String appointmentPermanentRegistrationDate) {
		this.appointmentPermanentRegistrationDate = appointmentPermanentRegistrationDate;
	}


	public String getAppointmentPermanentModificationDate() {
		return appointmentPermanentModificationDate;
	}


	public void setAppointmentPermanentModificationDate(String appointmentPermanentModificationDate) {
		this.appointmentPermanentModificationDate = appointmentPermanentModificationDate;
	}


	// 값이 잘 담겼는지에 대한 to String() 메소드 선언
	@Override
	public String toString() {
		return "PersonnelPermanentAppointment [appointmentSchoolPersonnelNumber=" + appointmentSchoolPersonnelNumber
				+ ", appointmentPermanentAnnualIncome=" + appointmentPermanentAnnualIncome
				+ ", appointmentPermanentAnnualIncomeDivision=" + appointmentPermanentAnnualIncomeDivision
				+ ", appointmentPermanentCareerDivision=" + appointmentPermanentCareerDivision
				+ ", appointmentPermanentContractStartTerm=" + appointmentPermanentContractStartTerm
				+ ", appointmentPermanentContractEndTerm=" + appointmentPermanentContractEndTerm
				+ ", appointmentPermanentAppointmentStartTerm=" + appointmentPermanentAppointmentStartTerm
				+ ", appointmentPermanentAppointmentEndTerm=" + appointmentPermanentAppointmentEndTerm
				+ ", appointmentPermanentSalaryclass=" + appointmentPermanentSalaryclass
				+ ", appointmentPermanentSalaryclassPromotion=" + appointmentPermanentSalaryclassPromotion
				+ ", appointmentPermanentAppointReason=" + appointmentPermanentAppointReason
				+ ", appointmentPermanentRegistrationDate=" + appointmentPermanentRegistrationDate
				+ ", appointmentPermanentModificationDate=" + appointmentPermanentModificationDate + "]";
	}
}
