package com.xiaoyouquan.mapper;


import com.xiaoyouquan.pojo.Job;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface JobMapper {

    /**查询岗位
     * @param job
     * @return {@link List }<{@link Job }>
     */
    List<Job> queryJob(Job job);

    /**插入岗位
     * @param job
     */
    void insertJob(Job job);

    /**
     * 查询我的收藏
     * @param job
     * @return {@link List }<{@link Job }>
     */
    List<Job> queryMyFavorite(Job job);

    /**查询我的投递
     * @param job
     * @return {@link List }<{@link Job }>
     */
    List<Job> queryMyDeliver(Job job);


    /**根据id修改岗位
     * @param job
     */
    void updateJob(Job job);

}
