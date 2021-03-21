package com.asu.dsa.controller;


import com.asu.dsa.service.NoticesService;
import com.mysql.cj.protocol.x.Notice;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/index")
@AllArgsConstructor
public class NoticesController {
    private final NoticesService noticesService;

    //get all notices list
    @GetMapping
    public String getAllNotices(Model model) {
        List<Notice> list = noticesService.getAllNotices();
        model.addAttribute("notice", list);
        return "views/index";
    }

    //set the new notice
    @PostMapping("/index")
    public RedirectView addNotice(@ModelAttribute Notice notice) {
        noticesService.addNotice(notice);
        return new RedirectView("/index");
    }

    //get notice by id for edit
    @GetMapping("/index")
    public String getNoticeById(@PathVariable("id") Long id, Model model) {
        Notice notice = noticesService.getNoticeById(id);
        model.addAttribute("editNotice", notice);
        return "views/index";
    }

    //save edit notice
    @PostMapping("/index")
    public RedirectView updateNotice(@ModelAttribute Notice newNotice) {
        noticesService.updateNotice(newNotice);
        return new RedirectView("/index");
    }

    //delete notice
    @GetMapping("index")
    public RedirectView removeNotice(@PathVariable Long id) {
        noticesService.removeNotice(id);
        return new RedirectView("/index");
    }
}
