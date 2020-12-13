package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponseHotNews {
    private long articleId;
    private String headPicURL;
    private String title;
    private int like;
    private int comments;
}
