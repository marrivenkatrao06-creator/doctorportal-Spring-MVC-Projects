package com.doctor;

public class Doctor_model {

	private int DoctorId;
	private String Doctorname;
	private String specialization;
	private long phone;
	private String gender;
	private String hospitalName;

	public Doctor_model(){

	}
	public int getDoctorId() {
		return DoctorId;
	}
	public void setDoctorId(int doctorId) {
		DoctorId = doctorId;
	}
	public String getDoctorname() {
		return Doctorname;
	}
	public void setDoctorname(String doctorname) {
		Doctorname = doctorname;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}


//	public void addAttribute(String string, Doctor_model doctor_model) {
//
//
//	}






}
