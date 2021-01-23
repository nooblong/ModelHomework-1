package com.gitee.weiyuanstudio.news.mapper;

import com.gitee.weiyuanstudio.news.domain.po.Section;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SectionMapper {

    @Select("select * from news.section")
    List<Section> getAllSection();

    @Select("select count(*) from news.article_section where section_id = #{sectionId}")
    Integer getSectionArticleNum(int sectionId);

    @Select("select name from news.section where id = #{id}")
    String getNameById(int id);
}
