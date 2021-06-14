package com.asu.dsa.repository;

import com.asu.dsa.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MessagesRepository extends JpaRepository<Message, Long> {

    List<Message> findAllByMessageType(String messageType);

    @Query(value = "SELECT * FROM Message WHERE current_date BETWEEN START_MESSAGE_DATA AND END_MESSAGE_DATA AND IS_VISIBLE = 'isVisible'", nativeQuery = true)
    List<Message> showOnlyActiveMessage();

}
