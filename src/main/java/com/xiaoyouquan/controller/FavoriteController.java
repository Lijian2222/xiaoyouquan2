package com.xiaoyouquan.controller;

import com.xiaoyouquan.pojo.Favorite;
import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.service.FavoriteService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiJian
 * @date 2025/04/22
 */
@RestController
@RequestMapping(value = "/favorite")
public class FavoriteController {

    @Resource
    private FavoriteService favoriteService;

    /**条件查询我的收藏
     * @param favorite
     * @return {@link Result }<{@link List }<{@link Favorite }>>
     */
    @PostMapping("/query")
    public Result<List<Favorite>> queryFavorite(@RequestBody Favorite favorite){
        List<Favorite> favorites = favoriteService.queryFavorite(favorite);
        return Result.success(favorites);
    }

    /**更新我的收藏
     * @param favorite
     * @return {@link Result }
     */
    @PostMapping("/update")
    public Result updateFavorite(@RequestBody Favorite favorite){
        favoriteService.updateFavorite(favorite);
        return Result.success("操作成功");
    }

    /**插入我的收藏
     * @param favorite
     * @return {@link Result }
     */
    @PostMapping("/insert")
    public Result insertFavorite(@RequestBody Favorite favorite){
        favoriteService.insertFavorite(favorite);
        return Result.success("操作成功");
    }
}
