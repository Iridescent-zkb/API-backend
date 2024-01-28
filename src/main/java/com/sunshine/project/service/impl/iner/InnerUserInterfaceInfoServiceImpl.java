package com.sunshine.project.service.impl.iner;

import com.sunshine.apicommon.service.InnerUserInterfaceInfoService;
import com.sunshine.project.service.UserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {
    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        // 调用注入的 UserInterfaceInfoService 的 invokeCount 方法
        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }
}
