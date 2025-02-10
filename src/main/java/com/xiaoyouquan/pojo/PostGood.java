package com.xiaoyouquan.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostGood {


    private Long id;

    private Long postId;

    private Long userId;

    private Integer isDeleted;
}
