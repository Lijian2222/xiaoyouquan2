package com.xiaoyouquan.pojo.dto;

import com.xiaoyouquan.pojo.Post;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostDTO {

    private Long id;

    private Long userId;

    private String content;

    private Timestamp publishTime;

    private Integer goodNums;

    private Integer viewNums;

    private Integer isDeleted;

    private Integer commentNums;

    //下面是额外属性，评论数量
    private String nickname;
}
