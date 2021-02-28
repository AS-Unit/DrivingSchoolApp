package com.asu.dsa.service.exception;

public class NoVehicleFoundException extends RuntimeException {
    public NoVehicleFoundException(Long id) {
        super(String.format("no vehicle with id:%s found!", id));
    }
}
