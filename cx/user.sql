TRUNCATE sys_tenant_package, sys_tenant, sys_role, sys_user, sys_user_role;

-- 租户套餐
INSERT INTO sys_tenant_package ("package_id", "package_name")
VALUES ('1', '默认租户套餐');

-- 租户
INSERT INTO sys_tenant ("id", "company_name", "package_id", "status")
VALUES ('1', '默认租户', '1', '102001');

-- 角色
INSERT INTO sys_role ("id", "role_name", "permissions", "tenant_id")
VALUES ('1', '系统管理员', 'root', '1');
INSERT INTO sys_role ("id", "role_name", "permissions", "tenant_id")
VALUES ('2', '租户管理员', '114001', '1');

-- 用户
INSERT INTO sys_user ("id", "username", "pwd", "nickname", "account_status_cd", "tenant_id")
VALUES ('1', 'root', '$2a$10$lv0HmNLnLrKzfzrFNWc.ku3MFBM5.XsPvTdbz71gLogv.mSbvDN5S', '系统管理员', '102001', '1');
INSERT INTO sys_user ("id", "username", "pwd", "nickname", "account_status_cd", "tenant_id")
VALUES ('2', 'admin', '$2a$10$lv0HmNLnLrKzfzrFNWc.ku3MFBM5.XsPvTdbz71gLogv.mSbvDN5S', '租户管理员', '102001', '1');

INSERT INTO sys_user_role ("id", "role_id", "user_id")
VALUES ('1', '1', '1');
INSERT INTO sys_user_role ("id", "role_id", "user_id")
VALUES ('2', '2', '2');
