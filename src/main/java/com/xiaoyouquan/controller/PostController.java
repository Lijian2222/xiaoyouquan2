package com.xiaoyouquan.controller;


import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.service.PostService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiJian
 * @date 2025/01/03
 */
@RestController
@RequestMapping(value = "/post")
public class PostController {

    @Resource
    private PostService postService;

    /**查询帖子
     * 推荐只需要接收isDeleted=0
     * 校友圈还需要接收campus=xxx
     * @param post
     * @return {@link List }>
     */
    @PostMapping("/query")
    public Result<List<Post>> queryPosts(@RequestBody Post post){
        List<Post> posts = postService.queryPosts(post);
        return Result.success(posts);
    }







}
