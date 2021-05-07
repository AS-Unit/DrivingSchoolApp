package com.asu.dsa.service.exception;

public class NoNoticeFoundExceptions extends RuntimeException{
    public NoNoticeFoundExceptions(Long id) {super(String.format("No notice with id:%s found!",id));}
}
