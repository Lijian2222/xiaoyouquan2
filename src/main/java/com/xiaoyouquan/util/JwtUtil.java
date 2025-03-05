package com.xiaoyouquan.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.Map;

public class JwtUtil {

    private static String signKey = "xiaoyouquan";
    private static Long expire = 3600*1000L; //1h


    /**
     * 生成jwt
     *
     * @param claims Map 自定义载荷
     * @return {@link String }
     * @author 222
     */
    public static String generateJwt(Map<String, Object> claims) {
        String jwt = Jwts.builder()
                .setClaims(claims)//自定义内容(载荷)
                .signWith(SignatureAlgorithm.HS256, signKey)//签名算法与密钥
                .setExpiration(new Date(System.currentTimeMillis() + expire))//设置有效期为12h
                .compact();
        return jwt;
    }


    /**
     * 解析jwt
     *
     * @return {@link Map }<{@link String }, {@link Object }>
     * @author 222
     * @param jwt 令牌token
     */
    public static Map<String, Object> parseJwt(String jwt) {
        Claims claims = Jwts.parser()
                .setSigningKey(signKey)//设置解析密钥
                .parseClaimsJws(jwt)//传入jwt令牌
                .getBody();//拿到第二部分内容，即载荷部分
        return claims;
    }

}
