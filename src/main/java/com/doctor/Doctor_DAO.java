
package com.doctor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class Doctor_DAO {

    @Autowired
    private JdbcTemplate jdbcTeamplte;

    // Insert Doctor
    public int createdoctor(Doctor_model create) {

        String sql = "INSERT INTO doctor "
                + "(Doctorname,specialization,phone,gender,hospitalName) "
                + "VALUES(?,?,?,?,?)";

        return jdbcTeamplte.update(sql,
                create.getDoctorname(),
                create.getSpecialization(),
                create.getPhone(),
                create.getGender(),
                create.getHospitalName());
    }

    // Display All Doctors
    public List<Doctor_model> getAllDoctors() {

        String sql = "SELECT * FROM doctor";

        return jdbcTeamplte.query(sql, new RowMapperImpl());
    }

    // Get Doctor By ID
    public Doctor_model getDoctorById(int id) {

        String sql = "SELECT * FROM doctor WHERE DoctorId=?";

        return jdbcTeamplte.queryForObject(
                sql, new RowMapperImpl(), id);
    }

    // Delete Doctor
    public int deleteDocotrById(int id) {

        String sql = "DELETE FROM doctor WHERE DoctorId=?";

        return jdbcTeamplte.update(sql, id);
    }

    // Update Doctor
    public int updatedoctor(Doctor_model create) {

        String sql = "UPDATE doctor SET Doctorname=?, "
                + "specialization=?, phone=?, gender=?, "
                + "hospitalName=? WHERE DoctorId=?";

        return jdbcTeamplte.update(sql,
                create.getDoctorname(),
                create.getSpecialization(),
                create.getPhone(),
                create.getGender(),
                create.getHospitalName(),
                create.getDoctorId());
    }
}
