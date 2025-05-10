package com.xiaoyouquan.controller;


import com.xiaoyouquan.pojo.Job;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.service.JobService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiJian
 * @date 2025/02/06
 */
@RestController
@RequestMapping(value = "/job")
public class JobController {

    @Resource
    private JobService jobService;

    /**
     * 查询工作
     *
     * @param job
     * @return {@link Result }<{@link List }<{@link Job }>>
     */
    @PostMapping("/query")
    public Result<List<Job>> queryJobs(@RequestBody Job job){
        if (job.getPageIndex()==null) job.setPageIndex(1);
        if (job.getPageSize()==null) job.setPageSize(10);
        String campus = job.getCampus();
        List<Job> jobs = jobService.queryJobs(job);
        //把传进来的学校参数作为结果再传回去
        for (Job j:jobs) {
            j.setCampus(campus);
        }
        return Result.success(jobs);
    }


    @PostMapping("/insert")
    public Result insertJob(@RequestBody Job job){
        jobService.insertJob(job);
        return Result.success(null);
    }

    @PostMapping("/queryMyFavorite")
    public Result<List<Job>> queryMyFavorite(@RequestBody Job job){
        if (job.getPageIndex()==null) job.setPageIndex(1);
        if (job.getPageSize()==null) job.setPageSize(10);
        List<Job> jobs = jobService.queryMyFavorite(job);
        return Result.success(jobs);
    }
}
