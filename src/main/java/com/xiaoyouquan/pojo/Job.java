package com.xiaoyouquan.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Job {

    private Integer id;

    private Integer userId;

    private String jobName;

    private String jobDetail;

    private String position1;

    private String position2;

    private String position3;

    private String nature;

    private String academicAcquired;

    private String experienceAcquired;

    private String jobBelonging;

    private Integer salaryStart;

    private Integer salaryEnd;

    private Integer salaryNums;

    private Timestamp publishTime;

    //额外属性，发布人的用户名
    private String nickname;

    //额外属性，用来接收前端传回来的学校，根据学校查询岗位
    private String campus;
}
