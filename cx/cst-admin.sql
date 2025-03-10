/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 101002 (10.10.2-MariaDB)
 Source Host           : 127.0.0.1:3306
 Source Schema         : cst-admin

 Target Server Type    : MariaDB
 Target Server Version : 101002 (10.10.2-MariaDB)
 File Encoding         : 65001

 Date: 20/02/2025 12:36:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for generator_table
-- ----------------------------
DROP TABLE IF EXISTS `generator_table`;
CREATE TABLE `generator_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表名称',
  `table_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表描述',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实体类名称',
  `camel_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'camel实体类名称',
  `tpl_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '使用的模版',
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成作者名',
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成方式(0 zip压缩包；1 自定义路径)',
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他参数',
  `parent_menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级菜单id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成路径',
  `path_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api生成路径',
  `path_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'web生成路径',
  `menu_init_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '是否自动创建菜单路由（1 是）',
  `btn_permission_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '是否自动创建按钮权限 (1 是)',
  `has_import` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '是否支持导入(1 是)',
  `has_export` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '是否支持导出(1 是)',
  `generate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'all' COMMENT '生成类型（全量：all，后端：server，接口：service）',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_autofill` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否自动填充(1 是)',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Generator Table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generator_table
-- ----------------------------
INSERT INTO `generator_table` VALUES (1, 'teacher_statistics', '教师统计总览表', 'TeacherStatistics', 'teacherStatistics', 'crud', 'com.cst.admin', 'teacherstatistics', 'teacherStatistics', '教师统计总览表', 'cst-admin', '0', NULL, '0', '/', 'E:\\dev\\Code\\Github\\cst-boot-parent\\sz-service\\sz-service-admin', '', '1', '1', '1', '1', 'all', 1, NULL, '2024-05-10 21:45:32', NULL, '1');

-- ----------------------------
-- Table structure for generator_table_column
-- ----------------------------
DROP TABLE IF EXISTS `generator_table_column`;
CREATE TABLE `generator_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `search_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '搜索类型',
  `ts_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ts类型',
  `java_type_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'java类型包名',
  `java_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `up_camel_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'get开头的驼峰字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否查询字段（1是）',
  `is_import` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否导入字段(1 是)',
  `is_export` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否导出字段(1 是)',
  `is_autofill` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否自动填充(1 是)',
  `is_unique_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否进行唯一校验(1 是)',
  `autofill_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自动填充类型',
  `query_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
  `html_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型',
  `dict_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `is_logic_del` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否逻辑删除(1 是)',
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他设置',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `dict_show_way` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '字典展示方式（0 唯一标识；1 别名）',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Generator Table Column' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of generator_table_column
-- ----------------------------
INSERT INTO `generator_table_column` VALUES (1, 1, 'id', 'id', 'int', 'Long', 'input', 'number', NULL, 'id', 'Id', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', NULL, 'EQ', 'input-number', '', '0', NULL, 1, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (2, 1, 'year', '统计年限', 'varchar(4)', 'String', 'input', 'string', NULL, 'year', 'Year', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input', '', '0', NULL, 2, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (3, 1, 'month', '统计月份', 'varchar(2)', 'String', 'input', 'string', NULL, 'month', 'Month', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input', '', '0', NULL, 3, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (4, 1, 'during_time', '统计年月', 'varchar(10)', 'String', 'date-picker', 'string', NULL, 'duringTime', 'DuringTime', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input', '', '0', NULL, 4, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (5, 1, 'teacher_id', '教师id', 'varchar(32)', 'String', 'input', 'string', NULL, 'teacherId', 'TeacherId', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input', '', '0', NULL, 5, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (6, 1, 'teacher_common_type', '讲师区分类型', 'int', 'Integer', 'select', 'number', NULL, 'teacherCommonType', 'TeacherCommonType', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'select', '', '0', NULL, 6, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (7, 1, 'total_teaching', '授课总数', 'int', 'Integer', 'input', 'number', NULL, 'totalTeaching', 'TotalTeaching', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input-number', '', '0', NULL, 7, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (8, 1, 'total_class_count', '服务班次数', 'int', 'Integer', 'input', 'number', NULL, 'totalClassCount', 'TotalClassCount', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input-number', '', '0', NULL, 8, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (9, 1, 'total_hours', '课时总数', 'decimal(10,2)', 'BigDecimal', 'input', 'number', 'java.math.BigDecimal', 'totalHours', 'TotalHours', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'input-number', '', '0', NULL, 9, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (10, 1, 'check_status', '核对状态', 'int', 'Integer', 'select', 'number', NULL, 'checkStatus', 'CheckStatus', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'radio', '', '0', NULL, 10, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (11, 1, 'check_time', '核对时间', 'datetime', 'LocalDateTime', 'date-picker', 'string', 'java.time.LocalDateTime', 'checkTime', 'CheckTime', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'datetime', '', '0', NULL, 11, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (12, 1, 'create_time', '生成时间', 'datetime', 'LocalDateTime', 'date-picker', 'string', 'java.time.LocalDateTime', 'createTime', 'CreateTime', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', 'FieldFill.INSERT', 'EQ', 'datetime', '', '0', NULL, 12, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (13, 1, 'update_time', '更新时间', 'datetime', 'LocalDateTime', 'date-picker', 'string', 'java.time.LocalDateTime', 'updateTime', 'UpdateTime', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', 'FieldFill.UPDATE', 'EQ', 'datetime', '', '0', NULL, 13, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (14, 1, 'last_sync_time', '最近一次同步时间', 'datetime', 'LocalDateTime', 'date-picker', 'string', 'java.time.LocalDateTime', 'lastSyncTime', 'LastSyncTime', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', NULL, 'EQ', 'datetime', '', '0', NULL, 14, 1, NULL, '2024-05-10 21:45:32', NULL, '0');
INSERT INTO `generator_table_column` VALUES (15, 1, 'remark', '备注', 'varchar(255)', 'String', 'input', 'string', NULL, 'remark', 'Remark', '0', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', NULL, 'EQ', 'input', '', '0', NULL, 15, 1, NULL, '2024-05-10 21:45:32', NULL, '0');

-- ----------------------------
-- Table structure for mini_user
-- ----------------------------
DROP TABLE IF EXISTS `mini_user`;
CREATE TABLE `mini_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '小程序用户ID',
  `sys_user_id` int(11) NULL DEFAULT NULL COMMENT '关联的系统用户ID',
  `openid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小程序用户的唯一标识',
  `unionid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公众号的唯一标识',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像URL',
  `subscribe` tinyint(4) NULL DEFAULT NULL COMMENT '是否订阅公众号（1是0否）',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别，0-未知 1-男性，2-女性',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '删除标识',
  `create_time` datetime NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_openid`(`openid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小程序用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mini_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_client
-- ----------------------------
DROP TABLE IF EXISTS `sys_client`;
CREATE TABLE `sys_client`  (
  `client_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '客户端id',
  `client_key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户端key',
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户端秘钥',
  `grant_type_cd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'password' COMMENT '授权类型',
  `device_type_cd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '设备类型',
  `active_timeout` int(11) NULL DEFAULT 1800 COMMENT 'token活跃超时时间',
  `timeout` int(11) NULL DEFAULT 604800 COMMENT 'token固定超时',
  `client_status_cd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（正常 禁用）',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'F' COMMENT '删除标志',
  `create_dept` bigint(20) NULL DEFAULT NULL COMMENT '创建部门',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'F' COMMENT '是否锁定',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_client
-- ----------------------------
INSERT INTO `sys_client` VALUES ('195da9fcce574852b850068771cde034', 'cst-admin', '839ce050d3814949af9b2e1f815bc620', 'password', '1004001', 86400, 604800, '1003001', 'F', NULL, 1, '2024-01-22 13:43:51', 1, '2024-04-12 16:06:49', '演示client，禁止删除', 'T');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '参数配置ID',
  `config_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数名',
  `config_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数key',
  `config_value` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数value',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否锁定',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主体名称', 'sys.dept.entityName', 'xx公司', 'T', 1, '2024-03-22 10:42:46', 1, '2024-05-10 19:55:41', '公司主体名称');
INSERT INTO `sys_config` VALUES (2, '系统账户-初始密码', 'sys.user.initPwd', 'sz123456', 'T', 1, '2024-04-10 09:56:58', 1, '2024-04-10 10:13:28', '');
INSERT INTO `sys_config` VALUES (3, '密码错误尝试次数限制', 'sys.pwd.errCnt', '5', 'T', 1, '2024-06-05 20:40:21', 1, '2024-06-05 20:50:11', '一段时间内的密码最大错误次数');
INSERT INTO `sys_config` VALUES (4, '密码错误冻结时间（分）', 'sys_pwd.lockTime', '30', 'T', 1, '2024-06-05 20:42:22', 1, '2024-06-05 20:43:30', '时间到期后自动解冻');
INSERT INTO `sys_config` VALUES (5, '业务字典起始号段', 'sys.dict.startNo', '2000', 'T', 1, '2024-07-08 17:29:16', NULL, NULL, '业务字典起始号段。1000作为默认的系统字典号段。');
INSERT INTO `sys_config` VALUES (6, '是否启用验证码', 'sys.captcha.state', 'true', 'T', 1, '2024-11-07 15:39:50', 1, '2025-01-08 15:54:37', '');
INSERT INTO `sys_config` VALUES (7, '验证码有效时间（秒）', 'sys.captcha.expire', '120', 'T', 1, '2025-01-08 22:06:40', NULL, NULL, NULL);
INSERT INTO `sys_config` VALUES (8, '验证码请求次数限制', 'sys.captcha.requestLimit', '0', 'T', 1, '2025-01-08 22:09:28', 1, '2025-01-09 09:37:10', '一段时间内的验证码请求次数上限（0为不限制）');
INSERT INTO `sys_config` VALUES (9, '验证码计数周期（分）', 'sys.captcha.requestCycle', '1440', 'T', 1, '2025-01-08 22:13:09', 1, '2025-01-09 09:38:10', '默认一天');
INSERT INTO `sys_config` VALUES (10, '验证码水印', 'sys.captcha.waterText', 'Cst-Admin', 'T', 1, '2025-01-08 22:15:00', 1, '2025-01-09 09:39:15', '验证码右下角水印图案');
INSERT INTO `sys_config` VALUES (11, '是否启用验证码水印', 'sys.captcha.waterEnable', 'true', 'T', 1, '2025-01-08 22:18:10', 1, '2025-01-09 09:39:36', '');
INSERT INTO `sys_config` VALUES (12, '水印字体', 'sys.captcha.waterFont', 'Arial', 'T', 1, '2025-01-09 08:58:33', NULL, NULL, '请确认服务器是否支持该字体，并注意在商业用途中需确保字体版权合法使用');

-- ----------------------------
-- Table structure for sys_data_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_role`;
CREATE TABLE `sys_data_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '数据角色ID',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `data_scope_cd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据权限，data_scope字典',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '删除与否',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否锁定',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统数据角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_role
-- ----------------------------
INSERT INTO `sys_data_role` VALUES (1, '教师统计-本部门及以下', '1006002', '', 'F', 'T', '2024-07-15 15:35:05', '2024-07-15 16:57:19', 1, 1);
INSERT INTO `sys_data_role` VALUES (2, '教师统计-仅本部门', '1006003', '', 'F', 'T', '2024-07-15 15:36:03', NULL, 1, NULL);
INSERT INTO `sys_data_role` VALUES (3, '教师统计-仅本人', '1006004', '', 'F', 'T', '2024-07-15 15:36:46', NULL, 1, NULL);
INSERT INTO `sys_data_role` VALUES (4, '教师统计-自定义', '1006005', '', 'F', 'T', '2024-07-15 15:37:27', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_data_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_role_menu`;
CREATE TABLE `sys_data_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT 'sys_data_role_id （数据角色表ID）',
  `menu_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'sys_menu_id （菜单表）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统数据角色-菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_role_menu
-- ----------------------------
INSERT INTO `sys_data_role_menu` VALUES (69, 2, '85b54322630f43a39296488a5e76ba16');
INSERT INTO `sys_data_role_menu` VALUES (70, 3, '85b54322630f43a39296488a5e76ba16');
INSERT INTO `sys_data_role_menu` VALUES (71, 4, '85b54322630f43a39296488a5e76ba16');
INSERT INTO `sys_data_role_menu` VALUES (72, 1, '85b54322630f43a39296488a5e76ba16');

-- ----------------------------
-- Table structure for sys_data_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_role_relation`;
CREATE TABLE `sys_data_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT 'sys_data_role_id （数据角色表ID）',
  `relation_type_cd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联类型，data_scope_relation_type',
  `relation_id` bigint(20) NULL DEFAULT NULL COMMENT '关联表id，联动relation_type_cd（部门ID或个人ID）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统数据角色-关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_role_relation
-- ----------------------------
INSERT INTO `sys_data_role_relation` VALUES (69, 2, '1007001', 15);
INSERT INTO `sys_data_role_relation` VALUES (70, 3, '1007001', 15);
INSERT INTO `sys_data_role_relation` VALUES (71, 4, '1007002', 5);
INSERT INTO `sys_data_role_relation` VALUES (72, 4, '1007002', 3);
INSERT INTO `sys_data_role_relation` VALUES (73, 1, '1007001', 4);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `pid` bigint(20) NOT NULL COMMENT '父级ID',
  `deep` int(11) NULL DEFAULT NULL COMMENT '层级',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `has_children` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否有子级',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否锁定',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '删除标识',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '技术部', 0, 1, 100, 'T', 'F', 'F', NULL, 1, 1, '2024-05-10 21:40:03', '2024-05-10 21:40:46');
INSERT INTO `sys_dept` VALUES (2, '运营部', 0, 1, 200, 'T', 'F', 'F', NULL, 1, 1, '2024-05-10 21:40:13', '2024-05-10 21:41:34');
INSERT INTO `sys_dept` VALUES (3, '财务部', 0, 1, 300, 'T', 'F', 'F', NULL, 1, 1, '2024-05-10 21:40:19', '2024-05-10 21:42:03');
INSERT INTO `sys_dept` VALUES (4, '研发团队', 1, 4, 100, 'T', 'F', 'F', '', 1, 1, '2024-05-10 21:40:29', '2024-05-11 14:30:38');
INSERT INTO `sys_dept` VALUES (5, '测试团队', 1, 2, 200, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:40:36', NULL);
INSERT INTO `sys_dept` VALUES (6, '运维团队', 1, 2, 300, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:40:46', NULL);
INSERT INTO `sys_dept` VALUES (7, '产品运营', 2, 2, 100, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:41:06', NULL);
INSERT INTO `sys_dept` VALUES (8, '用户运营', 2, 2, 200, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:41:34', NULL);
INSERT INTO `sys_dept` VALUES (9, '会计团队', 3, 2, 100, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:41:49', NULL);
INSERT INTO `sys_dept` VALUES (10, '审计团队', 3, 2, 200, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:42:03', NULL);
INSERT INTO `sys_dept` VALUES (11, '人力资源部', 0, 1, 400, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:42:19', NULL);
INSERT INTO `sys_dept` VALUES (12, '销售部', 0, 1, 500, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:42:27', NULL);
INSERT INTO `sys_dept` VALUES (13, '法务部', 0, 1, 600, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:42:37', NULL);
INSERT INTO `sys_dept` VALUES (14, '行政部', 0, 1, 700, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:42:43', NULL);
INSERT INTO `sys_dept` VALUES (15, '移动组', 4, 3, 100, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:43:28', NULL);
INSERT INTO `sys_dept` VALUES (16, '算法组', 4, 3, 200, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:43:36', NULL);
INSERT INTO `sys_dept` VALUES (17, '前端组', 4, 3, 300, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:43:44', NULL);
INSERT INTO `sys_dept` VALUES (18, '后端组', 4, 4, 400, 'T', 'F', 'F', '', 1, 1, '2024-05-10 21:43:53', '2024-05-10 21:44:12');
INSERT INTO `sys_dept` VALUES (19, '架构组', 4, 3, 500, 'F', 'F', 'F', NULL, 1, NULL, '2024-05-10 21:44:04', NULL);

-- ----------------------------
-- Table structure for sys_dept_closure
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_closure`;
CREATE TABLE `sys_dept_closure`  (
  `ancestor_id` bigint(20) NOT NULL COMMENT '祖先节点ID',
  `descendant_id` bigint(20) NOT NULL COMMENT '后代节点ID',
  `depth` int(11) NOT NULL COMMENT '祖先节点到后代节点的距离'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门祖籍关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept_closure
-- ----------------------------
INSERT INTO `sys_dept_closure` VALUES (1, 1, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 1, 1);
INSERT INTO `sys_dept_closure` VALUES (2, 2, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 2, 1);
INSERT INTO `sys_dept_closure` VALUES (3, 3, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 3, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 4, 2);
INSERT INTO `sys_dept_closure` VALUES (4, 4, 0);
INSERT INTO `sys_dept_closure` VALUES (1, 4, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 5, 2);
INSERT INTO `sys_dept_closure` VALUES (5, 5, 0);
INSERT INTO `sys_dept_closure` VALUES (1, 5, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 6, 2);
INSERT INTO `sys_dept_closure` VALUES (6, 6, 0);
INSERT INTO `sys_dept_closure` VALUES (1, 6, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 7, 2);
INSERT INTO `sys_dept_closure` VALUES (7, 7, 0);
INSERT INTO `sys_dept_closure` VALUES (2, 7, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 8, 2);
INSERT INTO `sys_dept_closure` VALUES (8, 8, 0);
INSERT INTO `sys_dept_closure` VALUES (2, 8, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 9, 2);
INSERT INTO `sys_dept_closure` VALUES (9, 9, 0);
INSERT INTO `sys_dept_closure` VALUES (3, 9, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 10, 2);
INSERT INTO `sys_dept_closure` VALUES (10, 10, 0);
INSERT INTO `sys_dept_closure` VALUES (3, 10, 1);
INSERT INTO `sys_dept_closure` VALUES (11, 11, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 11, 1);
INSERT INTO `sys_dept_closure` VALUES (12, 12, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 12, 1);
INSERT INTO `sys_dept_closure` VALUES (13, 13, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 13, 1);
INSERT INTO `sys_dept_closure` VALUES (14, 14, 0);
INSERT INTO `sys_dept_closure` VALUES (0, 14, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 15, 3);
INSERT INTO `sys_dept_closure` VALUES (1, 15, 2);
INSERT INTO `sys_dept_closure` VALUES (15, 15, 0);
INSERT INTO `sys_dept_closure` VALUES (4, 15, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 16, 3);
INSERT INTO `sys_dept_closure` VALUES (1, 16, 2);
INSERT INTO `sys_dept_closure` VALUES (16, 16, 0);
INSERT INTO `sys_dept_closure` VALUES (4, 16, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 17, 3);
INSERT INTO `sys_dept_closure` VALUES (1, 17, 2);
INSERT INTO `sys_dept_closure` VALUES (17, 17, 0);
INSERT INTO `sys_dept_closure` VALUES (4, 17, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 18, 3);
INSERT INTO `sys_dept_closure` VALUES (1, 18, 2);
INSERT INTO `sys_dept_closure` VALUES (18, 18, 0);
INSERT INTO `sys_dept_closure` VALUES (4, 18, 1);
INSERT INTO `sys_dept_closure` VALUES (0, 19, 3);
INSERT INTO `sys_dept_closure` VALUES (1, 19, 2);
INSERT INTO `sys_dept_closure` VALUES (19, 19, 0);
INSERT INTO `sys_dept_closure` VALUES (4, 19, 1);

-- ----------------------------
-- Table structure for sys_dept_leader
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_leader`;
CREATE TABLE `sys_dept_leader`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门领导人ID',
  `dept_id` int(11) NULL DEFAULT NULL,
  `leader_id` bigint(20) NOT NULL COMMENT '领导人ID（sys_user_id）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门领导人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept_leader
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL COMMENT '字典ID(规则)',
  `sys_dict_type_id` bigint(20) NOT NULL COMMENT '关联sys_dict_type ID',
  `code_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `alias` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典（Key）别名，某些情况下如果不想使用id作为key',
  `sort` int(11) NOT NULL COMMENT '排序(正序)',
  `callback_show_style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回显样式',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否锁定',
  `is_show` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'T' COMMENT '是否展示',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否删除',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `delete_id` bigint(20) NULL DEFAULT NULL COMMENT '删除人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1000001, 1000, '正常', '', 1, 'success', '', 'F', 'T', 'F', '2023-08-20 16:30:23', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1000002, 1000, '禁用', '', 2, 'info', '', 'F', 'T', 'F', '2023-08-20 16:33:45', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1000003, 1000, '禁言', '', 3, 'info', '', 'F', 'T', 'F', '2023-08-20 16:33:54', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1001001, 1001, '测试用户', '', 0, 'info', '', 'T', 'T', 'F', '2023-08-20 16:38:58', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1001002, 1001, '超级管理员', '', 0, 'info', '', 'T', 'T', 'F', '2023-08-20 16:39:05', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1001003, 1001, '普通用户', '', 0, 'info', '', 'T', 'T', 'F', '2023-08-20 16:39:11', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1002001, 1002, '目录', '', 1, 'warning', '', 'T', 'T', 'F', '2023-08-21 11:23:05', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1002002, 1002, '菜单', '', 2, 'success', '', 'T', 'T', 'F', '2023-08-21 11:23:17', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1002003, 1002, '按钮', '', 3, 'danger', '', 'T', 'T', 'F', '2023-08-21 11:23:22', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1003001, 1003, '正常', '', 1, 'success', '', 'F', 'T', 'F', '2024-01-22 09:44:52', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1003002, 1003, '禁用', '', 2, 'info', '', 'F', 'T', 'F', '2024-01-22 09:45:16', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1004001, 1004, 'PC', '', 1, 'success', 'pc端', 'F', 'T', 'F', '2024-01-22 10:03:19', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1004002, 1004, '小程序', '', 2, 'success', '小程序端', 'F', 'T', 'F', '2024-01-22 10:03:47', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1004003, 1004, 'Androd', '', 3, 'success', '', 'F', 'T', 'F', '2024-01-22 10:04:35', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1004004, 1004, 'IOS', '', 4, 'success', '', 'F', 'T', 'F', '2024-01-22 10:04:42', '2024-04-12 15:58:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1005001, 1005, '密码认证', 'password', 100, 'success', '', 'T', 'T', 'F', '2024-01-22 10:20:32', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1005002, 1005, '小程序认证', 'applet', 300, 'success', '', 'F', 'T', 'F', '2024-01-22 10:20:40', '2024-04-12 16:51:58', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1005003, 1005, '三方认证', 'third', 400, 'success', '', 'F', 'T', 'F', '2024-01-22 10:20:51', '2024-04-12 16:51:49', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1005004, 1005, '短信认证', 'sms', 200, 'success', '', 'F', 'T', 'F', '2024-01-22 10:20:57', '2024-04-12 16:51:41', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1006001, 1006, '全部', '', 1, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:55:48', '2024-06-25 19:11:28', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1006002, 1006, '本部门及以下', '', 2, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:56:57', '2024-06-25 19:11:29', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1006003, 1006, '仅本部门', '', 3, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:57:22', '2024-06-25 19:11:32', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1006004, 1006, '仅本人', '', 4, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:57:57', '2024-06-25 19:11:34', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1006005, 1006, '自定义', '', 5, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:58:11', '2024-06-25 19:11:36', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1007001, 1007, '部门权限', '', 1, 'primary', '', 'T', 'T', 'F', '2024-06-25 18:59:00', '2024-06-25 19:11:38', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES (1007002, 1007, '个人权限', '', 2, 'primary', '个人权限高优先级', 'T', 'T', 'F', '2024-06-25 18:59:27', '2024-06-25 19:11:41', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典类型ID',
  `type_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典类型名(中文)',
  `type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型码(英文)',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否锁定，锁定的属性无法在页面进行修改',
  `is_show` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'T' COMMENT '显示与否',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '删除与否',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `delete_id` bigint(20) NULL DEFAULT NULL COMMENT '删除人ID',
  `type` enum('system','business') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'business' COMMENT '字典类型: system 系统, business 业务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1000, '账户状态', 'account_status', 'T', 'T', 'F', '', '2023-08-20 11:09:46', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1001, '用户标签', 'user_tag', 'T', 'T', 'F', '', '2023-08-20 14:22:40', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1002, '菜单类型', 'menu_type', 'T', 'T', 'F', '', '2023-08-21 11:20:47', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1003, '授权状态', 'sys_client_status', 'T', 'T', 'F', 'client授权状态', '2023-08-22 09:44:27', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1004, '设备类型', 'device_type', 'T', 'T', 'F', '', '2023-08-22 10:02:11', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1005, '授权类型', 'grant_type', 'T', 'T', 'F', '', '2023-08-22 10:15:58', '2025-02-17 10:43:01', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1006, '数据权限', 'data_scope', 'T', 'T', 'F', '', '2024-06-25 18:54:21', '2024-06-25 19:12:46', NULL, NULL, NULL, NULL, 'system');
INSERT INTO `sys_dict_type` VALUES (1007, '数据权限关联类型', 'data_scope_relation_type', 'T', 'T', 'F', '自定义数据权限的关联类型', '2024-06-25 18:55:37', '2024-06-25 19:12:48', NULL, NULL, NULL, NULL, 'system');

-- ----------------------------
-- Table structure for sys_export_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_info`;
CREATE TABLE `sys_export_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导出的文件名称',
  `export_status_cd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '导出状态,关联字典表export_status',
  `create_id` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '导出信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_export_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `dir_tag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '目录标识',
  `size` bigint(20) NULL DEFAULT NULL COMMENT '文件大小',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '文件域名',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `object_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '对象名（唯一）',
  `context_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件类型',
  `e_tag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'eTag标识',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (97, '教师统计 (43) (203252.669).xlsx', 'tmp', 9866, 'https://minioapi.szadmin.cn/test/tmp/20241216/教师统计 (43) (203252.669).xlsx', '2024-12-16 20:32:53', 'tmp/20241216/教师统计 (43) (203252.669).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '8bba8015aa748013cc8295a13637fb3a', 1);
INSERT INTO `sys_file` VALUES (98, '教师统计 (203323.951).xlsx', 'tmp', 9866, 'https://minioapi.szadmin.cn/test/tmp/20241216/教师统计 (203323.951).xlsx', '2024-12-16 20:33:24', 'tmp/20241216/教师统计 (203323.951).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '8bba8015aa748013cc8295a13637fb3a', 1);
INSERT INTO `sys_file` VALUES (99, '微信图片_20240420160033.jpg', 'user', 20276, 'https://minioapi.szadmin.cn/test/user/20241216/微信图片_20240420160033.jpg', '2024-12-16 20:39:57', 'user/20241216/微信图片_20240420160033.jpg', 'image/jpeg', '322e08e6b47cd85dec6a7b8dc9e88476', 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单表id',
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路径',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'icon图标',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '组件路径',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '外链地址',
  `sort` int(11) NOT NULL COMMENT '排序',
  `deep` int(11) NOT NULL COMMENT '层级',
  `menu_type_cd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单类型 （字典表menu_type）',
  `permissions` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '按钮权限',
  `is_hidden` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否隐藏',
  `has_children` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否有子级',
  `is_link` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '路由外链时填写的访问地址',
  `is_full` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '菜单是否全屏',
  `is_affix` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '菜单是否固定在标签页',
  `is_keep_alive` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '当前路由是否缓存',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否删除',
  `delete_id` bigint(20) NULL DEFAULT NULL COMMENT '删除人ID',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `use_data_scope` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '菜单是否开启数据权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('006bdbacd71a481f88b6acf895529acd', '8354d626cc65487594a7c38e98de1bad', '', '', '修改', '', '', '', 200, 3, '1002003', 'sys.dept.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-03-19 15:42:48', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('012efc4ef8d24304a8562534f319524a', '0e529e8a9dbf450898b695e051c36d48', '', '', '预览按钮', '', '', '', 600, 3, '1002003', 'generator.preview', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:23:47', '2024-05-10 20:54:31', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('0444cd2c01584f0687264b6205536691', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/dataRoleManage', 'SysDataRoleView', '数据权限', 'svg-scope', '/system/dataRoleManage/index', '', 800, 2, '1002002', 'sys.data.role.query_table', 'F', 'T', 'F', 'F', 'F', 'F', '2024-07-09 19:19:45', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('05194ef5fa7a4a308a44f6f5c6791c3a', '99c2ee7b882749e597bcd62385f368fb', '', '', '编辑菜单', '', '', '', 200, 3, '1002003', 'sys.menu.update_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-08-31 15:31:35', '2024-05-10 20:41:15', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('0933b165ffc14d558e8de43ccb6687f6', 'c6dd479d5b304731be403d7551c60d70', '', '', '编辑角色', '', '', '', 200, 3, '1002003', 'sys.role.update_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:30:43', '2024-05-10 20:41:01', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('0e529e8a9dbf450898b695e051c36d48', 'da1b46db642f42978f83ed5eb34870ce', '/toolbox/generator', 'generator', '代码生成', 'Brush', '/toolbox/generator/index', '', 100, 2, '1002002', 'generator.list', 'F', 'T', 'F', 'F', 'F', 'F', '2023-12-08 13:50:39', '2025-02-17 10:43:01', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('0f98b89c67e54cb0bcff2b56aa98832f', '140c9ed43ef54542bbcdde8a5d928400', '', '', '新增账号', '', '', '', 100, 3, '1002003', 'sys.user.create_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:31:55', '2024-05-10 20:40:31', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('13f06419e1d74bda97c0709e3ea0c8f0', 'b06f77bf931947c78cc5883b465bbd19', '', '', '导入', '', '', '', 4, 1, '1002003', 'teacher.statistics.import', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:48', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('140c9ed43ef54542bbcdde8a5d928400', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/accountManage', 'accountManage', '账号管理', 'UserFilled', '/system/accountManage/index', '', 100, 2, '1002002', 'sys.user.query_table', 'F', 'T', 'F', 'F', 'F', 'T', '2023-08-29 13:53:49', '2024-05-10 20:39:24', 8, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('17fc60357760477d8d3ca9619e9b87c4', 'b06f77bf931947c78cc5883b465bbd19', '', '', '修改', '', '', '', 2, 1, '1002003', 'teacher.statistics.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:48', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('1a86a9d2b3ca49439277fff9f499c7cd', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '删除字典', '', '', '', 600, 3, '1002003', 'sys.dict.delete_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-04 13:58:26', '2024-05-10 20:41:45', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('26ecd3786ec74a369074f84b9269bc41', 'b06f77bf931947c78cc5883b465bbd19', '', '', '新增', '', '', '', 1, 1, '1002003', 'teacher.statistics.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:48', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('2868079355ce4b6c985b1b746dbb0952', 'c4896e8735a745bda9b47ecaf50f46f2', '', '', '新增', '', '', '', 100, 3, '1002003', 'sys.file.create', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('29d33eba6b73420287d8f7e64aea62b3', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/configManage', 'configManage', '参数管理', 'Key', '/system/configManage/index', '', 500, 2, '1002002', 'sys.config.query_table', 'F', 'T', 'F', 'F', 'F', 'T', '2023-11-24 09:54:25', '2024-05-10 20:39:43', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('2d6b78ad03de4cf1a3899f25cd7fe0ee', '0e529e8a9dbf450898b695e051c36d48', '', '', '删除按钮', '', '', '', 400, 3, '1002003', 'generator.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:22:50', '2024-05-10 20:54:24', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('307951cd49394947b1b7f7dca2266546', '43866b83ef834b73adbd95338f9e606b', '', '', '导出', '', '', '', 5, 1, '1002003', 'teacher.statistics.export', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:32', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('30942929802f41cc850722c78db089e7', '140c9ed43ef54542bbcdde8a5d928400', '', '', '设置数据角色', '', '', '', 800, 3, '1002003', 'sys.user.data_role_set_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-07-02 19:22:37', '2024-07-11 20:27:03', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('310d02bb121645d1b7a7f949f48c981b', '0e529e8a9dbf450898b695e051c36d48', '', '', '生成按钮', '', '', '', 300, 3, '1002003', 'generator.generator', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:21:47', '2024-05-10 20:54:20', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('330a1a0a857c4ad1a95327db5134e420', '140c9ed43ef54542bbcdde8a5d928400', '', '', '解锁', '', '', '', 500, 3, '1002003', 'sys.user.unlock_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-29 14:06:49', '2024-05-10 20:40:49', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('3a54d488132b4331bf3cd5e6d86ffcf4', '29d33eba6b73420287d8f7e64aea62b3', '', '', '修改参数', '', '', '', 200, 3, '1002003', 'sys.config.update_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-11-24 09:57:38', '2024-05-10 20:42:50', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('3ba9407560a1490583fefa10b22bc74f', '8354d626cc65487594a7c38e98de1bad', '', '', '删除', '', '', '', 300, 3, '1002003', 'sys.dept.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-03-19 15:42:48', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('3d7eed8398d3457c897b2e8bf838e9c6', '0e529e8a9dbf450898b695e051c36d48', '', '', '编辑按钮', '', '', '', 200, 3, '1002003', 'generator.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:21:05', '2024-05-10 20:54:15', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('3f555e4a01174a1d9b29be439668e32f', '0444cd2c01584f0687264b6205536691', '', '', '删除', '', '', '', 300, 3, '1002003', 'sys.data.role.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-07-09 19:19:11', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('445b73dda9a34ad681d2705a7abcf2f6', 'c6dd479d5b304731be403d7551c60d70', '', '', '删除角色', '', '', '', 300, 3, '1002003', 'sys.role.delete_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:31:05', '2024-05-10 20:41:04', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('49c75878b4d445f8be5f69e21e18b70d', 'c4896e8735a745bda9b47ecaf50f46f2', '', '', '修改', '', '', '', 200, 3, '1002003', 'sys.file.update', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('4f39ef0fd2f748f6ab7d6d20d98bc4af', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '新增字典类型', '', '', '', 100, 3, '1002003', 'sys.dict.add_type_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-08-31 15:52:38', '2024-05-10 20:41:28', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('5b33ac3d630543d09d1388fae4d13fc0', '9e731ff422184fc1be2022c5c985735e', '', '', '修改', '', '', '', 200, 3, '1002003', 'sys.client.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-01-22 10:52:09', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('5b5fb3748c6a4ed5a4dda3877508c3a7', 'c6dd479d5b304731be403d7551c60d70', '', '', '设置权限', '', '', '', 400, 3, '1002003', 'sys.role.setting_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:31:35', '2024-05-10 20:41:07', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('60966137f6de4d80a0bc6e7781f7df12', '43866b83ef834b73adbd95338f9e606b', '', '', '修改', '', '', '', 2, 1, '1002003', 'teacher.statistics.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:32', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('63e71c4867974a86a71e3df8bcd3e2e6', '43866b83ef834b73adbd95338f9e606b', '', '', '删除', '', '', '', 3, 1, '1002003', 'teacher.statistics.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:32', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('686a5522b0334d4da51aa15b3fd1a303', '140c9ed43ef54542bbcdde8a5d928400', '', '', '设置部门', '', '', '', 700, 3, '1002003', 'sys.user.dept_set_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-04-12 14:33:21', '2025-02-17 10:43:02', 1, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('6c15038105da47fa9d519b9cdec7f1cf', '43866b83ef834b73adbd95338f9e606b', '', '', '新增', '', '', '', 1, 1, '1002003', 'teacher.statistics.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:32', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('6c46fd01faf042fc9dd4a9c9b9ef2c5a', '9e731ff422184fc1be2022c5c985735e', '', '', '新增', '', '', '', 100, 3, '1002003', 'sys.client.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-01-22 10:52:09', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('6e25a716c1a646009a9be90b16f0a682', '140c9ed43ef54542bbcdde8a5d928400', '', '', '设置角色', '', '', '', 400, 3, '1002003', 'sys.user.role_set_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:33:53', '2024-05-10 20:40:46', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('7391f12ad51049c2b86d231d39708c71', '85b54322630f43a39296488a5e76ba16', '', '', '修改', '', '', '', 200, 1, '1002003', 'teacher.statistics.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('73d312f4fa8949ddba3d9807c0c56f00', '85b54322630f43a39296488a5e76ba16', '', '', '删除', '', '', '', 300, 1, '1002003', 'teacher.statistics.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('7a4544831af34e69aa73148bf84b9924', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', 'SQL按钮', '', '', '', 700, 3, '1002003', 'sys.dict.sql_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-08-11 16:10:09', '2025-02-17 10:43:02', 1, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('7abbd9193f9746679e3eead86697e860', '43866b83ef834b73adbd95338f9e606b', '', '', '导入', '', '', '', 4, 1, '1002003', 'teacher.statistics.import', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:32', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8061d8e79be744bf91b7b438f8e8e887', '85b54322630f43a39296488a5e76ba16', '', '', '导出', '', '', '', 500, 1, '1002003', 'teacher.statistics.export', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('81647226a2d047e8ab0b70472350ee69', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '新增字典', '', '', '', 400, 3, '1002003', 'sys.dict.add_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-04 13:54:55', '2024-05-10 20:41:37', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('818cc6e1889d46579525ad8ab921eeb8', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '编辑字典类型', '', '', '', 200, 3, '1002003', 'sys.dict.update_type_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:39:29', '2024-05-10 20:41:31', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8231a369712e4f8f8ac09fce232cd034', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/sysTempFile', 'SysTempFileView', '模版文件管理', 'DocumentCopy', '/system/sysTempFile/index', '', 1000, 2, '1002002', 'sys.temp.file.query_table', 'F', 'T', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8255bac5eae748a0a8500167963b3e00', '140c9ed43ef54542bbcdde8a5d928400', '', '', '编辑账号', '', '', '', 200, 3, '1002003', 'sys.user.update_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:32:15', '2024-05-10 20:40:35', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('82f4776aaf714700802cfb6c93dffa15', 'b06f77bf931947c78cc5883b465bbd19', '', '', '导出', '', '', '', 5, 1, '1002003', 'teacher.statistics.export', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:48', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8354d626cc65487594a7c38e98de1bad', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/deptManage', 'SysDeptView', '部门管理', 'svg-org', '/system/deptManage/index', '', 700, 2, '1002002', 'sys.dept.query_table', 'F', 'T', 'F', 'F', 'F', 'F', '2024-03-19 15:42:48', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('85b54322630f43a39296488a5e76ba16', '0', '/teacher/teacherStatistics', 'TeacherStatisticsView', '教师统计', 'svg-org', '/teacher/teacherStatistics/index', '', 300, 1, '1002002', 'teacher.statistics.query_table', 'F', 'T', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'T');
INSERT INTO `sys_menu` VALUES ('87a26b76daad47c2a12c470605563c4a', '8231a369712e4f8f8ac09fce232cd034', '', '', '修改', '', '', '', 200, 3, '1002003', 'sys.temp.file.update', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('88b2e5def2ff474fa8bf3537d4a2fe5b', '0', '/system', 'system', '系统管理', 'Tools', '', '', 100, 1, '1002001', '', 'F', 'T', 'F', 'F', 'F', 'T', '2023-08-29 13:52:10', '2024-05-10 20:38:55', 8, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8d0b8b57a58e41a5a5e840cc2b3703f4', '9e731ff422184fc1be2022c5c985735e', '', '', '删除', '', '', '', 300, 3, '1002003', 'sys.client.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-01-22 10:52:09', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8d92cf6f2f3248569d5dd6cb6b958d7c', '0444cd2c01584f0687264b6205536691', '', '', '新增', '', '', '', 100, 3, '1002003', 'sys.data.role.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-07-09 19:19:11', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('8fd6721941494fd5bbe16bec82b235be', '8354d626cc65487594a7c38e98de1bad', '', '', '新增', '', '', '', 100, 3, '1002003', 'sys.dept.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-03-19 15:42:48', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('91ccb13b5c174583803a4c492a5dfdb6', '85b54322630f43a39296488a5e76ba16', '', '', '导入', '', '', '', 400, 1, '1002003', 'teacher.statistics.import', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('9338bf2f57984825bc227bb618f9db81', '99c2ee7b882749e597bcd62385f368fb', '', '', '新增菜单', '', '', '', 100, 3, '1002003', 'sys.menu.create_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-08-31 14:27:50', '2024-05-10 20:41:13', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('97f11d74c98047ba80f011a3da9d882c', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '编辑字典', '', '', '', 500, 3, '1002003', 'sys.dict.update_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-04 13:55:13', '2024-05-10 20:41:42', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('9830d86487184961b90fc527c9604720', 'dcb6aabcd910469ebf3efbc7e43282d4', '', '', '删除字典类型', '', '', '', 300, 3, '1002003', 'sys.dict.delete_type_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-04 13:57:33', '2024-05-10 20:41:34', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('99c2ee7b882749e597bcd62385f368fb', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/menuMange', 'menuMange', '菜单管理', 'Menu', '/system/menuMange/index', '', 300, 2, '1002002', 'sys.menu.query_table', 'F', 'T', 'F', 'F', 'F', 'T', '2023-08-29 13:55:30', '2024-05-10 20:39:34', 8, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('9e731ff422184fc1be2022c5c985735e', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/clientManage', 'ClientManageView', '客户端管理', 'Operation', '/system/clientManage/index', '', 600, 2, '1002002', 'sys.client.query_table', 'F', 'T', 'F', 'F', 'F', 'F', '2024-01-22 10:52:09', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('b428eba3f9a34025a46c394df5390b88', '29d33eba6b73420287d8f7e64aea62b3', '', '', '删除参数', '', '', '', 300, 3, '1002003', 'sys.config.delete_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-11-24 09:58:06', '2024-05-10 20:53:43', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('b5ce6412c26447348a7267de3ea11a21', '0e529e8a9dbf450898b695e051c36d48', '', '', '导入按钮', '', '', '', 100, 3, '1002003', 'generator.import', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:19:21', '2024-05-10 20:54:12', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('c4896e8735a745bda9b47ecaf50f46f2', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/fileManage', 'SysFileView', '文件管理', 'Files', '/system/fileManage/index', '', 900, 2, '1002002', 'sys.file.query_table', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('c55de3135b864579bda79c279f4129a9', 'c4896e8735a745bda9b47ecaf50f46f2', '', '', '删除', '', '', '', 300, 3, '1002003', 'sys.file.remove', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('c6dd479d5b304731be403d7551c60d70', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/roleManage', 'roleManage', '角色管理', 'User', '/system/roleManage/index', '', 200, 2, '1002002', 'sys.role.query_table', 'F', 'T', 'F', 'F', 'F', 'T', '2023-08-29 13:54:36', '2024-05-10 20:39:30', 8, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('cb3500315dba4c2d83e4d92edf36dff7', '85b54322630f43a39296488a5e76ba16', '', '', '新增', '', '', '', 100, 1, '1002003', 'teacher.statistics.create', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-17 10:19:32', '2025-02-17 10:43:02', NULL, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('cea01dcde9b24b5a8686bdc33c438cd7', '140c9ed43ef54542bbcdde8a5d928400', '', '', '删除账号', '', '', '', 300, 3, '1002003', 'sys.user.delete_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:33:27', '2024-05-10 20:40:41', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('da1b46db642f42978f83ed5eb34870ce', '0', '/toolbox', 'toolbox', '工具箱', 'Briefcase', '', '', 200, 1, '1002001', '', 'F', 'T', 'F', 'F', 'F', 'F', '2023-12-08 13:46:08', '2024-05-10 20:39:17', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('dcb6aabcd910469ebf3efbc7e43282d4', '88b2e5def2ff474fa8bf3537d4a2fe5b', '/system/dictManage', 'dictManage', '字典管理', 'Reading', '/system/dictManage/index', '', 400, 2, '1002002', 'sys.dict.query_table', 'F', 'T', 'F', 'F', 'F', 'T', '2023-08-29 13:57:12', '2024-05-10 20:39:39', 8, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('df2894b4c06e47cab84142d81edc494d', 'c6dd479d5b304731be403d7551c60d70', '', '', '新增角色', '', '', '', 100, 3, '1002003', 'sys.role.create_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-09-06 10:30:18', '2024-05-10 20:40:57', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('e19083a9ac404698b4362d63d7048b7b', 'b06f77bf931947c78cc5883b465bbd19', '', '', '删除', '', '', '', 3, 1, '1002003', 'teacher.statistics.remove', 'F', 'F', 'F', 'F', 'F', 'F', '2024-05-10 21:45:48', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('e91eeaea8f1546d3921839469fe247b6', '140c9ed43ef54542bbcdde8a5d928400', '', '', '重置密码', '', '', '', 600, 3, '1002003', 'sys.user_resetPwd', 'F', 'F', 'F', 'F', 'F', 'F', '2024-04-10 10:16:08', '2025-02-17 10:43:02', 1, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('e931c84b8bc945a7b6ba2d58c8a93afc', '8231a369712e4f8f8ac09fce232cd034', '', '', '新增', '', '', '', 100, 3, '1002003', 'sys.temp.file.create', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('ede76f5e60b640aa9de2ba7216b90ceb', '29d33eba6b73420287d8f7e64aea62b3', '', '', '新增参数', '', '', '', 100, 3, '1002003', 'sys.config.add_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-11-24 09:57:19', '2024-05-10 20:42:46', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('ee36ad68586e42fa8a896215c544cb76', '99c2ee7b882749e597bcd62385f368fb', '', '', 'SQL按钮', '', '', '', 400, 3, '1002003', 'sys.menu.sql_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2024-01-11 09:41:47', '2024-05-10 20:41:21', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('f1ef824156c0402c90189d58afb1613e', '8231a369712e4f8f8ac09fce232cd034', '', '', '删除', '', '', '', 300, 3, '1002003', 'sys.temp.file.remove', 'F', 'F', 'F', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('f42b249ccfd44fdcbc2dba48a308c1f6', '0444cd2c01584f0687264b6205536691', '', '', '修改', '', '', '', 200, 3, '1002003', 'sys.data.role.update', 'F', 'F', 'F', 'F', 'F', 'F', '2024-07-09 19:19:11', '2025-02-17 10:43:02', NULL, NULL, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('fa0c65ad783d4bf9b919a6db02ef1428', '99c2ee7b882749e597bcd62385f368fb', '', '', '删除菜单', '', '', '', 300, 3, '1002003', 'sys.menu.delete_btn', 'F', 'F', 'F', 'F', 'F', 'F', '2023-08-31 16:28:57', '2024-05-10 20:41:18', 1, 1, 'F', NULL, NULL, 'F');
INSERT INTO `sys_menu` VALUES ('fbdcbcc0ccf547b4b78a4fc2cf303236', '0e529e8a9dbf450898b695e051c36d48', '', '', 'zip下载按钮', '', '', '', 500, 3, '1002003', 'generator.zip', 'F', 'F', 'F', 'F', 'F', 'F', '2024-02-15 10:23:17', '2024-05-10 20:54:27', 1, 1, 'F', NULL, NULL, 'F');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '删除与否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `is_lock` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'F' COMMENT '是否锁定',
  `permissions` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标识，唯一',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '', 'F', '2024-05-10 21:28:31', '2025-02-17 10:43:01', NULL, NULL, 'T', 'admin');
INSERT INTO `sys_role` VALUES (2, '字典管理', '', 'F', '2024-05-10 21:52:39', '2025-02-17 10:43:01', NULL, NULL, 'F', 'dict_menu');
INSERT INTO `sys_role` VALUES (3, '教师统计', '', 'F', '2024-05-10 21:53:15', '2025-02-17 10:43:01', NULL, NULL, 'F', 'teacher_statics_menu');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统角色-菜单ID',
  `menu_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'sys_menu_id （菜单表）',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT 'sys_role_id （角色表）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色-菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, '88b2e5def2ff474fa8bf3537d4a2fe5b', 1);
INSERT INTO `sys_role_menu` VALUES (2, '140c9ed43ef54542bbcdde8a5d928400', 1);
INSERT INTO `sys_role_menu` VALUES (3, '0f98b89c67e54cb0bcff2b56aa98832f', 1);
INSERT INTO `sys_role_menu` VALUES (4, '8255bac5eae748a0a8500167963b3e00', 1);
INSERT INTO `sys_role_menu` VALUES (5, 'cea01dcde9b24b5a8686bdc33c438cd7', 1);
INSERT INTO `sys_role_menu` VALUES (6, '6e25a716c1a646009a9be90b16f0a682', 1);
INSERT INTO `sys_role_menu` VALUES (7, '330a1a0a857c4ad1a95327db5134e420', 1);
INSERT INTO `sys_role_menu` VALUES (8, 'e91eeaea8f1546d3921839469fe247b6', 1);
INSERT INTO `sys_role_menu` VALUES (9, '686a5522b0334d4da51aa15b3fd1a303', 1);
INSERT INTO `sys_role_menu` VALUES (10, 'c6dd479d5b304731be403d7551c60d70', 1);
INSERT INTO `sys_role_menu` VALUES (11, 'df2894b4c06e47cab84142d81edc494d', 1);
INSERT INTO `sys_role_menu` VALUES (12, '0933b165ffc14d558e8de43ccb6687f6', 1);
INSERT INTO `sys_role_menu` VALUES (13, '445b73dda9a34ad681d2705a7abcf2f6', 1);
INSERT INTO `sys_role_menu` VALUES (14, '5b5fb3748c6a4ed5a4dda3877508c3a7', 1);
INSERT INTO `sys_role_menu` VALUES (15, '99c2ee7b882749e597bcd62385f368fb', 1);
INSERT INTO `sys_role_menu` VALUES (16, '9338bf2f57984825bc227bb618f9db81', 1);
INSERT INTO `sys_role_menu` VALUES (17, '05194ef5fa7a4a308a44f6f5c6791c3a', 1);
INSERT INTO `sys_role_menu` VALUES (18, 'fa0c65ad783d4bf9b919a6db02ef1428', 1);
INSERT INTO `sys_role_menu` VALUES (19, 'ee36ad68586e42fa8a896215c544cb76', 1);
INSERT INTO `sys_role_menu` VALUES (20, 'dcb6aabcd910469ebf3efbc7e43282d4', 1);
INSERT INTO `sys_role_menu` VALUES (21, '4f39ef0fd2f748f6ab7d6d20d98bc4af', 1);
INSERT INTO `sys_role_menu` VALUES (22, '818cc6e1889d46579525ad8ab921eeb8', 1);
INSERT INTO `sys_role_menu` VALUES (23, '9830d86487184961b90fc527c9604720', 1);
INSERT INTO `sys_role_menu` VALUES (24, '81647226a2d047e8ab0b70472350ee69', 1);
INSERT INTO `sys_role_menu` VALUES (25, '97f11d74c98047ba80f011a3da9d882c', 1);
INSERT INTO `sys_role_menu` VALUES (26, '1a86a9d2b3ca49439277fff9f499c7cd', 1);
INSERT INTO `sys_role_menu` VALUES (27, '29d33eba6b73420287d8f7e64aea62b3', 1);
INSERT INTO `sys_role_menu` VALUES (28, 'ede76f5e60b640aa9de2ba7216b90ceb', 1);
INSERT INTO `sys_role_menu` VALUES (29, '3a54d488132b4331bf3cd5e6d86ffcf4', 1);
INSERT INTO `sys_role_menu` VALUES (30, 'b428eba3f9a34025a46c394df5390b88', 1);
INSERT INTO `sys_role_menu` VALUES (31, '9e731ff422184fc1be2022c5c985735e', 1);
INSERT INTO `sys_role_menu` VALUES (32, '6c46fd01faf042fc9dd4a9c9b9ef2c5a', 1);
INSERT INTO `sys_role_menu` VALUES (33, '5b33ac3d630543d09d1388fae4d13fc0', 1);
INSERT INTO `sys_role_menu` VALUES (34, '8d0b8b57a58e41a5a5e840cc2b3703f4', 1);
INSERT INTO `sys_role_menu` VALUES (35, '8354d626cc65487594a7c38e98de1bad', 1);
INSERT INTO `sys_role_menu` VALUES (36, '8fd6721941494fd5bbe16bec82b235be', 1);
INSERT INTO `sys_role_menu` VALUES (37, '006bdbacd71a481f88b6acf895529acd', 1);
INSERT INTO `sys_role_menu` VALUES (38, '3ba9407560a1490583fefa10b22bc74f', 1);
INSERT INTO `sys_role_menu` VALUES (39, '85b54322630f43a39296488a5e76ba16', 1);
INSERT INTO `sys_role_menu` VALUES (40, 'cb3500315dba4c2d83e4d92edf36dff7', 1);
INSERT INTO `sys_role_menu` VALUES (41, '7391f12ad51049c2b86d231d39708c71', 1);
INSERT INTO `sys_role_menu` VALUES (42, '73d312f4fa8949ddba3d9807c0c56f00', 1);
INSERT INTO `sys_role_menu` VALUES (43, '91ccb13b5c174583803a4c492a5dfdb6', 1);
INSERT INTO `sys_role_menu` VALUES (44, '8061d8e79be744bf91b7b438f8e8e887', 1);
INSERT INTO `sys_role_menu` VALUES (45, 'da1b46db642f42978f83ed5eb34870ce', 1);
INSERT INTO `sys_role_menu` VALUES (46, '0e529e8a9dbf450898b695e051c36d48', 1);
INSERT INTO `sys_role_menu` VALUES (47, 'b5ce6412c26447348a7267de3ea11a21', 1);
INSERT INTO `sys_role_menu` VALUES (48, '3d7eed8398d3457c897b2e8bf838e9c6', 1);
INSERT INTO `sys_role_menu` VALUES (49, '310d02bb121645d1b7a7f949f48c981b', 1);
INSERT INTO `sys_role_menu` VALUES (50, '2d6b78ad03de4cf1a3899f25cd7fe0ee', 1);
INSERT INTO `sys_role_menu` VALUES (51, 'fbdcbcc0ccf547b4b78a4fc2cf303236', 1);
INSERT INTO `sys_role_menu` VALUES (52, '012efc4ef8d24304a8562534f319524a', 1);
INSERT INTO `sys_role_menu` VALUES (53, 'dcb6aabcd910469ebf3efbc7e43282d4', 2);
INSERT INTO `sys_role_menu` VALUES (54, '4f39ef0fd2f748f6ab7d6d20d98bc4af', 2);
INSERT INTO `sys_role_menu` VALUES (55, '818cc6e1889d46579525ad8ab921eeb8', 2);
INSERT INTO `sys_role_menu` VALUES (56, '9830d86487184961b90fc527c9604720', 2);
INSERT INTO `sys_role_menu` VALUES (57, '81647226a2d047e8ab0b70472350ee69', 2);
INSERT INTO `sys_role_menu` VALUES (58, '97f11d74c98047ba80f011a3da9d882c', 2);
INSERT INTO `sys_role_menu` VALUES (59, '1a86a9d2b3ca49439277fff9f499c7cd', 2);
INSERT INTO `sys_role_menu` VALUES (60, '88b2e5def2ff474fa8bf3537d4a2fe5b', 2);
INSERT INTO `sys_role_menu` VALUES (61, '85b54322630f43a39296488a5e76ba16', 3);
INSERT INTO `sys_role_menu` VALUES (62, 'cb3500315dba4c2d83e4d92edf36dff7', 3);
INSERT INTO `sys_role_menu` VALUES (63, '7391f12ad51049c2b86d231d39708c71', 3);
INSERT INTO `sys_role_menu` VALUES (64, '73d312f4fa8949ddba3d9807c0c56f00', 3);
INSERT INTO `sys_role_menu` VALUES (65, '91ccb13b5c174583803a4c492a5dfdb6', 3);
INSERT INTO `sys_role_menu` VALUES (66, '8061d8e79be744bf91b7b438f8e8e887', 3);
INSERT INTO `sys_role_menu` VALUES (67, '30942929802f41cc850722c78db089e7', 1);
INSERT INTO `sys_role_menu` VALUES (68, '0444cd2c01584f0687264b6205536691', 1);
INSERT INTO `sys_role_menu` VALUES (69, '8d92cf6f2f3248569d5dd6cb6b958d7c', 1);
INSERT INTO `sys_role_menu` VALUES (70, 'f42b249ccfd44fdcbc2dba48a308c1f6', 1);
INSERT INTO `sys_role_menu` VALUES (71, '3f555e4a01174a1d9b29be439668e32f', 1);
INSERT INTO `sys_role_menu` VALUES (72, '7a4544831af34e69aa73148bf84b9924', 1);
INSERT INTO `sys_role_menu` VALUES (73, 'c4896e8735a745bda9b47ecaf50f46f2', 1);
INSERT INTO `sys_role_menu` VALUES (74, '2868079355ce4b6c985b1b746dbb0952', 1);
INSERT INTO `sys_role_menu` VALUES (75, '49c75878b4d445f8be5f69e21e18b70d', 1);
INSERT INTO `sys_role_menu` VALUES (76, 'c55de3135b864579bda79c279f4129a9', 1);
INSERT INTO `sys_role_menu` VALUES (77, '8231a369712e4f8f8ac09fce232cd034', 1);
INSERT INTO `sys_role_menu` VALUES (78, 'e931c84b8bc945a7b6ba2d58c8a93afc', 1);
INSERT INTO `sys_role_menu` VALUES (79, '87a26b76daad47c2a12c470605563c4a', 1);
INSERT INTO `sys_role_menu` VALUES (80, 'f1ef824156c0402c90189d58afb1613e', 1);

-- ----------------------------
-- Table structure for sys_temp_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_temp_file`;
CREATE TABLE `sys_temp_file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_file_id` bigint(20) NULL DEFAULT NULL COMMENT '文件ID',
  `temp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模版名',
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模版文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_temp_file
-- ----------------------------
INSERT INTO `sys_temp_file` VALUES (1, 98, '教师统计模板.xlsx', 'https://minioapi.szadmin.cn/test/tmp/20241216/教师统计 (203323.951).xlsx', '', 'F', 1, '2024-12-16 20:33:12', 1, '2024-12-16 20:33:36');

-- ----------------------------
-- Table structure for sys_temp_file_history
-- ----------------------------
DROP TABLE IF EXISTS `sys_temp_file_history`;
CREATE TABLE `sys_temp_file_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_temp_file_id` bigint(20) NULL DEFAULT NULL COMMENT '模版文件ID',
  `sys_file_id` bigint(20) NULL DEFAULT NULL COMMENT '文件ID',
  `temp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模版名',
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模版文件历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_temp_file_history
-- ----------------------------
INSERT INTO `sys_temp_file_history` VALUES (1, 1, 97, '教师统计模板.xlsx', 'https://minioapi.szadmin.cn/test/tmp/20241216/教师统计 (43) (203252.669).xlsx', '', 1, '2024-12-16 20:33:12', NULL, NULL);
INSERT INTO `sys_temp_file_history` VALUES (2, 1, 98, '教师统计模板.xlsx', 'https://minioapi.szadmin.cn/test/tmp/20241216/教师统计 (203323.951).xlsx', '', 1, '2024-12-16 20:33:36', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `pwd` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0 未知 1 男 2 女)',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生日',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄，--废弃，以生日为主',
  `id_card` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `account_status_cd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账户状态 (如 冻结；禁言；正常。 关联字典表account_status)',
  `user_tag_cd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标签（自定义关联到字典表）',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` enum('T','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'F' COMMENT '是否删除',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username_index`(`username` ASC) USING BTREE,
  INDEX `create_time_index`(`create_time` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$lv0HmNLnLrKzfzrFNWc.ku3MFBM5.XsPvTdbz71gLogv.mSbvDN5S', '19988887777', '系统管理员', 1, '2022-01-01', 'https://minioapi.szadmin.cn/test/user/20241216/微信图片_20240420160033.jpg', 1, '', '', '1000001', '1001002', '2024-02-02 13:36:04', '2023-08-18 11:15:10', '2025-02-17 10:43:01', 'F', NULL, NULL);
INSERT INTO `sys_user` VALUES (2, 'user', '$2a$10$Km4pU/DdW/.LXRYgR446S.HCdcjIHkp7uFisXtCVoaXyXfveBHjlO', NULL, '测试用户', 1, '2024-01-01', NULL, 0, NULL, NULL, '1000001', '1001003', NULL, '2024-05-09 21:50:02', '2024-05-10 22:30:54', 'F', NULL, NULL);
INSERT INTO `sys_user` VALUES (3, 'test1', '$2a$10$QXRq4OGoHahxlXbULJxIXe0RgOCdW7C716bes9qh4gopIVROAVxXW', '', '测试1-本部及以下', NULL, '', '', 0, '', '', '1000001', '1001003', NULL, '2024-07-08 08:47:31', '2024-07-08 09:17:41', 'F', 1, 1);
INSERT INTO `sys_user` VALUES (4, 'test2', '$2a$10$uMZA6KiYtvnLVHSukXiB2ufvKdp827nO/6p6jWn1ydEYoLA0kgPqK', '', '测试2-仅本部', NULL, '', '', 0, '', '', '1000001', '1001003', NULL, '2024-07-08 08:47:41', '2024-07-08 09:17:11', 'F', 1, 1);
INSERT INTO `sys_user` VALUES (5, 'test3', '$2a$10$UWKoQfMAFxk/qdTI4vQLgOjho5xtjNJhdbHmJNoYuNZkuOq2WCoZm', '', '测试3-仅本人', NULL, '', '', 0, '', '', '1000001', '1001003', NULL, '2024-07-08 08:47:50', '2024-07-08 09:17:56', 'F', 1, 1);
INSERT INTO `sys_user` VALUES (6, 'test4', '$2a$10$bCgJMtfSPhn6Mvn2AGx5z.NDVHXBvxl7/XEvlH52wbBpAWkLvwVVe', '', '测试4-自定义', NULL, '', '', 0, '', '', '1000001', '1001003', NULL, '2024-07-08 08:47:58', '2024-07-08 09:18:33', 'F', 1, 1);

-- ----------------------------
-- Table structure for sys_user_data_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_data_role`;
CREATE TABLE `sys_user_data_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户-数据角色关联ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '数据角色ID (sys_data_role_id)',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID(sys_user_id)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户-数据角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_data_role
-- ----------------------------
INSERT INTO `sys_user_data_role` VALUES (1, 2, 4);
INSERT INTO `sys_user_data_role` VALUES (2, 1, 3);
INSERT INTO `sys_user_data_role` VALUES (3, 3, 5);
INSERT INTO `sys_user_data_role` VALUES (4, 4, 6);

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户-部门关系ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID (sys_dept_id)',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID(sys_user_id)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户-部门关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES (1, 4, 2);
INSERT INTO `sys_user_dept` VALUES (2, 4, 3);
INSERT INTO `sys_user_dept` VALUES (3, 15, 4);
INSERT INTO `sys_user_dept` VALUES (4, 15, 5);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户-角色关联ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID (sys_role_id)',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID(sys_user_id)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户-角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2, 2);
INSERT INTO `sys_user_role` VALUES (3, 3, 2);
INSERT INTO `sys_user_role` VALUES (4, 3, 3);
INSERT INTO `sys_user_role` VALUES (5, 3, 4);
INSERT INTO `sys_user_role` VALUES (6, 3, 5);
INSERT INTO `sys_user_role` VALUES (7, 3, 6);

-- ----------------------------
-- Table structure for t_db_version
-- ----------------------------
DROP TABLE IF EXISTS `t_db_version`;
CREATE TABLE `t_db_version`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `t_db_version_s_idx`(`success` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_db_version
-- ----------------------------
INSERT INTO `t_db_version` VALUES (1, '1.1', '20230509 Init DDL', 'SQL', 'V1.1__20230509_Init_DDL.sql', -913377093, 'root', '2025-02-17 10:43:01', 707, 1);
INSERT INTO `t_db_version` VALUES (2, '1.2', '20240511 Update DDL', 'SQL', 'V1.2__20240511_Update_DDL.sql', 372977814, 'root', '2025-02-17 10:43:01', 16, 1);
INSERT INTO `t_db_version` VALUES (3, '1.3', '20240530 Update DDL', 'SQL', 'V1.3__20240530_Update_DDL.sql', 1784154531, 'root', '2025-02-17 10:43:01', 24, 1);
INSERT INTO `t_db_version` VALUES (4, '1.4', '20240603 Update DDL', 'SQL', 'V1.4__20240603_Update_DDL.sql', 1997095868, 'root', '2025-02-17 10:43:01', 4, 1);
INSERT INTO `t_db_version` VALUES (5, '1.5', '20240605 Update DDL', 'SQL', 'V1.5__20240605_Update_DDL.sql', 1391658357, 'root', '2025-02-17 10:43:01', 4, 1);
INSERT INTO `t_db_version` VALUES (6, '1.6', '20240611 Update DDL', 'SQL', 'V1.6__20240611_Update_DDL.sql', 75627697, 'root', '2025-02-17 10:43:01', 3, 1);
INSERT INTO `t_db_version` VALUES (7, '1.7', '20240624 Update DDL', 'SQL', 'V1.7__20240624_Update_DDL.sql', -404704373, 'root', '2025-02-17 10:43:01', 176, 1);
INSERT INTO `t_db_version` VALUES (8, '1.8', '20240726 Update DDL', 'SQL', 'V1.8__20240726_Update_DDL.sql', 2016440390, 'root', '2025-02-17 10:43:01', 48, 1);
INSERT INTO `t_db_version` VALUES (9, '1.9', '20240811 Update DDL', 'SQL', 'V1.9__20240811_Update_DDL.sql', -1874884231, 'root', '2025-02-17 10:43:01', 3, 1);
INSERT INTO `t_db_version` VALUES (10, '2.0', '20240813 Update DDL', 'SQL', 'V2.0__20240813_Update_DDL.sql', 1280585246, 'root', '2025-02-17 10:43:01', 35, 1);
INSERT INTO `t_db_version` VALUES (11, '2.1', '20241014 Update DDL', 'SQL', 'V2.1__20241014_Update_DDL.sql', -2022036290, 'root', '2025-02-17 10:43:02', 670, 1);
INSERT INTO `t_db_version` VALUES (12, '2.2', '20241119 Update DDL', 'SQL', 'V2.2__20241119_Update_DDL.sql', 223266239, 'root', '2025-02-17 10:43:02', 18, 1);
INSERT INTO `t_db_version` VALUES (13, '2.3', '20241125 Update DDL', 'SQL', 'V2.3__20241125_Update_DDL.sql', 243924568, 'root', '2025-02-17 10:43:02', 66, 1);
INSERT INTO `t_db_version` VALUES (14, '2.4', '20241203 Update DDL', 'SQL', 'V2.4__20241203_Update_DDL.sql', 990805520, 'root', '2025-02-17 10:43:02', 37, 1);
INSERT INTO `t_db_version` VALUES (15, '2.5', '20250107 Update DDL', 'SQL', 'V2.5__20250107_Update_DDL.sql', -1141433116, 'root', '2025-02-17 10:43:02', 6, 1);

-- ----------------------------
-- Table structure for t_db_version_business
-- ----------------------------
DROP TABLE IF EXISTS `t_db_version_business`;
CREATE TABLE `t_db_version_business`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `t_db_version_business_s_idx`(`success` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_db_version_business
-- ----------------------------
INSERT INTO `t_db_version_business` VALUES (1, '1', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2025-02-17 10:43:02', 0, 1);

-- ----------------------------
-- Table structure for teacher_statistics
-- ----------------------------
DROP TABLE IF EXISTS `teacher_statistics`;
CREATE TABLE `teacher_statistics`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '统计年限',
  `month` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '统计月份',
  `during_time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '统计年月',
  `teacher_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '教师id',
  `teacher_common_type` int(11) NOT NULL COMMENT '讲师区分类型',
  `total_teaching` int(11) NULL DEFAULT NULL COMMENT '授课总数',
  `total_class_count` int(11) NULL DEFAULT NULL COMMENT '服务班次数',
  `total_hours` decimal(10, 2) NULL DEFAULT NULL COMMENT '课时总数',
  `check_status` int(11) NOT NULL DEFAULT 0 COMMENT '核对状态',
  `check_time` datetime NULL DEFAULT NULL COMMENT '核对时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '生成时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `last_sync_time` datetime NULL DEFAULT NULL COMMENT '最近一次同步时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_id` bigint(20) NULL DEFAULT NULL COMMENT '更新人ID',
  `dept_scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门范围' CHECK (json_valid(`dept_scope`)),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '教师统计总览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_statistics
-- ----------------------------
INSERT INTO `teacher_statistics` VALUES (22, '2018', '12', '03', '1503', 1000001, 12, 22, 15.00, 1000001, '2024-07-08 10:39:56', '2024-07-08 10:40:16', NULL, '2024-07-08 10:39:57', 'test1 创建记录', 3, NULL, '[4]');
INSERT INTO `teacher_statistics` VALUES (23, '2019', '12', '03', '111', 1000001, 1, 2, 3.00, 1000001, '2024-07-08 10:41:09', '2024-07-08 10:41:18', NULL, '2024-07-08 10:41:11', 'test1 创建记录', 3, NULL, '[4]');
INSERT INTO `teacher_statistics` VALUES (24, '2020', '12', '2020-12', '023', 1000001, 1, 1, 1.00, 1000001, '2024-07-08 13:06:55', '2024-07-08 13:07:07', NULL, '2024-07-08 13:06:57', 'test1 创建记录', 3, NULL, '[4]');
INSERT INTO `teacher_statistics` VALUES (25, '2021', '12', '2021-12', '123', 1000001, 1, 1, 1.00, 1000001, '2024-07-08 13:13:56', '2024-07-08 13:13:59', NULL, NULL, 'test2 创建记录', 4, NULL, '[15]');
INSERT INTO `teacher_statistics` VALUES (26, '2022', '12', '2022-12', '13123', 1000001, 1, 1, 1.00, 1000001, '2024-07-08 13:15:36', '2024-07-08 13:15:37', '2024-07-08 13:15:46', NULL, 'test3 创建记录', 5, 5, '[15]');
INSERT INTO `teacher_statistics` VALUES (27, '2099', '12', '12', '123123', 1000001, 1, 1, 1.00, 1000001, NULL, '2024-07-08 13:20:29', NULL, NULL, '管理员创建', 1, NULL, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]');

SET FOREIGN_KEY_CHECKS = 1;
