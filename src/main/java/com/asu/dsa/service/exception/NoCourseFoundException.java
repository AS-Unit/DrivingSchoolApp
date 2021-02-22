package com.asu.dsa.service.exception;

public class NoCourseFoundException extends RuntimeException{
    public NoCourseFoundException(Long id){super(String.format("no course with id:%s found!", id));}
}
