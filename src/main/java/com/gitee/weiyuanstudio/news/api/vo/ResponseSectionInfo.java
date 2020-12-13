package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponseSectionInfo {
    private int id;
    private String sectionTitle;
    private int publishArticle;
}
