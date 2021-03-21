package com.asu.dsa.repository;

import com.asu.dsa.model.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NoticesRepository extends JpaRepository<Notice, Long> {

    List<Notice> findAllByNoticeType(String noticeType);
}
