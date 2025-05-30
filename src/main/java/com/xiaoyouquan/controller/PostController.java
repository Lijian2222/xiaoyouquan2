package com.xiaoyouquan.controller;


import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.service.PostService;
import javafx.geometry.Pos;
import org.springframework.web.bind.annotation.*;

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

    /**查询帖子，支持分页查询
     * 推荐只需要接收isDeleted=0
     * 校友圈还需要接收campus=xxx
     * @param post
     * @return {@link List }>
     */
    @PostMapping("/query")
    public Result<List<Post>> queryPosts(@RequestBody Post post){
//        System.out.println("11111");
        if (post.getPageIndex()==null) post.setPageIndex(1);
        if (post.getPageSize()==null) post.setPageSize(5);
        List<Post> posts = postService.queryPosts(post);
        return Result.success(posts);
    }


    /**域名测试
     * @return {@link Result }
     */
    @GetMapping("/test")
    public Result test(){
        return Result.success("域名测试");
    }

    /**增加浏览量
     * @param postId
     * @return {@link Result }
     */
    @GetMapping("/addViewNums")
    public Result addViewNums(Integer postId){
//        System.out.println(postId);
        postService.addViewNums(postId);
        return Result.success(null);
    }

    /**插入帖子
     * @param post
     * @return {@link Result }
     */
    @PostMapping("/insert")
    public Result insertPost(@RequestBody Post post){
//        System.out.println("收到请求");
        postService.insertPost(post);
        return Result.success(null);
    }



}
