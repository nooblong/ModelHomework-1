package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class LoginUser {
    private String username;
    private String password;
}
