package com.asu.dsa.service.exception;

public class NoPlaceFoundException extends RuntimeException {
    public NoPlaceFoundException(Long id) {
        super(String.format("no classroom with id:%s found!", id));
    }
}
