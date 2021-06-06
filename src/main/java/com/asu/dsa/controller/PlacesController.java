package com.asu.dsa.controller;

import com.asu.dsa.model.Place;
import com.asu.dsa.service.PlacesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/places")
public class PlacesController {

    private final PlacesService placesService;

    public PlacesController(PlacesService placesService) {
        this.placesService = placesService;
    }

    // get all places list
    @GetMapping
    public String getAllPlaces(Model model) {
        List<Place> list = placesService.getAllPlaces();
        model.addAttribute("place", list);
        return "views/place/places";
    }

    // get view for add new place
    @GetMapping("addNewPlace")
    public String viewNewPlace() {
        return "views/place/addNewPlace";
    }

    // save the new place
    @PostMapping("/addNewPlace")
    public RedirectView addPlace(@ModelAttribute Place place) {
        placesService.addPlace(place);
        return new RedirectView("/places");
    }

    // get place by id for edit
    @GetMapping("editPlace/{id}")
    public String getPlaceById(@PathVariable("id") Long id, Model model) {
        Place place = placesService.getPlaceById(id);
        model.addAttribute("place", place);
        return "views/place/editPlace";
    }

    // save edited place
    @PostMapping("/editPlace/{id}")
    public RedirectView updatePlace(@ModelAttribute Place place) {
        placesService.updatePlace(place);
        return new RedirectView("/places");
    }

    // remove existed place
    @GetMapping("delete/{id}")
    public RedirectView removePlace(@PathVariable Long id) {
        placesService.removePlace(id);
        return new RedirectView("/places");
    }
}
