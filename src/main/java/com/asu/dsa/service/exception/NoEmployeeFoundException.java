package com.asu.dsa.service.exception;

public class NoEmployeeFoundException extends RuntimeException {

    public NoEmployeeFoundException(Long id) {
        super(String.format("No employee with id:%s found!", id));
    }
}
