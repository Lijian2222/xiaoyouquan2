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

    public List<Deliver> queryDeliver(Deliver deliver) {
        return deliverMapper.queryDeliver(deliver);
    }

    public void insertDeliver(Deliver deliver) {
        deliverMapper.insertDeliver(deliver);
    }

    public void updateDeliver(Deliver deliver) {
        deliverMapper.updateDeliver(deliver);
    }
}
