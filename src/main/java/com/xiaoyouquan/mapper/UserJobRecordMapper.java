package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Favorite;
import com.xiaoyouquan.pojo.UserJobRecord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserJobRecordMapper {

    List<UserJobRecord> queryUserJobRecord(UserJobRecord userJobRecord);


    void updateUserJobRecord(UserJobRecord userJobRecord);

    void insertUserJobRecord(UserJobRecord userJobRecord);

}


