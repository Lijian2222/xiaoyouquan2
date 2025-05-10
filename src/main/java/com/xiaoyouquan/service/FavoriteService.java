package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.FavoriteMapper;
import com.xiaoyouquan.pojo.Favorite;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FavoriteService {

    @Resource
    private FavoriteMapper favoriteMapper;

    public List<Favorite> queryFavorite(Favorite favorite){
        return favoriteMapper.queryFavorite(favorite);
    }

    public void insertFavorite(Favorite favorite){
        //先查询是否存在
        List<Favorite> favorites = favoriteMapper.queryFavorite(favorite);
        //如果不存在直接插入
        if (favorites.isEmpty()){
            favoriteMapper.insertFavorite(favorite);
        }else { //如果已经存在就修改
            favoriteMapper.updateFavorite(favorite);
        }


    }

    public void updateFavorite(Favorite favorite){
        favoriteMapper.updateFavorite(favorite);
    }
}
