package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.UserMapper;
import com.xiaoyouquan.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Objects;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    public User queryUser(User user){
        return userMapper.queryUser(user);
    }

    /**用户登录，先检查是否存在，存在即载入数据，不存在则创建用户
     * @param user
     * @return {@link String }
     */
    public User logIn(User user){
        User u = userMapper.queryUser(user);
        // 如果查询为空，则创建用户
        if (Objects.isNull(u)){
            userMapper.insertUser(user);
        }
        return u;
    }

}
