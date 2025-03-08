package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.PostGoodMapper;
import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.pojo.PostGood;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class PostGoodService {

    @Resource
    private PostGoodMapper postGoodMapper;

    @Resource
    private PostMapper postMapper;

    /**用户点赞
     * @param postGood
     */

    public void insertPostGood(PostGood postGood) {
        //如果时取消点赞后再点赞，就不需要插入新的了，只需要修改is_deleted即可
        if (queryPostGoodExist(postGood)){
            postGoodMapper.updatePostGood(postGood);
        }else {//如果是第一次点赞，则需要插入记录
            postGoodMapper.insertPostGood(postGood);
        }
        //还要计入帖子的点赞表
        postMapper.addGoodNums(postGood.getPostId());
    }

    /**查询该用户是否点赞
     * @param postGood
     * @return boolean
     */
    public boolean queryPostGood(PostGood postGood) {
        List<PostGood> postGoods = postGoodMapper.queryPostGood(postGood);
        if (postGoods.size()==1) return true;
        else return false;
    }

    /**查询该用户是否点赞过，即表中是否有记录
     * @param postGood
     * @return boolean
     */
    public boolean queryPostGoodExist(PostGood postGood) {
        List<PostGood> postGoods = postGoodMapper.queryPostGoodExist(postGood);
        if (postGoods.size()==1) return true;
        else return false;
    }

    /**
     * 用户取消点赞
     *
     * @param postGood
     */
    public void updatePostGood(PostGood postGood) {
        //删除点赞记录表(is_deleted逻辑删除)
        postGoodMapper.updatePostGood(postGood);
        //帖子的点赞数量-1
        postMapper.subGoodNums(postGood.getPostId());
    }
}
