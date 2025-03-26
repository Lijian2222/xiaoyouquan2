package com.xiaoyouquan.controller;

import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.pojo.User;
import com.xiaoyouquan.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author LiJian
 * @date 2025/02/09
 */
@RestController
@RequestMapping(value = "/user")
public class UserController {


    @Resource
    private UserService userService;

    /**
     * 查询用户有哪些学校
     * @param user
     * @return {@link Result }<{@link User }>
     */
    @PostMapping("/query")
    public Result<User> queryUser(@RequestBody User user){
        return Result.success(userService.queryUser(user));
    }


    /**用户登录，如果已经注册，密码正确返回user资料，密码错误返回null
     * 否贼创建用户，返回新用户资料(手机号密码)
     * @param user
     * @return {@link Result }<{@link User }>
     */
    @PostMapping("/logIn")
    public Result<User> logIn(@RequestBody User user){
//        System.out.println(user.toString());
        return Result.success(userService.logIn(user));
    }

}
