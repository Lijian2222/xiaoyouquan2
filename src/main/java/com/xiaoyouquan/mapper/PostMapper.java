package com.xiaoyouquan.mapper;


import com.xiaoyouquan.pojo.Post;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import java.sql.Timestamp;
import java.util.List;

@Mapper
public interface PostMapper {


    /**按条件查询帖子
     * 首页刷新只输入isDeleted=0,
     * 校友圈输入campus=xxx and isDeleted=0
     * 关注输入 currentUserId=xxx and isDeleted=0
     * @param post
     * @return {@link List }<{@link PostDTO }>
     */
    List<Post> listPosts(Post post);



    //插入帖子
    void insertPost(Post post);

    /**用户点赞，帖子的点赞数量+1
     * @param postId
     */
    @Update("UPDATE post SET good_nums = good_nums + 1 WHERE id = #{postId}")
    void addGoodNums(@Param("postId") Long postId);



    /**用户取消点赞，帖子的点赞数量-1
     * @param postId
     */
    @Update("UPDATE post SET good_nums = good_nums -1 WHERE id = #{postId}")
    void subGoodNums(@Param("postId") Long postId);
















}
