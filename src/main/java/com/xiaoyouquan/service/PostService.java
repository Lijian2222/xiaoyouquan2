package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.pojo.Post;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PostService {

    @Resource
    private PostMapper postMapper;


    public List<Post> queryPosts(Post post) {
        List<Post> posts = postMapper.listPosts(post);
        return posts;
    }
    









}
