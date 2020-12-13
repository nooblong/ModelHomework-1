package com.gitee.weiyuanstudio.news.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserLikeMapper {

    /**
     * 热门新闻
     * @param num 要获取的个数
     * @return id
     */
    List<Integer> getHotNewsIdList(int num);

    Integer getLikeNumById(int id);

}
