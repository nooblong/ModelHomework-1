package com.gitee.weiyuanstudio.news.domain.bo;

import com.gitee.weiyuanstudio.news.domain.po.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class JwtUser extends User implements UserDetails {

    List<SimpleGrantedAuthority> authorities;

    public JwtUser(User user) {
        setId(user.getId());
        setIsBan(user.getIsBan());
        setPassword(user.getPassword());
        setRole(user.getRole());
        setUsername(user.getUsername());
        setMail(user.getMail());
        authorities = new ArrayList<>();
        switch (getRole()){
            case 0:
                authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
            case 1:
                authorities.add(new SimpleGrantedAuthority("ROLE_DATABASE"));
            case 2:
                authorities.add(new SimpleGrantedAuthority("ROLE_REVIEWER"));
            case 3:
                authorities.add(new SimpleGrantedAuthority("ROLE_EDITOR"));
            case 4:
                authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        }
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return getIsBan() == 0;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }
}
