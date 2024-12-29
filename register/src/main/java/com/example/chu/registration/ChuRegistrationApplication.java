package com.example.chu.registration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.example.chu.registration")
public class ChuRegistrationApplication {
    public static void main(String[] args) {
        SpringApplication.run(ChuRegistrationApplication.class, args);
    }
}