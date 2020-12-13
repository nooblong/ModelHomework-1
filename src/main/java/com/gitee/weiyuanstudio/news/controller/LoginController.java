package com.gitee.weiyuanstudio.news.controller;

import com.gitee.weiyuanstudio.news.api.vo.LoginUser;
import com.gitee.weiyuanstudio.news.api.vo.RegisterUser;
import com.gitee.weiyuanstudio.news.api.vo.ResponseMsg;
import com.gitee.weiyuanstudio.news.domain.po.User;
import com.gitee.weiyuanstudio.news.exception.UserException;
import com.gitee.weiyuanstudio.news.service.UserService;
import com.gitee.weiyuanstudio.news.util.JwtTokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/api/login", method = RequestMethod.POST)
    public void login(@RequestBody LoginUser loginUser, HttpServletResponse response){
        String token;
        try {
            token = userService.login(loginUser.getUsername(), loginUser.getPassword());
        } catch (AuthenticationException e){
            response.setStatus(401);
            return;
        }
        response.setHeader("token", token);
    }


    @RequestMapping(value = "/api/register", method = RequestMethod.POST)
    public ResponseMsg register(@RequestBody RegisterUser user){
        try {
            userService.save(user);
        } catch (UserException e) {
            return ResponseMsg.builder().msg(e.getMessage()).build();
        }
        return ResponseMsg.builder().msg("register ok").build();
    }

    @RequestMapping(value = "/api/refresh")
    public void refresh(HttpServletRequest request, HttpServletResponse response){
        String token = request.getHeader(JwtTokenUtils.TOKEN_HEADER);
        String refreshToken = userService.refresh(token);
        response.setHeader("token", refreshToken);
    }

}
