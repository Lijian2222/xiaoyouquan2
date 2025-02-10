package com.xiaoyouquan.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Post {

//    @TableId(type = IdType.AUTO)
    private Long id;

    private Long userId;

    private String content;

    private Timestamp publishTime;

    private Integer goodNums;

    private Integer commentNums;

    private Integer viewNums;

    private Integer isDeleted;

    private Integer retweet;

}
