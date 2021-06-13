package com.asu.dsa.service.exception;

public class NoDrivingFoundException extends RuntimeException {
    public NoDrivingFoundException(Long id) { super(String.format("No driving lesson with id:%s found!", id));
    }
}
