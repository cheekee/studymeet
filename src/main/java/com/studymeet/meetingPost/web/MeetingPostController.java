package com.studymeet.meetingPost.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeetingPostController {

    @RequestMapping("/meetingPost/meetingPostRetrieve")
    public String meetingPostRetrieve() {
        return "meetingPost/meetingPostRetrieve";
    }

}
