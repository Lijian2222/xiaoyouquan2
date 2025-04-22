package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Favorite;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FavoriteMapper {

    void insertFavorite(Favorite favorite);

    void updateFavorite(Favorite favorite);

    List<Favorite> queryFavorite(Favorite favorite);
}
