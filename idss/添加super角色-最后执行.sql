-- 增加super账号
DELETE FROM ums_sys_role WHERE id = 1;
INSERT INTO ums_sys_role (role_id, role_name, role_describe, builtin, del_flag, create_user, create_date, update_user, update_date, is_admin, role_resource_search_limit, user_resource_search_limit, type, role_type, tenant_id, id, visible) VALUES ('1', '系统管理员', '原superadmin和superbuz功能合并', 1, 0, '', '', '', 1745996731613, '1', 0, 0, '', 'system', 0, 1, '');
DELETE FROM ums_sys_user WHERE user_id = 1;
INSERT INTO ums_sys_user (user_id, dept_id, department_id, user_name, password, password_old, period_from, period_to, status, real_name, code, sex, telephone, email, lant_id, leader, login_voucher, fail_count, lock_date, final_login_ip, final_login_date, builtin, security_code, remark, del_flag, tenant_id, queue, create_user, create_date, update_user, update_date, social_account, first_login_fail_time, is_first_login, is_need_update_password, default_router_id, default_router_name, mobile, dept_name, last_update_password_time, default_dashboard, data_limit_extend_role_id, fa_extend_info, sub_account_id, edit_delete, editor_note, ext_info, dsmc_dept_id) VALUES (1, '', '', 'super', '9d8df8acf1ee2d6f379470fc125cd539', '', 1745942400000, 4102502399000, 0, '', '', '', '', '', '', '', '', 0, '', '192.168.30.66', 1746514953179, 1, '', '系统管理员', 0, 0, '', '', '', 'System', 1746514953179, '', '', '', '', 'sys-tenant', '租户管理', '', '', '2025-04-30 14:11:49', '', '', '', '', 0, '', '', '');
DELETE FROM ums_sys_user_role WHERE user_id = 1;
INSERT INTO ums_sys_user_role (user_role_id, user_id, role_id, create_user, create_date, update_user, update_date) VALUES (1, 1, '1', NULL, NULL, NULL, NULL);

-- super菜单授权
DELETE FROM ums_sys_role_function WHERE role_id = 1;
INSERT INTO ums_sys_role_function (role_id, function_id, value)
SELECT 1, menu_code, 15 FROM ums_sys_menus WHERE status = 1 AND menu_type = 'system' OR menu_code = 'base' OR menu_code = 'dsm_web';

-- admin1菜单授权，如果要给admin2授权，就把SQL语句里的2处admin1改成admin2
DELETE FROM ums_sys_role_function WHERE role_id = (SELECT role_id FROM sys_user_role WHERE user_id = (SELECT user_id FROM ums_sys_user WHERE user_name = 'admin1'));
INSERT INTO ums_sys_role_function (role_id, function_id, value)
SELECT (SELECT role_id FROM sys_user_role WHERE user_id = (SELECT user_id FROM ums_sys_user WHERE user_name = 'admin1')), menu_code, 15 FROM ums_sys_menus WHERE status = 1 AND menu_type = 'builtIn'

