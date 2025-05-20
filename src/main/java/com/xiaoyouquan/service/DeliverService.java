package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.DeliverMapper;
import com.xiaoyouquan.pojo.Deliver;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DeliverService {

    @Resource
    private DeliverMapper deliverMapper;

    /**条件查询我的投递
     * @param deliver
     * @return {@link List }<{@link Deliver }>
     */
    public List<Deliver> queryDeliver(Deliver deliver) {
        return deliverMapper.queryDeliver(deliver);
    }

    /**插入我的投递
     * @param deliver
     */
    public void insertDeliver(Deliver deliver) {
        deliverMapper.insertDeliver(deliver);
    }

    /**更新我的投递
     * @param deliver
     */
    public void updateDeliver(Deliver deliver) {
        deliverMapper.updateDeliver(deliver);
    }
}
