package com.asu.dsa.service.exception;

public class NoLectureFoundException extends RuntimeException {

    public NoLectureFoundException(Long id) {
        super(String.format("No lecture with id:%s found!", id));
    }
}
