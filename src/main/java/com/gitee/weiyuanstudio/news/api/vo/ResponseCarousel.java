package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponseCarousel {
    private int articleId;
    private String headPicURL;
    private String title;
}
