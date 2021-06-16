package com.asu.dsa.service;

import com.asu.dsa.model.Message;
import com.asu.dsa.repository.MessagesRepository;
import com.asu.dsa.service.exception.NoMessageFoundExceptions;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@AllArgsConstructor
public class MessagesService {

    private final MessagesRepository messagesRepository;

    //get all messages
    public List<Message> showAllMessages() {
        return messagesRepository.findAll();
    }

    //get all active messages
    public List<Message> showOnlyActiveMessage() {
        return messagesRepository.showOnlyActiveMessage();

    }
    //get message by id

    public Message getMessageById(Long id) {
        return messagesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoMessageFoundExceptions(id);
                });

    }

    // get all message which have specific type
    public List<Message> getMessageByType(String messageType) {
        return messagesRepository.findAllByMessageType(messageType);

    }

    // add message
    public Message addMessage(Message message) {
        return messagesRepository.save(message);
    }

    //edit message
    public Message updateMessage(Message newMessage) {
        return messagesRepository.save(newMessage);
    }

    //delete message
    public void removeMessage(Long id) {
        Message message = messagesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoMessageFoundExceptions(id);
                });
        messagesRepository.delete(message);
    }


}
