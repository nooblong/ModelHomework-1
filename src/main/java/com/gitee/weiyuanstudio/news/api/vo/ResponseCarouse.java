package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponseCarouse {
    private Long articleId;
    private String title;
    private String headPicURL;
}
