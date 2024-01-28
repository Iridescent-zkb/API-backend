package com.sunshine.apicommon.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.sunshine.apicommon.model.entity.InterfaceInfo;
import com.sunshine.apicommon.model.entity.User;
import com.sunshine.apicommon.model.entity.UserInterfaceInfo;

/**
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
*/
public interface InnerUserInterfaceInfoService extends IService<UserInterfaceInfo> {


    /**
     * 调用接口统计
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId, long userId);

}
