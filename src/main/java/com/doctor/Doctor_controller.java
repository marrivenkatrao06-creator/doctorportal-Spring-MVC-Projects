package com.doctor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Doctor_controller {

    @Autowired
    Doctor_DAO dao;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    ///step=1 ---created empty object and sent that object to doctorform as modelattribute with doctor referance
    //in doctorform.jsp data is filled with values and given to controller
    @RequestMapping("/doctorform")
    public String showform(Model model) {
        model.addAttribute("doctor", new Doctor_model());
        return "doctorform";
    }
     ///step=2---Already data is set to doctor object so i am sending doctor object to DAO
    @RequestMapping(value="/saveDoctor", method=RequestMethod.POST)
    public String saveDoctor(@ModelAttribute("doctor") Doctor_model dr) {
        dao.createdoctor(dr);
        return "redirect:/view";
    }
      ///step=3----retrival
    @RequestMapping("/view")
    public String view(Model m) {

        List<Doctor_model> list = dao.getAllDoctors();

        m.addAttribute("list", list);

        return "viewdoctors";
    }

    // DELETE DOCTOR
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id) {

        dao.deleteDocotrById(id);

        return "redirect:/view";
    }

    // EDIT DOCTOR
    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable("id") int id, Model m) {

        Doctor_model doctor = dao.getDoctorById(id);

        m.addAttribute("doctor", doctor);

        return "editdoctor";
    }

    // UPDATE DOCTOR
    @RequestMapping(value="/update", method=RequestMethod.POST)
    public String update(@ModelAttribute("doctor") Doctor_model doctor) {

        dao.updatedoctor(doctor);

        return "redirect:/view";
    }

}