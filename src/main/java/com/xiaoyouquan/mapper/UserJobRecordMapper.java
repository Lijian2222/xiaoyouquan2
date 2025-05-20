package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Favorite;
import com.xiaoyouquan.pojo.UserJobRecord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserJobRecordMapper {

    /**查询记录
     * @param userJobRecord
     * @return {@link List }<{@link UserJobRecord }>
     */
    List<UserJobRecord> queryUserJobRecord(UserJobRecord userJobRecord);


    /**更新记录
     * @param userJobRecord
     */
    void updateUserJobRecord(UserJobRecord userJobRecord);

    /**插入记录
     * @param userJobRecord
     */
    void insertUserJobRecord(UserJobRecord userJobRecord);

}


