package com.xiaoyouquan;

import com.xiaoyouquan.mapper.JobMapper;
import com.xiaoyouquan.mapper.PostGoodMapper;
import com.xiaoyouquan.mapper.PostMapper;
import com.xiaoyouquan.mapper.UserMapper;
import com.xiaoyouquan.pojo.Job;
import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.PostGood;
import com.xiaoyouquan.pojo.User;
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


    @Test
    void querPost(){
        PostDTO postDTO = new PostDTO();
        postDTO.setIsDeleted(0);
        postDTO.setCampus("哈尔滨工业大学");
        List<PostDTO> postDTOS = postMapper.listPosts(postDTO);
        for (PostDTO p:postDTOS) {
            System.out.println(p);
        }
    }

    @Test
    void deletePostGood(){
        PostGood postGood = new PostGood();
        postGood.setUserId(1L);
        postGood.setPostId(2L);
        postGood.setIsDeleted(1);
        postGoodMapper.updatePostGood(postGood);
    }

    @Test
    void listPost2(){
        PostDTO postDTO = new PostDTO();
//        postDTO.setCurrentUserId(1L);
//        postDTO.setIsDeleted(0);
        List<PostDTO> postDTOS = postMapper.listPosts(postDTO);
        for (PostDTO p:postDTOS) {
            System.out.println(p);
        }
    }


    @Resource
    private JobMapper jobMapper;

    @Test
    void listJob(){
        Job job = new Job();
        job.setCampus("郑州大学");
        List<Job> jobs = jobMapper.queryJob(job);
        for (Job j:jobs) {
            System.out.println(j.toString());
        }
    }


    @Resource
    private UserMapper userMapper;

    @Test
    void queryUser(){
        User user = new User();
        user.setId(4);
        User result = userMapper.queryUser(user);
        System.out.println(result);
    }

}
