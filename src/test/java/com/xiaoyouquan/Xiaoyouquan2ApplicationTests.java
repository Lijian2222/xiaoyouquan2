package com.xiaoyouquan;

import com.xiaoyouquan.mapper.*;
import com.xiaoyouquan.pojo.*;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.ibatis.annotations.Param;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        Post Post = new Post();
        Post.setIsDeleted(0);
//        Post.setCampus("哈尔滨工业大学");
        Post.setUserId(4L);
        List<Post> PostS = postMapper.listPosts(Post);
        for (Post p:PostS) {
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
        Post Post = new Post();
//        Post.setCurrentUserId(1L);
//        Post.setIsDeleted(0);
        List<Post> PostS = postMapper.listPosts(Post);
        for (Post p:PostS) {
            System.out.println(p);
        }
    }

    //job测试
    @Resource
    private JobMapper jobMapper;

    @Test
    void listJob(){
        Job job = new Job();
//        job.setCampus("郑州大学");
        job.setUserId(4);
        List<Job> jobs = jobMapper.queryJob(job);
        for (Job j:jobs) {
            System.out.println(j.toString());
        }
    }

    @Test
    public void insertJob(){
        Job job = new Job();
        job.setUserId(4);
        job.setJobName("测试工程师");
        job.setJobDetail("负责项目功能测试，熟悉vue、springboot等技术栈");
        job.setPosition("哈尔滨");
        job.setNature("私企");
        job.setAcademicAcquired("本科");
        job.setExperienceAcquired("1-3年");
        job.setJobBelonging("互联网");
        job.setPublishTime(new Timestamp(System.currentTimeMillis()));
        job.setSalaryStart(14000);
        job.setSalaryEnd(24000);
        job.setSalaryNums(14);
        job.setIsDeleted(0);
        jobMapper.insertJob(job);
    }

    @Test
    public void queryMyFavorite(){
        Job job = new Job();
        job.setUserId(4);
        List<Job> jobs = jobMapper.queryMyFavorite(job);
        for (Job j:jobs) {
            System.out.println(j.toString());
        }
    }


    //user测试
    @Resource
    private UserMapper userMapper;

    @Test
    void queryUser(){
        User user = new User();
        user.setId(4);
        User result = userMapper.queryUser(user);
        System.out.println(result);
    }



    /*生成JWT*/
    @Test
    public void testGenerateJwt() {

        Map<String, Object> claims = new HashMap<>();
        claims.put("id", 1);
        claims.put("name", "tom");

        String jwt = Jwts.builder()
                .signWith(SignatureAlgorithm.HS256, "xiaoyouquan")//签名算法与密钥
                .setClaims(claims)//自定义内容(载荷)
                .setExpiration(new Date(System.currentTimeMillis() + 3600 * 1000))//设置有效期为1h
                .compact(); //生成令牌
        System.out.println(jwt);
    }


    @Test
    public void testInsertUser(){
        User user = new User();
        user.setPhoneNumber("18639552024");
        userMapper.insertUser(user);
    }


    @Test
    public void testAddViewNums(){

        postMapper.addViewNums(1);
    }






    //favoriteMapper测试
    @Resource
    private FavoriteMapper favoriteMapper;

    @Test
    public void insertFavorite(){
        Favorite favorite = new Favorite();
        favorite.setUserId(4);
        favorite.setStatus(1);//1表示帖子 0表示用户
        favorite.setConcerned(4);
        favoriteMapper.insertFavorite(favorite);
    }

    @Test
    public void queryFavorite(){
        Favorite favorite = new Favorite();
        favorite.setUserId(4);
        favorite.setStatus(1);
        favorite.setConcerned(4);
        List<Favorite> favorites = favoriteMapper.queryFavorite(favorite);
        for (Favorite f:favorites) {
            System.out.println(f.toString());
        }
    }

    @Test
    public void updateFavorte(){
        Favorite favorite = new Favorite();
        favorite.setUserId(4);
        favorite.setStatus(1);
        favorite.setConcerned(4);
        favorite.setIsDeleted(1);
        favoriteMapper.updateFavorite(favorite);
    }

    @Resource
    private UserJobRecordMapper userJobRecordMapper;

    @Test
    public void queryUserJobRecord(){
        UserJobRecord userJobRecord = new UserJobRecord();
        userJobRecord.setWorkPlace("北京");
        List<UserJobRecord> userJobRecordMappers = userJobRecordMapper.queryUserJobRecord(userJobRecord);
        for (UserJobRecord u:userJobRecordMappers){
            System.out.println(u);
        }
    }

    @Test
    public void updateUserJobRecord(){
        UserJobRecord userJobRecord = new UserJobRecord();
        userJobRecord.setId(1);
        userJobRecord.setCompany("tiaodong");
        userJobRecordMapper.updateUserJobRecord(userJobRecord);
    }
}
