package com.studymeet.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.studymeet")
public class StudyMeetApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudyMeetApplication.class, args);
    }

}
