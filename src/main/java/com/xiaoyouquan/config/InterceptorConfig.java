package com.xiaoyouquan.config;

/**
 * 启用跨域配置
 * 编写SpringMVCConfig类使用FilterConfig中的配置
 *
 * @author Administrator
 */


import com.xiaoyouquan.interceptor.LoginCheckInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;



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
