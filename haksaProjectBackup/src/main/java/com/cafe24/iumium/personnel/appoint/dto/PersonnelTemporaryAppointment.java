package com.cafe24.iumium.personnel.appoint.dto;

public class PersonnelTemporaryAppointment {
	private String appointmentSchoolPersonnelNumber;
	private String appointmentTemporaryCareerDivision;
	private String appointmentTemporaryContractStartTerm;
	private String appointmentTemporaryContractEndTerm;
	private String appointmentTemporaryAppointmentStartTerm;
	private String appointmentTemporaryAppointmentEndTerm;
	private String appointmentTemporaryAppointReason;
	private String appointmentTemporaryRegistrationDate;
	private String appointmentTemporaryModificationDate;
	
	public String getAppointmentSchoolPersonnelNumber() {
		return appointmentSchoolPersonnelNumber;
	}
	public void setAppointmentSchoolPersonnelNumber(String appointmentSchoolPersonnelNumber) {
		this.appointmentSchoolPersonnelNumber = appointmentSchoolPersonnelNumber;
	}
	public String getAppointmentTemporaryCareerDivision() {
		return appointmentTemporaryCareerDivision;
	}
	public void setAppointmentTemporaryCareerDivision(String appointmentTemporaryCareerDivision) {
		this.appointmentTemporaryCareerDivision = appointmentTemporaryCareerDivision;
	}
	public String getAppointmentTemporaryContractStartTerm() {
		return appointmentTemporaryContractStartTerm;
	}
	public void setAppointmentTemporaryContractStartTerm(String appointmentTemporaryContractStartTerm) {
		this.appointmentTemporaryContractStartTerm = appointmentTemporaryContractStartTerm;
	}
	public String getAppointmentTemporaryContractEndTerm() {
		return appointmentTemporaryContractEndTerm;
	}
	public void setAppointmentTemporaryContractEndTerm(String appointmentTemporaryContractEndTerm) {
		this.appointmentTemporaryContractEndTerm = appointmentTemporaryContractEndTerm;
	}
	public String getAppointmentTemporaryAppointmentStartTerm() {
		return appointmentTemporaryAppointmentStartTerm;
	}
	public void setAppointmentTemporaryAppointmentStartTerm(String appointmentTemporaryAppointmentStartTerm) {
		this.appointmentTemporaryAppointmentStartTerm = appointmentTemporaryAppointmentStartTerm;
	}
	public String getAppointmentTemporaryAppointmentEndTerm() {
		return appointmentTemporaryAppointmentEndTerm;
	}
	public void setAppointmentTemporaryAppointmentEndTerm(String appointmentTemporaryAppointmentEndTerm) {
		this.appointmentTemporaryAppointmentEndTerm = appointmentTemporaryAppointmentEndTerm;
	}
	public String getAppointmentTemporaryAppointReason() {
		return appointmentTemporaryAppointReason;
	}
	public void setAppointmentTemporaryAppointReason(String appointmentTemporaryAppointReason) {
		this.appointmentTemporaryAppointReason = appointmentTemporaryAppointReason;
	}
	public String getAppointmentTemporaryRegistrationDate() {
		return appointmentTemporaryRegistrationDate;
	}
	public void setAppointmentTemporaryRegistrationDate(String appointmentTemporaryRegistrationDate) {
		this.appointmentTemporaryRegistrationDate = appointmentTemporaryRegistrationDate;
	}
	public String getAppointmentTemporaryModificationDate() {
		return appointmentTemporaryModificationDate;
	}
	public void setAppointmentTemporaryModificationDate(String appointmentTemporaryModificationDate) {
		this.appointmentTemporaryModificationDate = appointmentTemporaryModificationDate;
	}
	
	@Override
	public String toString() {
		return "PersonnelTemporaryAppointment [appointmentSchoolPersonnelNumber=" + appointmentSchoolPersonnelNumber
				+ ", appointmentTemporaryCareerDivision=" + appointmentTemporaryCareerDivision
				+ ", appointmentTemporaryContractStartTerm=" + appointmentTemporaryContractStartTerm
				+ ", appointmentTemporaryContractEndTerm=" + appointmentTemporaryContractEndTerm
				+ ", appointmentTemporaryAppointmentStartTerm=" + appointmentTemporaryAppointmentStartTerm
				+ ", appointmentTemporaryAppointmentEndTerm=" + appointmentTemporaryAppointmentEndTerm
				+ ", appointmentTemporaryAppointReason=" + appointmentTemporaryAppointReason
				+ ", appointmentTemporaryRegistrationDate=" + appointmentTemporaryRegistrationDate
				+ ", appointmentTemporaryModificationDate=" + appointmentTemporaryModificationDate + "]";
	}
}
