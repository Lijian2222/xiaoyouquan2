package com.xiaoyouquan.controller;



import com.ramostear.captcha.HappyCaptcha;
import com.xiaoyouquan.pojo.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
@Slf4j
@RequestMapping("/checkCode")
public class HappyCaptchaController {

    /**
     * 登录，验证，这里只需要判断验证码是否正确
     *
     * @param request 访问进来的请求
     * @return {@link Result }
     * @author 222
     */
    @RequestMapping("/verify")
    public Result login(HttpServletRequest request){
        log.info("匹配验证码");
        String verifyCode = request.getParameter("checkCode");
        System.out.println(request.getSession().getId());
        final boolean result = HappyCaptcha.verification(request,verifyCode,true);
        if (result) {
            return Result.success("验证码正确");
        }else {
            return Result.fail("验证码错误");
        }
    }


    /**用来产生验证码
     * @param request 请求的连接
     * @param response 回应的连接
     * @author 222
     */
    @RequestMapping("/generate")
    public void generateImage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        log.info("返回验证码图片");
        HappyCaptcha.require(request,response).build().finish();
        System.out.println(request.getSession().getId());
    }
}
