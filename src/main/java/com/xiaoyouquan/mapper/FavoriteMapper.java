package com.xiaoyouquan.mapper;

import com.xiaoyouquan.pojo.Favorite;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FavoriteMapper {

    /**插入我的收藏
     * @param favorite
     */
    void insertFavorite(Favorite favorite);

    /**更新我的收藏
     * @param favorite
     */
    void updateFavorite(Favorite favorite);

    /**条件查询我的收藏
     * @param favorite
     * @return {@link List }<{@link Favorite }>
     */
    List<Favorite> queryFavorite(Favorite favorite);
}
