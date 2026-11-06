
package com.doctor;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RowMapperImpl implements RowMapper<Doctor_model> {

    @Override
    public Doctor_model mapRow(ResultSet rs, int rowNum)
            throws SQLException {

        Doctor_model dr = new Doctor_model();

        dr.setDoctorId(rs.getInt("DoctorId"));
        dr.setDoctorname(rs.getString("Doctorname"));
        dr.setSpecialization(rs.getString("specialization"));
        dr.setPhone(rs.getLong("phone"));
        dr.setGender(rs.getString("gender"));
        dr.setHospitalName(rs.getString("hospitalName"));

        return dr;
    }
}
