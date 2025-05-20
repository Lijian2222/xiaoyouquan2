package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Deliver;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeliverMapper {

    /**条件查询我的投递
     * @param deliver
     * @return {@link List }<{@link Deliver }>
     */
    List<Deliver> queryDeliver(Deliver deliver);

    /**插入我的投递
     * @param deliver
     */
    void insertDeliver(Deliver deliver);

    /**更新我的投递
     * @param deliver
     */
    void updateDeliver(Deliver deliver);
}
