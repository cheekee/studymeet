package com.studymeet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class StudyMeetApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudyMeetApplication.class, args);
    }

    @RequestMapping("/")
    String helloWorld () {
        return "hello~world";
    }

}
