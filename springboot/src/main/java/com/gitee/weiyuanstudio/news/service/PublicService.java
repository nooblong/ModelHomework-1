package com.gitee.weiyuanstudio.news.service;

import com.gitee.weiyuanstudio.news.api.vo.ResponseCarouse;
import com.gitee.weiyuanstudio.news.api.vo.ResponseHotNews;
import com.gitee.weiyuanstudio.news.api.vo.ResponseSection;
import com.gitee.weiyuanstudio.news.api.vo.ResponseSectionInfo;
import com.gitee.weiyuanstudio.news.mapper.ArticleMapper;
import com.gitee.weiyuanstudio.news.mapper.CommentMapper;
import com.gitee.weiyuanstudio.news.mapper.SectionMapper;
import com.gitee.weiyuanstudio.news.mapper.UserLikeMapper;
import com.gitee.weiyuanstudio.news.domain.po.Article;
import com.gitee.weiyuanstudio.news.domain.po.Section;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class PublicService {

    @Resource
    ArticleMapper articleMapper;

    @Resource
    SectionMapper sectionMapper;

    @Resource
    UserLikeMapper userLikeMapper;

    @Resource
    CommentMapper commentMapper;

    public List<ResponseCarouse> getCarouselList() {
        List<ResponseCarouse> list = new ArrayList<>();
        List<Article> randomArticle = articleMapper.getRandomArticle(3);
        for (Article article : randomArticle){
            list.add(ResponseCarouse.builder()
                    .articleId((long)article.getId()).
                            title(article.getTitle()).
                            headPicURL(article.getCoverUrl()).
                            build());
        }
        return list;
    }

    public List<ResponseCarouse> getCarousel(int num){
        List<ResponseHotNews> hotNewsList = getHotNewsList(num);
        List<ResponseCarouse> carouseList = new ArrayList<>();
        for (ResponseHotNews hotNews : hotNewsList){
            carouseList.add(ResponseCarouse.builder().articleId(hotNews.getArticleId())
                    .headPicURL(hotNews.getHeadPicURL())
                    .title(hotNews.getTitle())
                    .build());
        }
        return carouseList;
    }

    public List<ResponseHotNews> getHotNewsList(int num){
        List<ResponseHotNews> list = new ArrayList<>();
        List<Integer> hotNewsIdList = userLikeMapper.getHotNewsIdList(num);
        if (hotNewsIdList.size() < num){
            List<Integer> randomArticleId = articleMapper.getRandomArticleId(num - hotNewsIdList.size());
            hotNewsIdList.addAll(randomArticleId);
        }
        for (Integer id : hotNewsIdList){
            Article article = articleMapper.getArticleListById(id);
            int commentNum = commentMapper.getCommentNumById(id);
            int likeNum = userLikeMapper.getLikeNumById(id);
            list.add(ResponseHotNews.builder()
            .articleId(id).like(likeNum).comments(commentNum)
            .title(article.getTitle()).headPicURL(article.getCoverUrl()).build());
        }
        return list;
    }
    public List<ResponseSection> getAllSections(){
        List<Section> allSection = sectionMapper.getAllSection();
        List<ResponseSection> list = new ArrayList<>();
        for (Section s : allSection){
            list.add(ResponseSection.builder().name(s.getName())
            .sectionId(s.getId()).build());
        }
        return list;
    }

    public ResponseSectionInfo getSectionInfo(int sectionId){
        Integer sectionArticleNum = sectionMapper.getSectionArticleNum(sectionId);
        return ResponseSectionInfo.builder().id(sectionId)
                .sectionTitle(sectionMapper.getNameById(sectionId))
                .publishArticle(sectionArticleNum)
                .build();
    }

}
