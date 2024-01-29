package com.sunshine.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sunshine.apicommon.model.entity.UserInterfaceInfo;

import java.util.List;

/**
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Mapper
* @Entity com.sunshine.project.model.entity.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {
    //select interfaceInfoId, sum(totalNum) as totalNum from user_interface_info
    // group by interfaceInfoId order by totalNum desc limit 3;
    //查询用户接口信息表，按照指定的 limit 参数筛选
    // 返回前 limit 条记录的接口信息列表
    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limit);
}




