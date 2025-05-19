package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Deliver;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeliverMapper {

    List<Deliver> queryDeliver(Deliver deliver);

    void insertDeliver(Deliver deliver);

    void updateDeliver(Deliver deliver);
}
