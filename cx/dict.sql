INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('100', '目录/页面/按钮', 'menu.type', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('101', '是/否', 'boolean.status', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('102', '启用/禁用', 'switch.status', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('103', '正常/异常', 'system.status', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('104', '自动/手动', 'operation.mode', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('105', '成功/失败', 'result.status', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('106', '日/周/月', 'time.unit', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('107', '日报/周报/月报', 'report.cycle', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('108', '高/中/低', 'priority.level', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('109', '高危/中危/低危', 'risk.level', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('110', '一级/二级/三级/四级/五级', 'classification.grade', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('111', '一般/重要/核心', 'data.importance', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('112', 'IPV4/IPV6', 'network.protocol.type', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('113', '新增/修改/删除', 'operation.type', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('114', '角色类型', 'sys.role.type', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('115', '在线/离线', 'network.status', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('116', 'HTTP请求方式', 'http.method', 'system', 0, 'T');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock") VALUES ('117', '用户类型', 'sys.user.type', 'system', 0, 'T');

INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('201', '数据库类型', 'asset.database.type', 'business', 0, 'T', '数据库资产');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('202', '文件资产类型', 'asset.file.type', 'business', 0, 'T', '文件资产');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('203', '数据生命周期', 'data.life.cycle', 'business', 0, 'F', '安全合规策略');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('204', '系统标签', 'business.system.tag', 'business', 0, 'F', '业务系统管理');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('205', '资源池', 'asset.resource.pool', 'business', 0, 'F', '资产');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('206', '合规数据来源', 'compliance.data.source', 'business', 0, 'F', '安全合规策略');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('207', '字符集', 'character.set', 'business', 0, 'F', '资产');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('208', '防护能力', 'protect.ability', 'business', 0, 'F', '数据库资产');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('209', '对端单位性质', 'partner.unit.type', 'business', 0, 'F', '对外接口合作方');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('210', '接口参数类型', 'api.params.type', 'business', 0, 'F', '对外接口管理');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('211', '安全标准类型', 'safe.standard.type', 'business', 0, 'F', '安全管控标准');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('212', '合规解读类型', 'compliance.explain.type', 'business', 0, 'F', '安全管控标准');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('213', '资产类型', 'asset.type', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('214', '数据存储类型', 'data.store.type', 'business', 0, 'F', '未知资产白名单');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('215', '大数据资产类型', 'asset.bigdata.type', 'business', 0, 'F', '未知资产白名单');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('216', '数据资源类型', 'data.resource.type', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('217', '生命周期策略类型', 'lifecycle.strategy.type', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('218', '生命周期过程', 'lifecycle.process', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('219', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('220', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('221', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('222', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('223', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('224', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('225', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('226', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('227', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('228', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('229', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('230', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('231', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('232', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('233', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('234', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('235', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('236', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('237', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('238', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('239', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('240', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('241', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('242', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('243', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('244', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('245', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('246', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('247', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('248', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('249', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('250', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('251', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('252', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('253', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('254', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('255', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('256', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('257', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('258', 'todo', 'todo', 'business', 0, 'F', '');
INSERT INTO sys_dict_type ("id", "type_name", "type_code", "type", "parent_id", "is_lock", "remark") VALUES ('259', 'todo', 'todo', 'business', 0, 'F', '');







