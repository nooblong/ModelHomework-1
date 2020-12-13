package com.gitee.weiyuanstudio.news.controller;

import com.gitee.weiyuanstudio.news.api.vo.ResponseCarouse;
import com.gitee.weiyuanstudio.news.api.vo.ResponseHotNews;
import com.gitee.weiyuanstudio.news.api.vo.ResponseSection;
import com.gitee.weiyuanstudio.news.api.vo.ResponseSectionInfo;
import com.gitee.weiyuanstudio.news.service.PublicService;
import com.gitee.weiyuanstudio.news.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api/public")
public class PublicController {

    @Resource
    PublicService publicService;

    @GetMapping("/carouselList")
    public List<ResponseCarouse> getCarouselList() {
        return publicService.getCarouselList();
    }

    @GetMapping("/carousel")
    public List<ResponseCarouse> getCarousel() {
        return publicService.getCarousel(3);
    }

    @RequestMapping("/hotNews/{num}")
    public List<ResponseHotNews> hotNews(@PathVariable Integer num){
        return publicService.getHotNewsList(num);
    }

    @RequestMapping("/sections")
    public List<ResponseSection> sections(){
        return publicService.getAllSections();
    }

    @RequestMapping("/sectionInfo")
    public ResponseSectionInfo sectionInfos(@RequestParam Integer sectionId){
        return publicService.getSectionInfo(sectionId);
    }

}
