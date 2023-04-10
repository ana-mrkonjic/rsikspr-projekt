package hr.fer.rsikspr.ChatApp.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthContoller {

    @GetMapping("/health")
    public String getAppStatus() {
        return "OK";
    }
}