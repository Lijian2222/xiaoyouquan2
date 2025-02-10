package com.xiaoyouquan.service;

import com.xiaoyouquan.pojo.PostGood;


public interface PostGoodService {

    /**用户点赞帖子
     * @param postGood
     */
    void insertPostGood(PostGood postGood);

    /**每个帖子查询自己有没有被该用户点赞过
     * @param postGood
     * @return boolean
     */
    boolean queryPostGood(PostGood postGood);

    /**用户取消点赞
     * @param postGood
     */
    void updatePostGood(PostGood postGood);

    /**查询表中是否有记录，即是否被该用户点赞过
     * @param postGood
     * @return boolean
     */
    boolean queryPostGoodExist(PostGood postGood);
}
