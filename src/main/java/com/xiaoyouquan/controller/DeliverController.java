package com.xiaoyouquan.controller;

import com.xiaoyouquan.pojo.Deliver;
import com.xiaoyouquan.pojo.Favorite;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.service.DeliverService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiJian
 * @date 2025/05/17
 */
@RestController
@RequestMapping(value = "/deliver")
public class DeliverController {

    @Resource
    private DeliverService deliverService;

    /**查询我的投递
     * @param deliver
     * @return {@link Result }<{@link List }<{@link Deliver }>>
     */
    @PostMapping("/query")
    public Result<List<Deliver>> queryDeliver(@RequestBody Deliver deliver){
        List<Deliver> delivers = deliverService.queryDeliver(deliver);
        return Result.success(delivers);
    }

    /**插入我的投递
     * @param deliver
     * @return {@link Result }
     */
    @PostMapping("/insert")
    public Result insertDeliver(@RequestBody Deliver deliver){
        deliverService.insertDeliver(deliver);
        return Result.success("操作成功");
    }

    /**更新我的收藏
     * @param deliver
     * @return {@link Result }
     */
    @PostMapping("/update")
    public Result updateFavorite(@RequestBody Deliver deliver){
        deliverService.updateDeliver(deliver);
        return Result.success("操作成功");
    }
}
