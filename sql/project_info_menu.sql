-- 项目管理菜单
-- 执行后重新登录，左侧菜单会出现：项目管理 / 项目列表

INSERT INTO sys_menu
(menu_id, menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
VALUES
(2000, '项目管理', 0, 5, 'project', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tree-table', 'admin', NOW(), '', NULL, '项目管理目录')
ON DUPLICATE KEY UPDATE
menu_name = VALUES(menu_name), parent_id = VALUES(parent_id), order_num = VALUES(order_num), path = VALUES(path),
component = VALUES(component), menu_type = VALUES(menu_type), visible = VALUES(visible), status = VALUES(status),
perms = VALUES(perms), icon = VALUES(icon), update_time = NOW();

INSERT INTO sys_menu
(menu_id, menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
VALUES
(2001, '项目列表', 2000, 1, 'info', 'project/info/index', '', '', 1, 0, 'C', '0', '0', 'project:info:list', 'list', 'admin', NOW(), '', NULL, '项目列表菜单')
ON DUPLICATE KEY UPDATE
menu_name = VALUES(menu_name), parent_id = VALUES(parent_id), order_num = VALUES(order_num), path = VALUES(path),
component = VALUES(component), menu_type = VALUES(menu_type), visible = VALUES(visible), status = VALUES(status),
perms = VALUES(perms), icon = VALUES(icon), update_time = NOW();

INSERT INTO sys_menu
(menu_id, menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
VALUES
(2002, '项目查询', 2001, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'project:info:query', '#', 'admin', NOW(), '', NULL, ''),
(2003, '项目新增', 2001, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'project:info:add', '#', 'admin', NOW(), '', NULL, ''),
(2004, '项目修改', 2001, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'project:info:edit', '#', 'admin', NOW(), '', NULL, ''),
(2005, '项目删除', 2001, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'project:info:remove', '#', 'admin', NOW(), '', NULL, ''),
(2006, '项目导出', 2001, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'project:info:export', '#', 'admin', NOW(), '', NULL, '')
ON DUPLICATE KEY UPDATE
menu_name = VALUES(menu_name), parent_id = VALUES(parent_id), order_num = VALUES(order_num), path = VALUES(path),
component = VALUES(component), menu_type = VALUES(menu_type), visible = VALUES(visible), status = VALUES(status),
perms = VALUES(perms), icon = VALUES(icon), update_time = NOW();
