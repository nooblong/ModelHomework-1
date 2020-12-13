package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class RegisterUser {
    String username;
    String password;
    String mail;
}
