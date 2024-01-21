package com.sunshine.apiinterface.controller;


import com.sunshine.apiclientsdk.model.User;
import com.sunshine.apiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 名称API
 */
@RestController
@RequestMapping("/name")
public class NameController {

    @GetMapping("/")
    public String getNameByGet(String name){
        return "GET 你的名字是 " + name;
    }

    @PostMapping("/")
    public String getNameByPost(@RequestParam String name){
        return "POST 你的名字是 " + name;
    }

    @PostMapping("/user")
    public String getUserNameByPost(@RequestBody User user, HttpServletRequest request){
        // 1.拿到这五个我们可以一步一步去做校验,比如 accessKey 我们先去数据库中查一下
        // 从请求头中获取参数
        String accessKey = request.getHeader("accessKey");
        String nonce = request.getHeader("nonce");
        String timestamp = request.getHeader("timestamp");
        String sign = request.getHeader("sign");
        String body = request.getHeader("body");
        // 2.校验权限,这里模拟一下,直接判断 accessKey 是否为"accessKey",实际应该查询数据库验证权限
        if (!accessKey.equals("accessKey") ){
            // 抛出一个运行时异常，表示权限不足
            throw new RuntimeException("无权限");
        }
        // todo:3.校验一下随机数,后端存储用hashmap或redis都可以,后续实现
        // 校验随机数,模拟一下,直接判断nonce是否大于10000
        if (Long.parseLong(nonce) > 10000) {
            throw new RuntimeException("无权限");
        }
        // todo:4.校验时间戳与当前时间的差距,后续实现
        // if (timestamp) {}

        //todo:实际情况是从数据库中查出 secretKey
        String serverSign = SignUtils.genSign(body, "secretKey");
        if (!sign.equals(serverSign)) {
            throw new RuntimeException("无权限");
        }

        // 如果权限校验通过，返回 "POST 用户名字是" + 用户名
        return "POST 用户名字是" + user.getUsername();
    }

}
