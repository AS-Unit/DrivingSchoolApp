package com.asu.dsa.service.exception;

public class NoMessageFoundExceptions extends RuntimeException{
    public NoMessageFoundExceptions(Long id) {super(String.format("No notice with id:%s found!",id));}
}
