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


    /**条件查询岗位
     * @param job
     * @return {@link List }<{@link Job }>
     */
    public List<Job> queryJobs(Job job) {
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryJob(job);
        List<Job> jobs = page.getResult();
        return jobs;
    }

    /**插入岗位
     * @param job
     */
    public void insertJob(Job job) {
        if (job.getIsDeleted()==null) job.setIsDeleted(0);
        jobMapper.insertJob(job);
    }

    /**查询我收藏的岗位
     * @param job
     * @return {@link List }<{@link Job }>
     */
    public List<Job> queryMyFavorite(Job job) {
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryMyFavorite(job);

        List<Job> jobs = page.getResult();

        return jobs;
    }

    /**查询我投递的岗位
     * @param job
     * @return {@link List }<{@link Job }>
     */
    public List<Job> queryMyDeliver(Job job) {
        //设置分页查询的参数
        PageHelper.startPage(job.getPageIndex(),job.getPageSize());
        //查询所有数据 并转换成Page
        Page page = (Page) jobMapper.queryMyDeliver(job);

        List<Job> jobs = page.getResult();

        return jobs;
    }
}
