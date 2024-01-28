package com.sunshine.apicommon.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.sunshine.apicommon.model.entity.InterfaceInfo;

/**
* @description 针对表【interface_info(接口信息)】的数据库操作Service
*/
public interface InnerInterfaceInfoService extends IService<InterfaceInfo> {

    /**
     * 从数据库中查询模拟接口是否存在(请求路径，请求方法，请求参数)
     * @param path
     * @param method
     * @return
     */
    InterfaceInfo getInterfaceInfo(String path, String method);

}
