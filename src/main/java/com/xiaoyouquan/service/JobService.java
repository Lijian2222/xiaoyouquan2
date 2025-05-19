package com.xiaoyouquan.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
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
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryJob(job);
        List<Job> jobs = page.getResult();
        return jobs;
    }

    public void insertJob(Job job) {
        if (job.getIsDeleted()==null) job.setIsDeleted(0);
        jobMapper.insertJob(job);
    }

    public List<Job> queryMyFavorite(Job job) {
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryMyFavorite(job);

        List<Job> jobs = page.getResult();

        return jobs;
    }

    public List<Job> queryMyDeliver(Job job) {
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryMyDeliver(job);

        List<Job> jobs = page.getResult();

        return jobs;
    }
}
