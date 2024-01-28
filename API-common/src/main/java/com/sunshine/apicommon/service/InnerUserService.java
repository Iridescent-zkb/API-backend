package com.sunshine.apicommon.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.sunshine.apicommon.model.entity.User;

/**
 * 用户服务
 *
 */
public interface InnerUserService{

    /**
     * 数据库中查是否已分配给用户密钥(accessKey)
     * @param accessKey
     * @return
     */
    User getInvokeUser(String accessKey);

}
