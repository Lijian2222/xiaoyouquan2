package com.xiaoyouquan.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Deliver {

    private Integer id;

    private Integer userId;

    //投递岗位id
    private Integer jobId;

    private Integer isDeleted;
}
