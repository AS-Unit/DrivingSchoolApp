package com.asu.dsa.repository;

import com.asu.dsa.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessagesRepository extends JpaRepository<Message, Long> {

    List<Message> findAllByNoticeType(String noticeType);
}
