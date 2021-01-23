package com.gitee.weiyuanstudio.news.service;

import com.gitee.weiyuanstudio.news.api.vo.LoginUser;
import com.gitee.weiyuanstudio.news.api.vo.RegisterUser;
import com.gitee.weiyuanstudio.news.domain.bo.JwtUser;
import com.gitee.weiyuanstudio.news.mapper.UserMapper;
import com.gitee.weiyuanstudio.news.exception.UserException;
import com.gitee.weiyuanstudio.news.domain.po.User;
import com.gitee.weiyuanstudio.news.util.JwtTokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
public class UserService{

    @Resource
    private UserMapper userMapper;
    @Autowired
    AuthenticationManager authenticationManager;
    @Autowired
    UserDetailsService userDetailsService;

    public void save(RegisterUser user) throws UserException{
        User source = userMapper.findByUsername(user.getUsername());
        if (null != source){
            if (user.getUsername().equals(source.getUsername())){
                throw new UserException("用户名已被使用");
            }
        }
        if (user.getUsername().length() > 20){
            throw new UserException("用户名过长");
        }
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
        String encodePassword = encoder.encode(user.getPassword());
        user.setPassword(encodePassword);
        User poUser = new User();
        poUser.setUsername(user.getUsername());
        poUser.setPassword(user.getPassword());
        poUser.setMail(user.getMail());
        poUser.setRole(4);
        poUser.setIsBan(0);
        userMapper.insertUser(poUser);
    }

    public void delete(String username){
        userMapper.deleteByUsername(username);
    }

    public User load(String username){
        User user;
        user = userMapper.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException(String.format("No user found with username '%s'.", username));
        } else {
            return user;
        }
    }

    public String login(String username, String password) throws AuthenticationException{
        UsernamePasswordAuthenticationToken upToken = new UsernamePasswordAuthenticationToken(username, password);
        Authentication authentication;
        authentication = authenticationManager.authenticate(upToken);
        SecurityContextHolder.getContext().setAuthentication(authentication);
        final UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        return JwtTokenUtils.createToken(username, new ArrayList<>(), false);
    }

    public String refresh(String oldToken){
        final String token = oldToken.substring(JwtTokenUtils.TOKEN_PREFIX.length());
        String username = JwtTokenUtils.getUsername(token);
        JwtUser user = (JwtUser)userDetailsService.loadUserByUsername(username);
        return JwtTokenUtils.refreshToken(token);
    }

}
