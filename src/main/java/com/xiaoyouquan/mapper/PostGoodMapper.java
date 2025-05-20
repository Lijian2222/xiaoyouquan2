package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.PostGood;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
//记录帖子被谁点赞过

@Mapper
public interface PostGoodMapper {

    /**用户点赞
     * @param postGood
     */
    void insertPostGood(PostGood postGood);

    /**用户取消点赞
     * @param postGood
     */
    void updatePostGood(PostGood postGood);

    /**查询帖子被用户点赞过没
     * @param postGood
     * @return {@link List }<{@link PostGood }>
     */
    List<PostGood> queryPostGood(PostGood postGood);

    /**查询帖子被用户点赞过没，即表中是否有记录
     * @param postGood
     * @return {@link List }<{@link PostGood }>
     */
    List<PostGood> queryPostGoodExist(PostGood postGood);


}
