package com.asu.dsa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/", "/index"})
public class MainController {

    // get start views
    @GetMapping
    public String index() {
        return "views/index";
    }
}
