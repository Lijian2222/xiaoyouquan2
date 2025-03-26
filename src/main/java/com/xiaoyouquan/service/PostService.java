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
    
    //点击帖子内容，给帖子增加浏览量
    public void addViewNums(Integer postId){
        postMapper.addViewNums(postId);
    }








}
