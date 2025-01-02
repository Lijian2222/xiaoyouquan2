package com.xiaoyouquan;

import com.xiaoyouquan.mapper.PostGoodMapper;
import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.PostGood;
import com.xiaoyouquan.pojo.dto.PostDTO;
import org.apache.ibatis.annotations.Param;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

@SpringBootTest
class Xiaoyouquan2ApplicationTests {

    @Resource
    private PostMapper postMapper;

    @Resource
    private PostGoodMapper postGoodMapper;

    @Test
    void contextLoads() {

    }


    @Test
    void listPosts() {
        PostDTO post = new PostDTO();
        post.setIsDeleted(0);
        List<PostDTO> posts = postMapper.listPosts(post);
        for (PostDTO p:posts){
            System.out.println(p.toString());
        }
    }



    @Test
    void insertPost() {
        Post post = new Post();
        post.setId(5L);
        post.setContent("我是IDEA添加的数据");
        post.setUserId(1L);
        post.setPublishTime(new Timestamp(System.currentTimeMillis()));
        post.setGoodNums(0);
        post.setViewNums(0);
        post.setCommentNums(0);
        postMapper.insertPost(post);
    }

    @Test
    void insertPostGood(){
        PostGood postGood = new PostGood();
        postGood.setPostId(1L);
        postGood.setUserId(1L);
        postGoodMapper.insertPostGood(postGood);
    }

    @Test
    void queryPostGood(){
        PostGood postGood = new PostGood();
        postGood.setPostId(1L);
        postGood.setUserId(1L);
        List<PostGood> postGoods = postGoodMapper.queryPostGood(postGood);
        for (PostGood p:postGoods){
            System.out.println(p.toString());
        }
    }

    @Test
    void addGoodNums(){
        postMapper.addGoodNums(1L);
    }




}
