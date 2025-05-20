package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    /**条件查询用户
     * @param user
     * @return {@link User }
     */
    User queryUser(User user);

    /**插入用户
     * @param user
     */
    void insertUser(User user);

    /**更新用户
     * @param user
     */
    void updateUser(User user);

}
