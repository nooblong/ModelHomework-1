package com.gitee.weiyuanstudio.news.mapper;

import com.gitee.weiyuanstudio.news.domain.po.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ArticleMapper {

    /**
     * 随机获取新闻
     * @param num 要获取的个数
     * @return list
     */
    @Select("select * from article as a1 where a1.id>=(RAND()*(select MAX(id) from article)) limit #{num}")
    List<Article> getRandomArticle(int num);

    @Select("select * from news.article where id = #{id}")
    Article getArticleListById(int id);

    @Select("select id from article as a1 where a1.id>=(RAND()*(select MAX(id) from article)) limit #{num}")
    List<Integer> getRandomArticleId(int num);
}
