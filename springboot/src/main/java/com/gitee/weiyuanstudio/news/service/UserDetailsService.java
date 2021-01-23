package com.gitee.weiyuanstudio.news.service;

import com.gitee.weiyuanstudio.news.domain.bo.JwtUser;
import com.gitee.weiyuanstudio.news.domain.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

    @Autowired
    UserService userService;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userService.load(s);
        return new JwtUser(user);
    }
}
