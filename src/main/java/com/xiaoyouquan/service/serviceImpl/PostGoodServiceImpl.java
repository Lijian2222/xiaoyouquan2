package com.xiaoyouquan.service.serviceImpl;

import com.xiaoyouquan.mapper.PostGoodMapper;
import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.pojo.PostGood;
import com.xiaoyouquan.pojo.dto.PostDTO;
import com.xiaoyouquan.service.PostGoodService;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class PostGoodServiceImpl implements PostGoodService {

    @Resource
    private PostGoodMapper postGoodMapper;

    @Resource
    private PostMapper postMapper;

    @Override
    public void insertPostGood(PostGood postGood) {
        //用户点赞不仅要插入点赞关系，还要计入帖子的点赞表
        postGoodMapper.insertPostGood(postGood);
        postMapper.addGoodNums(postGood.getPostId());
    }

    //查询该用户是否点赞
    public boolean queryPostGood(PostGood postGood) {
        List<PostGood> postGoods = postGoodMapper.queryPostGood(postGood);
        if (postGoods.size()==1) return true;
        else return false;

    }
}
