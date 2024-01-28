package com.sunshine.project.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.sunshine.apicommon.model.entity.InterfaceInfo;

/**
* @description 针对表【interface_info(接口信息)】的数据库操作Service
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
