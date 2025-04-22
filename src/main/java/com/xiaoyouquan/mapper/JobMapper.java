package com.xiaoyouquan.mapper;


import com.xiaoyouquan.pojo.Job;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface JobMapper {

    List<Job> queryJob(Job job);

    void insertJob(Job job);
}
