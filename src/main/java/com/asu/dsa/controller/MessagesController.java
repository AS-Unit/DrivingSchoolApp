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
@RequestMapping({"/", "index", "messages"})
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

    @GetMapping("/messages")
    public String showAllMessages(Model model) {
        List<Message> list = messagesService.showAllMessages();
        model.addAttribute("message", list);
        return "views/message/messages";
    }

    //get add new message
    @GetMapping("/addNewMessage")
    public String getViewForNewVehicle() {
        return "views/message/addNewMessage";
    }

    //add new message
    @PostMapping("/addNewMessage")
    public RedirectView updateNotice(@ModelAttribute Message newMessage) {
        messagesService.updateMessage(newMessage);
        return new RedirectView("messages");
    }

    // get message by id for edit
    @GetMapping("editMessage/{id}")
    public String getMessageById(@PathVariable("id") Long id, Model model) {
        Message message = messagesService.getMessageById(id);
        model.addAttribute("message", message);
        return "views/message/editMessage";
    }

    // save edited employee
    @PostMapping("/editMessage/{id}")
    public RedirectView updateEmployee(@ModelAttribute Message message) {
        messagesService.updateMessage(message);
        return new RedirectView("/messages");
    }

    //delete message
    @GetMapping("/delete/{id}")
    public RedirectView removeNotice(@PathVariable Long id) {
        messagesService.removeMessage(id);
        return new RedirectView("/messages");
    }
}
