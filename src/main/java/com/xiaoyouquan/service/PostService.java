package com.xiaoyouquan.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
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

        //设置分页查询的参数
        PageHelper.startPage(post.getPageIndex(),post.getPageSize());
        //查询所有数据
        Page p = (Page) postMapper.listPosts(post);

        List<Post> posts = p.getResult();

        return posts;
    }
    
    //点击帖子内容，给帖子增加浏览量
    public void addViewNums(Integer postId){
        postMapper.addViewNums(postId);
    }








}
