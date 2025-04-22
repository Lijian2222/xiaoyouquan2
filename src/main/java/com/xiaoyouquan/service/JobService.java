package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.JobMapper;
import com.xiaoyouquan.pojo.Job;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class JobService {


    @Resource
    private JobMapper jobMapper;


    public List<Job> queryJobs(Job job) {
        return jobMapper.queryJob(job);
    }

    public void insertJob(Job job) {
        if (job.getIsDeleted()==null) job.setIsDeleted(0);
        jobMapper.insertJob(job);
    }
}
