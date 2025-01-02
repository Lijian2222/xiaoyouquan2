package com.xiaoyouquan.controller;


import com.xiaoyouquan.pojo.PostGood;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.pojo.dto.PostDTO;
import com.xiaoyouquan.service.PostGoodService;
import com.xiaoyouquan.service.PostService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/postGood")
public class PostGoodController {

    @Resource
    private PostGoodService postGoodService;

    //用户点赞贴子
    @PostMapping("/insert")
    public void insertPosts(@RequestBody PostGood postGood){
        postGoodService.insertPostGood(postGood);
    }

    //查询用户点赞信息
    @PostMapping("/query")
    public Result queryPostGood(@RequestBody PostGood postGood){
        if(postGoodService.queryPostGood(postGood)){
            return Result.success(1);
        }else {
            return Result.fail();
        }
    }
}
