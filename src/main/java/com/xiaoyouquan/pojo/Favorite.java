package com.xiaoyouquan.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Favorite {

    private Integer id;

    private Integer userId;

    private Integer status;

    //关注的用户的id或者收藏的岗位id
    private Integer concerned;

    private Integer isDeleted;
}
