package com.xiaoyouquan.controller;


import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.dto.PostDTO;
import com.xiaoyouquan.service.PostService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/post")
public class PostController {

    @Resource
    private PostService postService;

    //首页加载时查询贴子信息
    @PostMapping("/query")
    public List<PostDTO> queryPosts(@RequestBody PostDTO post){
        List<PostDTO> posts = postService.queryPosts(post);
        return posts;
    }
}
