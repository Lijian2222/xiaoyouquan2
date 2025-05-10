package com.xiaoyouquan.mapper;


import com.xiaoyouquan.pojo.Job;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface JobMapper {

    List<Job> queryJob(Job job);

    void insertJob(Job job);

    /**
     * 查询我的收藏
     * @param job
     * @return {@link List }<{@link Job }>
     */
    List<Job> queryMyFavorite(Job job);
}
