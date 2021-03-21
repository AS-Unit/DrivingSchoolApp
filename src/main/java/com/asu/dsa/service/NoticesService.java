package com.asu.dsa.service;

import com.asu.dsa.repository.NoticesRepository;
import com.asu.dsa.service.exception.NoNoticeFoundExceptions;
import com.mysql.cj.protocol.x.Notice;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@AllArgsConstructor
public class NoticesService {

    private final NoticesRepository noticesRepository;

    //get all notice
public List<Notice> getAllNotices(){return noticesRepository.findAll();}
    //get notice by id

    public Notice getNoticeById(Long id){
        return noticesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(()->{
            throw new NoNoticeFoundExceptions(id);
        });
    }
    // get all notices which have specific type
    public List<Notice> getNoticeByType(String noticeType){
        return noticesRepository.findAllByNoticeType(noticeType);
    }

    // add notice
    public Notice addNotice(Notice notice){
        return noticesRepository.save(notice);
    }

    //edit notice
    public Notice updateNotice(Notice newNotice){
        return noticesRepository.save(newNotice);
    }
    //delet notice
    public void removeNotice(Long id){
        Notice notice = noticesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoNoticeFoundExceptions(id);
                });
    }


}
