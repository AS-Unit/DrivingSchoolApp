package com.asu.dsa.controller;


import com.asu.dsa.model.Message;
import com.asu.dsa.service.MessagesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping({"/", "index"})
@AllArgsConstructor
public class MessagesController {
    private final MessagesService messagesService;

    //get all Message list
    @GetMapping({"index", "/"})
    public String getActiveMessage(Model model) {
        List<Message> list = messagesService.showOnlyActiveMessage();
        model.addAttribute("message", list);
        return "views/index";
    }

    //save edit message
    @PostMapping("index")
    public RedirectView updateNotice(@ModelAttribute Message newMessage) {
        messagesService.updateMessage(newMessage);
        return new RedirectView("/index");
    }

    //delete message
    @GetMapping("/delete/{id}")
    public RedirectView removeNotice(@PathVariable Long id) {
        messagesService.removeMessage(id);
        return new RedirectView("/index");
    }
}
