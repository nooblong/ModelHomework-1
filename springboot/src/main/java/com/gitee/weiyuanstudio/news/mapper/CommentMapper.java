package com.gitee.weiyuanstudio.news.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CommentMapper {

    @Select("select count(*) from news.comment where article_id = #{id}")
    Integer getCommentNumById(int id);

}
