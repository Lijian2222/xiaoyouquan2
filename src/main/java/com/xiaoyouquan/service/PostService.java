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


    /**查询帖子
     * @param post
     * @return {@link List }<{@link Post }>
     */
    public List<Post> queryPosts(Post post) {

        //设置分页查询的参数
        PageHelper.startPage(post.getPageIndex(),post.getPageSize());
        //查询所有数据
        Page p = (Page) postMapper.listPosts(post);

        List<Post> posts = p.getResult();

        return posts;
    }

    /**点击帖子内容，给帖子增加浏览量
     * @param postId
     */
    public void addViewNums(Integer postId){
        postMapper.addViewNums(postId);
    }


    /**插入帖子
     * @param post
     */
    public void insertPost(Post post) {
        if (post.getGoodNums()==null) post.setGoodNums(0);
        if (post.getViewNums()==null) post.setViewNums(0);
        if (post.getRetweet()==null) post.setRetweet(0);
        if (post.getCommentNums()==null) post.setCommentNums(0);
        if (post.getIsDeleted()==null) post.setIsDeleted(0);
        postMapper.insertPost(post);
    }
}
