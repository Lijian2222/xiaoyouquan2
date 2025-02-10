package com.xiaoyouquan.service.serviceImpl;

import com.xiaoyouquan.mapper.JobMapper;
import com.xiaoyouquan.pojo.Job;
import com.xiaoyouquan.service.JobService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class JobServiceImpl implements JobService {


    @Resource
    private JobMapper jobMapper;

    @Override
    public List<Job> queryJobs(Job job) {
        return jobMapper.queryJob(job);
    }
}
