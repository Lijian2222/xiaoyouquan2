package com.xiaoyouquan.service.serviceImpl;

import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.dto.PostDTO;
import com.xiaoyouquan.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Resource
    private PostMapper postMapper;

    @Override
    public List<PostDTO> queryPosts(PostDTO post) {
        List<PostDTO> posts = postMapper.listPosts(post);
        return posts;
    }












}
