package com.asu.dsa.controller;

import com.asu.dsa.model.Driving;
import com.asu.dsa.service.DrivingsService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping("/drivings")
public class DrivingsController {
    private final DrivingsService drivingsService;

    // get full list of all
    @GetMapping
    public String getDrivings(Model model) {
        List<Driving> list = drivingsService.getAllDrivings();
        model.addAttribute("driving", list);
        return "views/driving/drivings";
    }

    // get view for adding
    @GetMapping("addNewDriving")
    public String viewNewDriving(Model model) {
        // relations
        return "views/driving/addNewDriving";
    }

    // get view for edition
    @GetMapping("editDriving/{id}")
    public String viewEditDriving(@PathVariable("id") Long id, Model model) {
        Driving driving = drivingsService.getDrivingById(id);
        model.addAttribute("driving", driving);
        return "views/driving/editDriving;";
    }

    // save new record
    @PostMapping("addNewDriving")
    public RedirectView addDriving(@ModelAttribute Driving newDriving) {
        drivingsService.addDriving(newDriving);
        return new RedirectView("/drivings");
    }

    // save changes after edition
    @PostMapping("addNewDriving")
    public RedirectView updateDriving(@ModelAttribute Driving editedDriving) {
        drivingsService.addDriving(editedDriving);
        return new RedirectView("/drivings");
    }

    // remove existed record
    @GetMapping("deleteDriving/{id}")
    public RedirectView removeDriving(@PathVariable Long id) {
        drivingsService.deleteDriving(id);
        return new RedirectView("/drivings");
    }

}
