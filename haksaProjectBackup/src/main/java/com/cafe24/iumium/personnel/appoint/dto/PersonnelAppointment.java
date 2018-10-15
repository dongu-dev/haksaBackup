package com.cafe24.iumium.personnel.appoint.dto;

public class PersonnelAppointment {
	private String appointmentSchoolPersonnelNumber;
	private String personnelCommonAppointmentCode;
	private String teamCode;
	private String deptCode;
	private String jobRankCode;
	private String jobTypeCode;
	private String jobGroupCode;
	private String appointmentAppointDay;
	private String appointmentRegistrationDate;
	private String appointmentModificationDate;
	
	public String getAppointmentSchoolPersonnelNumber() {
		return appointmentSchoolPersonnelNumber;
	}
	public void setAppointmentSchoolPersonnelNumber(String appointmentSchoolPersonnelNumber) {
		this.appointmentSchoolPersonnelNumber = appointmentSchoolPersonnelNumber;
	}
	public String getPersonnelCommonAppointmentCode() {
		return personnelCommonAppointmentCode;
	}
	public void setPersonnelCommonAppointmentCode(String personnelCommonAppointmentCode) {
		this.personnelCommonAppointmentCode = personnelCommonAppointmentCode;
	}
	public String getTeamCode() {
		return teamCode;
	}
	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getJobRankCode() {
		return jobRankCode;
	}
	public void setJobRankCode(String jobRankCode) {
		this.jobRankCode = jobRankCode;
	}
	public String getJobTypeCode() {
		return jobTypeCode;
	}
	public void setJobTypeCode(String jobTypeCode) {
		this.jobTypeCode = jobTypeCode;
	}
	public String getJobGroupCode() {
		return jobGroupCode;
	}
	public void setJobGroupCode(String jobGroupCode) {
		this.jobGroupCode = jobGroupCode;
	}
	public String getAppointmentAppointDay() {
		return appointmentAppointDay;
	}
	public void setAppointmentAppointDay(String appointmentAppointDay) {
		this.appointmentAppointDay = appointmentAppointDay;
	}
	public String getAppointmentRegistrationDate() {
		return appointmentRegistrationDate;
	}
	public void setAppointmentRegistrationDate(String appointmentRegistrationDate) {
		this.appointmentRegistrationDate = appointmentRegistrationDate;
	}
	public String getAppointmentModificationDate() {
		return appointmentModificationDate;
	}
	public void setAppointmentModificationDate(String appointmentModificationDate) {
		this.appointmentModificationDate = appointmentModificationDate;
	}
	// 값이 잘 담겼는지 확인하기 위한 to String()메소드 선언
	@Override
	public String toString() {
		return "PersonnelAppointment [appointmentSchoolPersonnelNumber=" + appointmentSchoolPersonnelNumber
				+ ", personnelCommonAppointmentCode=" + personnelCommonAppointmentCode + ", teamCode=" + teamCode
				+ ", deptCode=" + deptCode + ", jobRankCode=" + jobRankCode + ", jobTypeCode=" + jobTypeCode
				+ ", jobGroupCode=" + jobGroupCode + ", appointmentAppointDay=" + appointmentAppointDay
				+ ", appointmentRegistrationDate=" + appointmentRegistrationDate + ", appointmentModificationDate="
				+ appointmentModificationDate + "]";
	}
}
