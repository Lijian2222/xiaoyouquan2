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

    /**查询用户
     * @param user
     * @return {@link User }
     */
    public User queryUser(User user){
        return userMapper.queryUser(user);
    }

    /**用户登录，先检查是否存在，存在则比对密码，密码正确返回用户数据，错误返回null
     * 用户不存在直接创建用户,并返回用户数据
     * @param user
     * @return {@link String }
     */
    public User logIn(User user){
        //根据手机号查询用户是否存在
        User u = userMapper.queryUser(user);
        // 如果查询为空，则创建用户
        if (Objects.isNull(u)){
            System.out.println("用户不存在，创建用户");
            userMapper.insertUser(user);
            return u;
        }else { //用户存在，比对密码是否正确
            System.out.println("用户存在");
            if (u.getPassword().equals(user.getPassword())){
                System.out.println("密码正确");
                return u;
            }else {
                System.out.println("密码错误");
                return null;
            }
        }

    }

}
