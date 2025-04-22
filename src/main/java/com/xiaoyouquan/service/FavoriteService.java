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
        favoriteMapper.insertFavorite(favorite);
    }

    public void updateFavorite(Favorite favorite){
        favoriteMapper.updateFavorite(favorite);
    }
}
