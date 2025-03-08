package com.xiaoyouquan.config;

/**
 * springMVC拦截器
 *
 * @author Administrator
 */


import com.xiaoyouquan.interceptor.LoginCheckInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;




@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    @Autowired
    private LoginCheckInterceptor loginCheckInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(loginCheckInterceptor)  //注册拦截器
                .addPathPatterns("/**")  //拦截所有路径
                .excludePathPatterns(
                        "/post/**",
                        "/postGood/**",
                        "/job/**",
                        "/user/**"
                ); //不需要拦截哪个
    }
}
