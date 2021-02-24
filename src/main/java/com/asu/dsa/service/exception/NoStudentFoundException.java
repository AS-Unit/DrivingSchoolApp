package com.asu.dsa.service.exception;

public class NoStudentFoundException extends RuntimeException {
    public NoStudentFoundException(Long id) {
        super(String.format("No student with id:%s found!", id));
    }

}
