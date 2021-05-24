package com.asu.dsa.controller;


import com.asu.dsa.model.Message;
import com.asu.dsa.service.MessagesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/index")
@AllArgsConstructor
public class MessagesController {
    private final MessagesService messagesService;

    //get all notices list
    @GetMapping("/index")
    public void getAllNotices(Model model) {
        List<Message> list = messagesService.getAllNotices();
        model.addAttribute("notice", list);
    }

    //set the new notice
//    @PostMapping("/index")
//    public RedirectView addNotice(@ModelAttribute Notice notice) {
//        noticesService.addNotice(notice);
//        return new RedirectView("/index");
//    }

    //get notice by id for edit
//    @GetMapping("/index")
//    public String getNoticeById(@PathVariable("id") Long id, Model model) {
//        Notice notice = noticesService.getNoticeById(id);
//        model.addAttribute("editNotice", notice);
//        return "views/index";
//    }

    //save edit notice
//    @PostMapping("/index")
//    public RedirectView updateNotice(@ModelAttribute Notice newNotice) {
//        noticesService.updateNotice(newNotice);
//        return new RedirectView("/index");
//    }

    //delete notice
//    @GetMapping("index")
//    public RedirectView removeNotice(@PathVariable Long id) {
//        noticesService.removeNotice(id);
//        return new RedirectView("/index");
//    }
}
