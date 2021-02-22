package com.asu.dsa.service.exception;

public class NoClassroomFoundException extends RuntimeException{
    public NoClassroomFoundException(Long id){super(String.format("no classroom with id:%s found!", id));}
}
