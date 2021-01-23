package com.gitee.weiyuanstudio.news.api.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponseSection {
    private String name;
    private int sectionId;
}
