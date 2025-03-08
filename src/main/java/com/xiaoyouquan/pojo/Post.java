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

    //额外属性，为了显示帖子上面的用户昵称
    private String nickname;

    //额外属性，为了显示校友圈的帖子，必须设置一个学校的属性
    private String campus;

    //额外属性，为了显示我关注的人的帖子，必须保存当前用户的id
    // 和上面的userId不一样，上面的是帖子是谁发的
    private Long currentUserId;

    //额外属性，帖子详情页显示用户的个性签名
    private String signature;

}
