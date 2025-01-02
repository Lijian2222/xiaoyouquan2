package com.xiaoyouquan.service;

import com.xiaoyouquan.pojo.Post;
import com.xiaoyouquan.pojo.dto.PostDTO;

import java.util.List;

public interface PostService {

    List<PostDTO> queryPosts(PostDTO post);
}
