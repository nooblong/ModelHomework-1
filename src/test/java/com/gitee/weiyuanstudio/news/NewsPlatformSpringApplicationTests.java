package com.gitee.weiyuanstudio.news;

import com.gitee.weiyuanstudio.news.mapper.ArticleMapper;
import com.gitee.weiyuanstudio.news.mapper.CommentMapper;
import com.gitee.weiyuanstudio.news.mapper.SectionMapper;
import com.gitee.weiyuanstudio.news.mapper.UserLikeMapper;
import com.gitee.weiyuanstudio.news.service.PublicService;
import com.gitee.weiyuanstudio.news.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;

import javax.annotation.Resource;

@SpringBootTest
@ComponentScan
class NewsPlatformSpringApplicationTests {

    @Resource
    UserService userService;

    @Resource
    ArticleMapper articleMapper;

    @Resource
    UserLikeMapper userLikeMapper;

    @Resource
    CommentMapper commentMapper;

    @Resource
    SectionMapper sectionMapper;

    @Autowired
    PublicService publicService;

    @Test
    void contextLoads() {

        System.out.println(publicService.getHotNewsList(6));

//        System.out.println(userLikeMapper.getHotNewsIdList(6));
//
//        System.out.println(userLikeMapper.getLikeNumById(5));
//
//        System.out.println(commentMapper.getCommentNumById(4));

//        System.out.println(sectionMapper.getSectionArticleNum(1));
//        System.out.println(sectionMapper.getSectionArticleNum(2));
    }

}
