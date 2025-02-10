package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    User queryUser(User user);
}
