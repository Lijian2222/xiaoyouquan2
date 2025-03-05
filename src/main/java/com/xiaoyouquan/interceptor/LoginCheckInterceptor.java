package com.xiaoyouquan.interceptor;

import com.alibaba.fastjson.JSONObject;

import com.xiaoyouquan.pojo.Result;
import com.xiaoyouquan.util.JwtUtil;
import io.jsonwebtoken.Claims;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Slf4j
@Component
public class LoginCheckInterceptor implements HandlerInterceptor {
    @Override // 目标资源方法运行前运行，返回true，放行；返回false，不放行
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //1.获取请求的url
        String url = request.getRequestURI();
        log.info("请求的url：{}", url);


        //3.获取请求头中的令牌（token）
        String jwt = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if("jwt".equals(cookie.getName())){
                jwt=cookie.getValue();
            }
        }

        //4.判断令牌是否存在，如果不存在，返回错误结果（未登录）
        if (!StringUtils.hasLength(jwt)) {
            log.info("请求头token为空，返回未登录的信息");
            Result error = Result.fail("NOT_LOGIN");
            //手动转换 对象-->json    使用阿里巴巴fastJson
            String notLogin = JSONObject.toJSONString(error);
            response.getWriter().write(notLogin);
            return false;
        }


        //5.解析token，如果解析失败，返回错误结果（未登录）
        try {
            Map<String, Object> claims = JwtUtil.parseJwt(jwt);
            // TODO 或者能解析成功就行，解析不成功就会报错
//            int id = (int) claims.get("id");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("令牌不合法，返回未登录错误信息");
            Result error = Result.fail("NOT_LOGIN");
            //手动转换 对象-->json    使用阿里巴巴fastJson
            String notLogin = JSONObject.toJSONString(error);
            response.getWriter().write(notLogin);
            return false;
        }
        //6.放行
        log.info("令牌合法，放行");
        return true;
    }

    @Override // 目标资源方法运行后运行
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle...");
    }

    @Override // 视图渲染完毕后运行，最后运行
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion...");
    }
}
