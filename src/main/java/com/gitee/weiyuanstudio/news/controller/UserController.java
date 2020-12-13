package com.gitee.weiyuanstudio.news.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @RequestMapping("personalInfo")
    public String manage(){
        return "personalInfo";
    }

}
