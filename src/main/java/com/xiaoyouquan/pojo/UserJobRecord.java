package com.xiaoyouquan.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserJobRecord {

    private Integer id;

    private String job;

    private String company;

    private Integer salary;

    private String workPlace;

    private String belonging;

    private Integer userId;

    private String campus;

    private String major;
}
