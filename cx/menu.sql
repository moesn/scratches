TRUNCATE sys_menu;

INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('00', '0', '/toolbox/generator', '代码生成', '/toolbox/generator/index', 100, 1, '100002', 'generator.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100001', '00', NULL, '预览按钮', NULL, 1, 2, '100003', 'generator.preview', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100002', '00', NULL, '生成按钮', NULL, 2, 2, '100003', 'generator.generator', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100003', '00', NULL, '编辑按钮', NULL, 3, 2, '100003', 'generator.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100004', '00', NULL, '导入按钮', NULL, 4, 2, '100003', 'generator.import', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100005', '00', NULL, 'zip下载按钮', NULL, 5, 2, '100003', 'generator.zip', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100006', '00', NULL, '删除按钮', NULL, 6, 2, '100003', 'generator.delete', 'F', NULL);

INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('01', '0', '/toolbox/flow', '流程设计', '/toolbox/flow/index', 200, 1, '100002', 'flow.list', 'T', 'Star');

-- region 菜单目录
-- INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
-- VALUES ('01', '0', '/base', '系统管理', NULL, 1, 1, '100001', 'sys', 'T', 'Star');
-- INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
-- VALUES ('02', '0', '/resource', '资产管理', NULL, 2, 1, '100001', 'resource', 'T', 'Star');
-- INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
-- VALUES ('03', '0', '/compliance', '合规管理', NULL, 3, 1, '100001', 'compliance', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('04', '0', '/classify', '分类分级', NULL, 4, 1, '100001', 'classify', 'T', 'Star');
-- INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
-- VALUES ('99', '0', '/misc', '杂项管理', NULL, 99, 1, '100001', 'compliance', 'T', 'Star');
-- endregion

-- region 系统管理
-- region 菜单管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('100', '0', '/menu', '菜单管理', '/base/menu/index', 100, 2, '100002', 'sys.menu.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10001', '100', NULL, '新增', NULL, 1, 3, '100003', 'sys.menu.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10002', '100', NULL, '编辑', NULL, 2, 3, '100003', 'sys.menu.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10003', '100', NULL, '删除', NULL, 3, 3, '100003', 'sys.menu.delete', 'F', NULL);
-- endregion
-- region 字典管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('101', '0', '/dict', '字典管理', '/base/dict/index', 101, 2, '100002', 'sys.dict.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10101', '101', NULL, '新增', NULL, 1, 3, '100003', 'sys.dict.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10102', '101', NULL, '编辑', NULL, 2, 3, '100003', 'sys.dict.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10103', '101', NULL, '删除', NULL, 3, 3, '100003', 'sys.dict.delete', 'F', NULL);
-- endregion
-- region 租户管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('102', '0', '/tenant', '租户管理', '/base/tenant/index', 102, 2, '100002', 'sys.tenant.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10201', '102', NULL, '新增', NULL, 1, 3, '100003', 'sys.tenant.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10202', '102', NULL, '编辑', NULL, 2, 3, '100003', 'sys.tenant.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10203', '102', NULL, '删除', NULL, 3, 3, '100003', 'sys.tenant.delete', 'F', NULL);
-- endregion
-- region 租户套餐管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('103', '0', '/tenant-package', '租户套餐管理', '/base/tenant-package/index', 103, 2, '100002', 'sys.tenant.package.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10301', '103', NULL, '新增', NULL, 1, 3, '100003', 'sys.tenant.package.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10302', '103', NULL, '编辑', NULL, 2, 3, '100003', 'sys.tenant.package.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10303', '103', NULL, '删除', NULL, 3, 3, '100003', 'sys.tenant.package.delete', 'F', NULL);
-- endregion
-- region 部门管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('104', '0', '/dept', '部门管理', '/base/dept/index', 104, 2, '100002', 'sys.dept.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10401', '104', NULL, '新增', NULL, 1, 3, '100003', 'sys.dept.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10402', '104', NULL, '编辑', NULL, 2, 3, '100003', 'sys.dept.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10403', '104', NULL, '删除', NULL, 3, 3, '100003', 'sys.dept.delete', 'F', NULL);
-- endregion
-- region 角色管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('105', '0', '/role', '角色管理', '/base/role/index', 105, 2, '100002', 'sys.role.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10501', '105', NULL, '新增', NULL, 1, 3, '100003', 'sys.role.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10502', '105', NULL, '编辑', NULL, 2, 3, '100003', 'sys.role.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10503', '105', NULL, '删除', NULL, 3, 3, '100003', 'sys.role.delete', 'F', NULL);
-- endregion
-- region 用户管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('106', '0', '/user', '用户管理', '/base/user/index', 106, 2, '100002', 'sys.user.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10601', '106', NULL, '新增', NULL, 1, 3, '100003', 'sys.user.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10602', '106', NULL, '编辑', NULL, 2, 3, '100003', 'sys.user.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10603', '106', NULL, '删除', NULL, 3, 3, '100003', 'sys.user.delete', 'F', NULL);
-- endregion
-- region 配置管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('107', '0', '/config', '配置管理', '/base/config/index', 107, 2, '100002', 'sys.config.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10701', '107', NULL, '编辑', NULL, 1, 3, '100003', 'sys.config.update', 'F', NULL);
-- endregion
-- region 日志管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('108', '0', '/syslog', '日志管理', '/base/syslog/index', 108, 2, '100002', 'sys.syslog.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10801', '108', NULL, '导出', NULL, 1, 3, '100003', 'sys.syslog.export', 'F', NULL);
-- endregion
-- endregion

-- region 资产管理
-- region 业务系统管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('109', '0', '/business', '业务系统管理', '/resource/business/index', 109, 2, '100002', 'asset.business.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10901', '109', NULL, '新增', NULL, 1, 3, '100003', 'asset.business.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10902', '109', NULL, '编辑', NULL, 2, 3, '100003', 'asset.business.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('10903', '109', NULL, '删除', NULL, 3, 3, '100003', 'asset.business.delete', 'F', NULL);
-- endregion
-- region 数据库管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('110', '0', '/database', '数据库管理', '/resource/database/index', 110, 2, '100002', 'asset.database.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11001', '110', NULL, '新增', NULL, 1, 3, '100003', 'asset.database.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11002', '110', NULL, '编辑', NULL, 2, 3, '100003', 'asset.database.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11003', '110', NULL, '删除', NULL, 3, 3, '100003', 'asset.database.delete', 'F', NULL);
-- endregion
-- region 文件管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('111', '0', '/file', '文件管理', '/resource/file/index', 111, 2, '100002', 'asset.file.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11101', '111', NULL, '新增', NULL, 1, 3, '100003', 'asset.file.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11102', '111', NULL, '编辑', NULL, 2, 3, '100003', 'asset.file.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11103', '111', NULL, '删除', NULL, 3, 3, '100003', 'asset.file.delete', 'F', NULL);
-- endregion
-- region 对外接口管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('112', '0', '/external-api', '对外接口管理', '/resource/external-api/index', 112, 2, '100002', 'external.api.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11201', '112', NULL, '新增', NULL, 1, 3, '100003', 'external.api.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11202', '112', NULL, '编辑', NULL, 2, 3, '100003', 'external.api.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11203', '112', NULL, '删除', NULL, 3, 3, '100003', 'external.api.delete', 'F', NULL);
-- endregion
-- region 对外接口合作方
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('113', '0', '/external-api-partner', '对外接口合作方', '/resource/external-api-partner/index', 113, 2, '100002', 'external.api.partner.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11301', '113', NULL, '新增', NULL, 1, 3, '100003', 'external.api.partner.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11302', '113', NULL, '编辑', NULL, 2, 3, '100003', 'external.api.partner.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11303', '113', NULL, '删除', NULL, 3, 3, '100003', 'external.api.partner.delete', 'F', NULL);
-- endregion
-- endregion

-- region 合规管理
-- region 合规策略管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('114', '0', '/compliance-strategy', '合规策略管理-todo', '/compliance/strategy/index', 114, 2, '100002', 'compliance.strategy.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11401', '114', NULL, '新增', NULL, 1, 3, '100003', 'compliance.strategy.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11402', '114', NULL, '编辑', NULL, 2, 3, '100003', 'compliance.strategy.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11403', '114', NULL, '删除', NULL, 3, 3, '100003', 'compliance.strategy.delete', 'F', NULL);
-- endregion
-- region 合规模版管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('115', '0', '/compliance-template', '合规模版管理', '/compliance/template/index', 115, 2, '100002', 'compliance.template.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11501', '115', NULL, '新增', NULL, 1, 3, '100003', 'compliance.template.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11502', '115', NULL, '编辑', NULL, 2, 3, '100003', 'compliance.template.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11503', '115', NULL, '删除', NULL, 3, 3, '100003', 'compliance.template.delete', 'F', NULL);
-- endregion
-- region 合规任务管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('116', '0', '/compliance-task', '合规任务管理', '/compliance/task/index', 116, 2, '100002', 'compliance.task.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11601', '116', NULL, '新增', NULL, 1, 3, '100003', 'compliance.task.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11602', '116', NULL, '编辑', NULL, 2, 3, '100003', 'compliance.task.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11603', '116', NULL, '删除', NULL, 3, 3, '100003', 'compliance.task.delete', 'F', NULL);
-- endregion
-- endregion

-- region 杂项管理
-- region 管控策略
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('117', '0', '/control-strategy', '管控策略-delay', '/misc/control-strategy/index', 9117, 2, '100002', 'control.strategy.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11701', '117', NULL, '新增', NULL, 1, 3, '100003', 'control.strategy.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11702', '117', NULL, '编辑', NULL, 2, 3, '100003', 'control.strategy.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11703', '117', NULL, '删除', NULL, 3, 3, '100003', 'control.strategy.delete', 'F', NULL);
-- endregion
-- region 数据责任人
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('118', '0', '/data-manager', '数据责任人-delay', '/misc/data-manager/index', 9118, 2, '100002', 'data.manager.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11801', '118', NULL, '新增', NULL, 1, 3, '100003', 'data.manager.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11802', '118', NULL, '编辑', NULL, 2, 3, '100003', 'data.manager.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11803', '118', NULL, '删除', NULL, 3, 3, '100003', 'data.manager.delete', 'F', NULL);
-- endregion
-- region 安全管控标准
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('119', '0', '/safe-standard', '安全管控标准', '/misc/safe-standard/index', 119, 2, '100002', 'safe.standard.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11901', '119', NULL, '新增', NULL, 1, 3, '100003', 'safe.standard.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11902', '119', NULL, '编辑', NULL, 2, 3, '100003', 'safe.standard.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('11903', '119', NULL, '删除', NULL, 3, 3, '100003', 'safe.standard.delete', 'F', NULL);
-- endregion
-- region 脱敏策略管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('120', '0', '/data-desensitization-strategy', '脱敏策略管理-todo', '/misc/data-desensitization-strategy/index', 120, 2, '100002', 'data.desensitization.strategy.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12001', '120', NULL, '新增', NULL, 1, 3, '100003', 'data.desensitization.strategy.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12002', '120', NULL, '编辑', NULL, 2, 3, '100003', 'data.desensitization.strategy.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12003', '120', NULL, '删除', NULL, 3, 3, '100003', 'data.desensitization.strategy.delete', 'F', NULL);
-- endregion
-- region 脱敏策略结果
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('121', '0', '/data-desensitization-result', '脱敏策略结果-todo', '/misc/data-desensitization-result/index', 121, 2, '100002', 'data.desensitization.result.list', 'T', 'Star');
-- endregion
-- region 关键岗位责任人
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('122', '0', '/key-position-person', '关键岗位责任人-todo', '/misc/key-position-person/index', 122, 2, '100002', 'key.position.person.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12201', '122', NULL, '新增', NULL, 1, 3, '100003', 'key.position.person.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12202', '122', NULL, '编辑', NULL, 2, 3, '100003', 'key.position.person.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12203', '122', NULL, '删除', NULL, 3, 3, '100003', 'key.position.person.delete', 'F', NULL);
-- endregion
-- region 生命周期策略
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('123', '0', '/full-life-cycle-strategy', '生命周期策略', '/misc/full-life-cycle-strategy/index', 123, 2, '100002', 'full.life.cycle.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12301', '123', NULL, '新增', NULL, 1, 3, '100003', 'full.life.cycle.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12302', '123', NULL, '编辑', NULL, 2, 3, '100003', 'full.life.cycle.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12303', '123', NULL, '删除', NULL, 3, 3, '100003', 'full.life.cycle.delete', 'F', NULL);
-- endregion
-- region 生命周期标识
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('124', '0', '/life-cycle-mark', '404-delay', '/misc/life-cycle-mark/index', 9124, 2, '100002', 'life.cycle.mark.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12401', '124', NULL, '新增', NULL, 1, 3, '100003', 'life.cycle.mark.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12402', '124', NULL, '编辑', NULL, 2, 3, '100003', 'life.cycle.mark.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12403', '124', NULL, '删除', NULL, 3, 3, '100003', 'life.cycle.mark.delete', 'F', NULL);
-- endregion
-- region 未知数据资产白名单
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('125', '0', '/unknown-data-asset-whitelist', '未知数据资产白名单', '/misc/unknown-data-asset-whitelist/index', 125, 2, '100002', 'unknown.data.asset.whitelist.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12501', '125', NULL, '新增', NULL, 1, 3, '100003', 'unknown.data.asset.whitelist.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12502', '125', NULL, '编辑', NULL, 2, 3, '100003', 'unknown.data.asset.whitelist.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12503', '125', NULL, '删除', NULL, 3, 3, '100003', 'unknown.data.asset.whitelist.delete', 'F', NULL);
-- endregion
-- region 资产管理审批
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('126', '0', '/asset-manage-approve', '资产管理审批-delay', '/misc/asset-manage-approve/index', 9126, 2, '100002', 'asset.manage.approve.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12601', '126', NULL, '新增', NULL, 1, 3, '100003', 'asset.manage.approve.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12602', '126', NULL, '编辑', NULL, 2, 3, '100003', 'asset.manage.approve.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12603', '126', NULL, '删除', NULL, 3, 3, '100003', 'asset.manage.approve.delete', 'F', NULL);
-- endregion
-- endregion

-- region 分类分级
-- region 特征管理
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('127', '04', '/classify-feature', '特征管理', '/classify/feature/index', 927, 2, '100002', 'classify.feature.list', 'T', 'Star');
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12701', '127', NULL, '新增', NULL, 1, 3, '100003', 'classify.feature.create', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12702', '127', NULL, '编辑', NULL, 2, 3, '100003', 'classify.feature.update', 'F', NULL);
INSERT INTO sys_menu ("id", "pid", "path", "title", "component", "sort", "deep", "menu_type_cd", "permissions", "has_children", "icon")
VALUES ('12703', '127', NULL, '删除', NULL, 3, 3, '100003', 'classify.feature.delete', 'F', NULL);
-- endregion
-- endregion
















TRUNCATE sys_role_menu;
INSERT INTO sys_role_menu ("menu_id", "role_id", "tenant_id") SELECT id,'1','1' FROM sys_menu ORDER BY id;