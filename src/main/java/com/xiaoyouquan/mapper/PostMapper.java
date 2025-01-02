package com.xiaoyouquan.mapper;


import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.dto.PostDTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import java.sql.Timestamp;
import java.util.List;

@Mapper
public interface PostMapper {


    //按条件查询帖子，首页刷新暂时只输入isDeleted=0
    List<PostDTO> listPosts(PostDTO post);


    //插入帖子
    void insertPost(Post post);

    //用户点赞，帖子的点赞数量+1
    @Update("UPDATE post SET good_nums = good_nums + 1 WHERE id = #{postId}")
    void addGoodNums(@Param("postId") Long postId);




















}
