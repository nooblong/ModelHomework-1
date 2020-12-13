package com.gitee.weiyuanstudio.news.mapper;

import com.gitee.weiyuanstudio.news.domain.po.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("select * from user where user_name = #{username}")
    User findByUsername(String username);

    @Delete("delete from user where user_name = #{username}")
    void deleteByUsername(String username);

    @Insert("insert into user(user_name, role, is_ban, password, mail) VALUES (#{username}, #{role}, #{isBan}, #{password}, #{mail})")
    void insertUser(User user);
}
