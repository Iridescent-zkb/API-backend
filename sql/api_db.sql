-- 创建库
create database if not exists api_db;

-- 切换库
use api_db;
-- auto-generated definition
create table if not exists user
(
    id           bigint auto_increment comment 'id'
        primary key,
    userName     varchar(256)                           null comment '用户昵称',
    userAccount  varchar(256)                           not null comment '账号',
    userAvatar   varchar(1024)                          null comment '用户头像',
    gender       tinyint                                null comment '性别',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user / admin',
    userPassword varchar(512)                           not null comment '密码',
    `accessKey` varchar(512) not null comment 'accessKey',
    `secretKey` varchar(512) not null comment 'secretKey',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    constraint uni_userAccount
        unique (userAccount)
)
    comment '用户';

1,bilibili,yupi,https://files.codelife.cc/website/bilibili2.svg,,admin,8c2fdcd8a49a6e7268dbf19cf20310cc,2024-01-20 17:38:10,2024-01-21 00:45:54,0


-- auto-generated definition
create table post
(
    id            bigint auto_increment comment 'id'
        primary key,
    age           int                                null comment '年龄',
    gender        tinyint  default 0                 not null comment '性别（0-男, 1-女）',
    education     varchar(512)                       null comment '学历',
    place         varchar(512)                       null comment '地点',
    job           varchar(512)                       null comment '职业',
    contact       varchar(512)                       null comment '联系方式',
    loveExp       varchar(512)                       null comment '感情经历',
    content       text                               null comment '内容（个人介绍）',
    photo         varchar(1024)                      null comment '照片地址',
    reviewStatus  int      default 0                 not null comment '状态（0-待审核, 1-通过, 2-拒绝）',
    reviewMessage varchar(512)                       null comment '审核信息',
    viewNum       int      default 0                 not null comment '浏览数',
    thumbNum      int      default 0                 not null comment '点赞数',
    userId        bigint                             not null comment '创建用户 id',
    createTime    datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime    datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete      tinyint  default 0                 not null comment '是否删除'
)
    comment '帖子';


-- 接口信息
create table if not exists api_db.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭，1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '接口信息';

insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('黎健雄', '史懿轩', 'www.yvette-schneider.com', '秦擎苍', '陈思聪', 0, '雷伟诚', 94521);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('洪晓博', '王鹏', 'www.james-okuneva.net', '廖嘉熙', '廖金鑫', 0, '张梓晨', 31391);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('曹旭尧', '贺鹏飞', 'www.granville-trantow.net', '黄鹏', '曹鸿煊', 0, '许浩', 0);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张驰', '宋擎宇', 'www.tommie-gottlieb.co', '金晋鹏', '任子骞', 0, '钱涛', 674987);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('魏晋鹏', '张鹤轩', 'www.osvaldo-dach.info', '邵子轩', '史雨泽', 0, '邵立果', 5288598565);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('尹航', '金鹏', 'www.angila-mitchell.com', '任鑫鹏', '洪健柏', 0, '丁子骞', 9);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('谭烨磊', '吴语堂', 'www.billie-hahn.com', '陆博超', '阎智辉', 0, '吕哲瀚', 78715);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('侯烨霖', '卢鸿煊', 'www.earle-shanahan.io', '周正豪', '傅俊驰', 0, '郝弘文', 986);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('莫致远', '黎苑博', 'www.johna-klocko.net', '曹正豪', '金思聪', 0, '吴文博', 501);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('梁潇然', '刘鑫磊', 'www.matilda-zulauf.net', '熊思聪', '郑正豪', 0, '卢浩宇', 4364);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('尹煜城', '卢涛', 'www.michel-spencer.biz', '孟文博', '姜远航', 0, '胡志泽', 9);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('尹荣轩', '谢绍辉', 'www.louie-green.com', '余越彬', '武思淼', 0, '彭乐驹', 749376697);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邹明哲', '吴思源', 'www.felica-reinger.info', '武绍辉', '雷熠彤', 0, '蒋绍辉', 1720554);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('丁立辉', '陆梓晨', 'www.kaycee-torphy.com', '邱皓轩', '黎靖琪', 0, '王熠彤', 1337);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('任子骞', '吕浩轩', 'www.zofia-balistreri.org', '阎志泽', '万正豪', 0, '赖瑾瑜', 491945596);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('贾烨伟', '唐鹏涛', 'www.jed-nader.org', '孙笑愚', '苏立果', 0, '曹昊天', 5088);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邓烨霖', '周智宸', 'www.cristin-okeefe.name', '孙展鹏', '夏正豪', 0, '程思淼', 968313339);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张乐驹', '韩立果', 'www.dong-harvey.net', '丁鑫磊', '萧烨霖', 0, '宋鹏煊', 7693);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('沈越泽', '杨君浩', 'www.jammie-howe.co', '郭正豪', '秦文', 0, '董君浩', 8);
insert into api_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杜旭尧', '邱鹭洋', 'www.kurtis-frami.info', '曾煜城', '顾楷瑞', 0, '范苑博', 5569776);