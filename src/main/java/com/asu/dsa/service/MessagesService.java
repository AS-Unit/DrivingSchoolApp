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

    //get all notice
public List<Message> getAllNotices(){return messagesRepository.findAll();}
    //get notice by id

    public Message getNoticeById(Long id){
        return messagesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(()->{
            throw new NoMessageFoundExceptions(id);
        });
    }
    // get all notices which have specific type
    public List<Message> getNoticeByType(String noticeType){
        return messagesRepository.findAllByNoticeType(noticeType);
    }

    // add notice
    public Message addNotice(Message message){
        return messagesRepository.save(message);
    }

    //edit notice
    public Message updateNotice(Message newMessage){
        return messagesRepository.save(newMessage);
    }
    //delet notice
    public void removeNotice(Long id){
        Message message = messagesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoMessageFoundExceptions(id);
                });
    }


}
