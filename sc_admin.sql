/*
 Navicat Premium Data Transfer

 Source Server         : flowable
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : sc_admin

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 02/09/2020 11:05:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for groupd
-- ----------------------------
DROP TABLE IF EXISTS `groupd`;
CREATE TABLE `groupd`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组父id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户组名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `order_num` tinyint(0) NULL DEFAULT NULL COMMENT '显示顺序',
  `leader` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门照片',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groupd
-- ----------------------------
INSERT INTO `groupd` VALUES ('101', '-1', '总公司', '总公司', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 18:41:24', 'system', 'system');
INSERT INTO `groupd` VALUES ('1011', '102', '上海分公司', '上海分公司', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:55:34', '2020-07-13 21:58:52', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('10111', '1011', '上海浦东分公司', '上海浦东分公司', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:57:48', '2020-07-13 21:59:17', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('102', '101', '上海分部', '上海分部是集团重要的组成部分', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 21:37:07', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('103', '10111', '研发部门', '负责产品研发', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 22:00:12', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('104', '10111', '产品部门', '负责产品设计', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 22:00:22', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('105', '10111', '运营部门', '负责公司产品运营', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 22:00:26', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('106', '10111', '销售部门', '负责公司产品销售', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 22:00:31', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('107', '101', '北京分部', '北京分部', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 18:41:24', '2020-07-13 21:38:41', 'system', 'zengjian');
INSERT INTO `groupd` VALUES ('108', '107', '研发部门', '负责产品的研发', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 20:48:05', '2020-07-13 21:23:14', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('109', '107', '销售部门', '负责产品的销售', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:00:38', '2020-07-13 21:00:38', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('301', '101', '广东分部', '广东分部是集团内部实力强悍，创新能力一流的分部', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:34:14', '2020-07-13 21:39:37', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('3011', '301', '广州分部', '广州分部实力一流', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:35:32', '2020-07-13 21:48:04', 'zengjian', 'zengjian');
INSERT INTO `groupd` VALUES ('30111', '3011', '缀术科技', '缀术科技主要负责智能监测平台的研发', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:46:55', '2020-08-10 19:53:45', 'zengjian', 'admin');
INSERT INTO `groupd` VALUES ('3012', '301', '深圳分公司', '深圳分公司是广东范围内创新能力最强的分公司', 'N', NULL, NULL, NULL, NULL, NULL, '2020-07-13 21:44:50', '2020-07-13 21:44:50', 'zengjian', 'zengjian');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  `deleted` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for item_project_department_relation
-- ----------------------------
DROP TABLE IF EXISTS `item_project_department_relation`;
CREATE TABLE `item_project_department_relation`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关系id',
  `project_department_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目部id',
  `item_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_project_department_relation
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '父菜单id',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单类型',
  `href` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('101', '-1', 'MENU', '/admin', 'setting', '系统管理', '系统设置管理', 0, '2020-07-13 18:16:09', '2020-07-13 18:16:09', 'system', 'system');
INSERT INTO `menu` VALUES ('102', '101', 'MENU', '/admin/users', 'fa-user', '用户管理', '用户新增，修改，查看，删除', 0, '2020-07-13 18:16:09', '2020-07-15 17:30:58', 'system', 'zengjian');
INSERT INTO `menu` VALUES ('103', '101', 'MENU', '/admin/menus', 'category', '菜单管理', '菜单新增，修改，删除', 20, '2020-07-13 18:16:09', '2020-07-13 18:16:09', 'system', 'system');
INSERT INTO `menu` VALUES ('1283342607136612353', '101', 'MENU', '/position', 'setting', '职位管理', '职位管理', 0, '2020-07-15 18:08:16', '2020-07-15 18:08:16', 'zengjian', 'zengjian');
INSERT INTO `menu` VALUES ('1283959305078427649', '101', 'MENU', '/group', 'setting', '组织管理', '系统组织管理', 0, '2020-07-17 10:58:48', '2020-07-17 10:58:48', 'fengrongsheng', 'fengrongsheng');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `deleted` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('101', '后端工程师', '负责公司后端开发', 'N', '2020-06-24 16:53:57', '2020-08-10 19:54:38', 'system', 'admin');
INSERT INTO `position` VALUES ('102', '运维工程师', '负责公司软件的运维', 'N', '2020-06-24 16:53:57', '2020-08-10 19:55:09', 'system', 'admin');
INSERT INTO `position` VALUES ('103', '人事经理', '管理公司人事', 'N', '2020-06-24 16:53:57', '2020-08-10 19:56:20', 'system', 'admin');
INSERT INTO `position` VALUES ('1283296507864289282', '测绘工程师', '负责项目测绘', 'N', '2020-07-15 15:05:05', '2020-08-10 19:56:49', 'admin', 'admin');
INSERT INTO `position` VALUES ('1283298141415673858', '产品经理', '负责软件项目产品设计', 'N', '2020-07-15 15:11:34', '2020-08-10 19:57:19', 'admin', 'admin');
INSERT INTO `position` VALUES ('1283332848824115202', '前端工程师', '负责项目前端开发', 'N', '2020-07-15 17:29:29', '2020-07-15 17:29:40', 'zengjian', 'zengjian');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工程id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工程名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工程描述',
  `deleted` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for project_department
-- ----------------------------
DROP TABLE IF EXISTS `project_department`;
CREATE TABLE `project_department`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目部id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目部名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目部描述',
  `deleted` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_department
-- ----------------------------

-- ----------------------------
-- Table structure for project_item_relation
-- ----------------------------
DROP TABLE IF EXISTS `project_item_relation`;
CREATE TABLE `project_item_relation`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关系id',
  `item_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目id',
  `project_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工程id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_item_relation
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源id',
  `parent_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '父id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源code',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源类型',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源url',
  `method` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源方法',
  `menu_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单类型（C目录 M菜单 B按钮）',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `is_frame` tinyint(1) NULL DEFAULT 0 COMMENT '是否外链（是 1  否 0）',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '菜单状态（1正常 0停用）',
  `visible` tinyint(1) NULL DEFAULT 1 COMMENT '菜单显隐（1显示 0隐藏）',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '显示顺序',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_resource_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '-1', '资源管理', 'all', 'all', '/resourceAdministration', '/', NULL, NULL, '资源管理', 0, 1, 1, 'N', '2020-07-18 23:58:21', '2020-07-19 21:10:09', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('101', '1284838256529137665', '新增用户', 'user_manager:btn_add', 'user', '/user', 'POST', NULL, NULL, '新增用户功能a', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:12:06', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('102', '1284838256529137665', '编辑用户', 'user_manager:btn_edit', 'user', '/user/{id}', 'PUT', NULL, NULL, '编辑用户功能', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:12:35', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('103', '1284838256529137665', '删除用户', 'user_manager:btn_del', 'user', '/user/{id}', 'DELETE', NULL, NULL, '根据用户id删除用户', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:12:45', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('104', '1284838256529137665', '查看用户', 'user_manager:view', 'user', '/user/{id}', 'GET', NULL, NULL, '根据用户id获取用户', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:12:54', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('105', '1284838256529137665', '搜索用户', 'user_manager:query', 'user', '/user/conditions', 'POST', NULL, NULL, '根据条件查询用户', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:13:02', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('106', '1284838256529137665', '获取用户', 'user_manager:get', 'user', '/user', 'GET', NULL, NULL, '根据唯一标识获取用户', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:13:11', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281526354961100801', '1284839368690786305', '新增tea', 'tea_manager:add', 'tea', '/tea', 'POST', NULL, NULL, '新增tea', 0, 1, 1, 'N', '2020-07-10 17:51:07', '2020-07-19 21:16:12', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281526648008732674', '1284839368690786305', '编辑tea', 'tea_manager:edit', 'tea', '/tea/{id}', 'PUT', NULL, NULL, '编辑tea', 0, 1, 1, 'N', '2020-07-10 17:52:17', '2020-07-19 21:16:33', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281526913311043585', '1284839368690786305', '删除tea', 'tea_manager:del', 'tea', '/tea/{id}', 'DELETE', NULL, NULL, '删除teafddffdgdasf', 0, 1, 1, 'N', '2020-07-10 17:53:20', '2020-07-19 21:16:43', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281527147399344129', '1284839368690786305', '查看tea', 'tea_manager:view', 'tea', '/tea/{id}', 'GET', NULL, NULL, '查看tea', 0, 1, 1, 'N', '2020-07-10 17:54:16', '2020-07-19 21:16:51', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281527423489404930', '1284839368690786305', '搜索tea', 'tea_manager:query', 'tea', '/tea/conditions', 'POST', NULL, NULL, '搜索tea', 0, 1, 1, 'N', '2020-07-10 17:55:22', '2020-07-20 18:49:32', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1281528200064790530', '1284839368690786305', '获取所有tea', 'tea_manager:all', 'tea', '/tea/all', 'GET', NULL, NULL, '获取所有tea', 0, 1, 1, 'N', '2020-07-10 17:58:27', '2020-07-19 21:17:10', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282690075083259905', '1284844738142298114', '根据父id查询菜单', 'menu_manager:parent', 'menu', '/menu/parent/{id}', 'GET', NULL, NULL, '根据父id查询菜单', 0, 1, 1, 'N', '2020-07-13 22:55:20', '2020-07-19 21:39:47', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282690592811368450', '1284844738142298114', '查看菜单', 'menu_manager:get', 'menu', '/menu/{id}', 'GET', NULL, NULL, '根据id查看菜单', 0, 1, 1, 'N', '2020-07-13 22:57:23', '2020-07-19 21:37:26', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282691124124827649', '1284844738142298114', '搜索菜单', 'menu_manager:query', 'menu', '/menu/conditions', 'POST', NULL, NULL, '根据条件查询菜单信息', 0, 1, 1, 'N', '2020-07-13 22:59:30', '2020-07-19 21:37:39', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282691496780349442', '1284844738142298114', '删除菜单', 'menu_manager:del', 'menu', '/menu/{id}', 'DELETE', NULL, NULL, '根据id删除菜单', 0, 1, 1, 'N', '2020-07-13 23:00:59', '2020-07-19 21:37:51', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282691815530676225', '1284844738142298114', '编辑菜单', 'menu_manager:edit', 'menu', '/menu/{id}', 'PUT', NULL, NULL, '编辑菜单', 0, 1, 1, 'N', '2020-07-13 23:02:15', '2020-07-19 21:38:07', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282693893455986690', '1284844738142298114', '新增菜单', 'menu_manager:add', 'menu', '/menu', 'POST', NULL, NULL, '新增菜单', 0, 1, 1, 'N', '2020-07-13 23:10:30', '2020-07-19 21:38:17', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282694721864581122', '1284840598779486209', '新增岗位', 'position_manager:btn_add', 'position', '/position', 'POST', NULL, NULL, '新增岗位', 0, 1, 1, 'N', '2020-07-13 23:13:48', '2020-07-19 21:22:09', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282695381360164866', '1284840598779486209', '编辑岗位', 'position_manager:btn_edit', 'position', '/position/{id}', 'PUT', NULL, NULL, '编辑岗位功能', 0, 1, 1, 'N', '2020-07-13 23:16:25', '2020-07-19 21:22:20', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282695809753792513', '1284840598779486209', '删除岗位', 'position_manager:btn_del', 'position', '/position/{id}', 'DELETE', NULL, NULL, '根据id删除岗位信息', 0, 1, 1, 'N', '2020-07-13 23:18:07', '2020-07-19 21:22:37', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282696275397033986', '1284840598779486209', '查看岗位信息', 'position_manager:view', 'position', '/position/{id}', 'GET', NULL, NULL, '根据id获取岗位信息', 0, 1, 1, 'N', '2020-07-13 23:19:58', '2020-07-19 21:21:02', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282697029075714049', '1284840598779486209', '根据用户id查询岗位', 'position_manager:user', 'position', '/position/user/{userId}', 'GET', NULL, NULL, '根据用户id获取用户拥有的岗位信息集', 0, 1, 1, 'N', '2020-07-13 23:22:58', '2020-07-19 21:21:15', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282697388863111170', '1284840598779486209', '获取所有岗位', 'positin_manager:all', 'position', '/position/all', 'GET', NULL, NULL, '获取所有岗位', 0, 1, 1, 'N', '2020-07-13 23:24:24', '2020-07-19 21:21:33', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1282698339523084289', '1284840598779486209', '搜索岗位信息', 'position_manager:query', 'position', '/position/conditions', 'POST', NULL, NULL, '根据条件搜索岗位信息', 0, 1, 1, 'N', '2020-07-13 23:28:10', '2020-07-19 21:21:42', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1283046453295558658', '1284840598779486209', '查询岗位', 'position_manager:get', 'position', '/position', 'GET', NULL, NULL, '查询岗位', 0, 1, 1, 'N', '2020-07-14 22:31:27', '2020-07-19 21:21:51', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1283302106563874817', '1284842783294644225', '查看用户组织', 'group_manager:see', 'group', '/group', 'GET', NULL, NULL, '根据条件查询用户组织信息，简单查询', 0, 1, 1, 'N', '2020-07-15 15:27:19', '2020-07-19 21:38:46', 'zengjian', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1283752978595037186', '1284842783294644225', '获取所有组织', 'group_manager:all', 'group', '/group/all', 'GET', NULL, NULL, '获取所有组织', 0, 1, 1, 'N', '2020-07-16 21:18:56', '2020-07-19 21:38:56', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284521899698688001', '1284843658289373185', '根据父id查询资源组', 'resource_manager:parent', 'resource', '/resource/parent/{id}', 'GET', NULL, NULL, '根据父id查询资源组', 0, 1, 1, 'N', '2020-07-19 00:14:21', '2020-07-19 21:34:01', 'liqiang', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284838256529137665', '1284849788033982465', '用户管理', 'user', 'user', '/userManagement', '/', NULL, NULL, '用户管理的资源根目录', 0, 1, 1, 'N', '2020-07-19 21:11:26', '2020-07-19 21:57:42', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284839368690786305', '1284847575056277505', 'tea管理', 'tea', 'tea', '/teaManagement', '/', NULL, NULL, '测试单个微服务tea的各种接口', 0, 1, 1, 'N', '2020-07-19 21:15:51', '2020-07-19 21:49:14', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284839947097890817', '1284849788033982465', '角色管理', 'role', 'role', '/roleManagement ', '/', NULL, NULL, '角色管理', 0, 1, 1, 'N', '2020-07-19 21:18:09', '2020-07-19 21:58:22', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284840598779486209', '1284849788033982465', '岗位管理', 'position', 'position', '/postManagement', '/', NULL, NULL, '岗位管理根目录', 0, 1, 1, 'N', '2020-07-19 21:20:45', '2020-07-19 21:58:44', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284841296862666753', '1284847575056277505', 'shop管理', 'shop', 'shop', '/shopManagement', '/', NULL, NULL, 'shop管理', 0, 1, 1, 'N', '2020-07-19 21:23:31', '2020-07-19 21:49:04', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284841798987964418', '1284849788033982465', '网关管理', 'gateway', 'gateway', '/theGatewayManagement', '/', NULL, NULL, '网关管理', 0, 1, 1, 'N', '2020-07-19 21:25:31', '2020-07-19 21:58:51', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284842783294644225', '1284849788033982465', '组织管理', 'group', 'group', '/organizationalManagement ', '/', NULL, NULL, '组织管理', 0, 1, 1, 'N', '2020-07-19 21:29:25', '2020-07-19 21:59:01', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284843658289373185', '1284849788033982465', '路由管理', 'resource', 'resource', '/routingManagement', '/', NULL, NULL, '路由管理', 0, 1, 1, 'N', '2020-07-19 21:32:54', '2020-07-19 21:59:10', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284844422772580353', '1284847575056277505', '产品管理', 'product', 'product', '/productManagement ', '/', NULL, NULL, '产品管理', 0, 1, 1, 'N', '2020-07-19 21:35:56', '2020-07-19 21:48:51', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284844738142298114', '1284849788033982465', '菜单管理', 'menu', 'menu', '/menuManagement', '/', NULL, NULL, '菜单管理', 0, 1, 1, 'N', '2020-07-19 21:37:11', '2020-07-19 21:59:18', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284847575056277505', '1', '测试用例', 'demo', 'demo', '/testCase', '/', NULL, NULL, '测试用例，不作为项目代码', 0, 1, 1, 'N', '2020-07-19 21:48:28', '2020-07-19 21:48:28', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284849788033982465', '1', '开发人员', 'programmer', 'programmer', '/developer', '/', NULL, NULL, '针对开发人员的管理', 0, 1, 1, 'N', '2020-07-19 21:57:15', '2020-07-19 21:57:15', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1284850891022688257', '1', '人力资源项目', 'HumanResourceManagement', 'HumanResourceManagement', '/humanResourcesProject', '/', NULL, NULL, '人力资源项目相关路由', 0, 1, 1, 'N', '2020-07-19 22:01:38', '2020-07-19 22:15:31', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290189749922848769', '1284838256529137665', '修改用户状态', 'user_management:putEnabled', 'user', '/user/changeEnabled', '选项4', NULL, NULL, '修改用户状态', 0, 1, 1, 'N', '2020-08-03 15:36:22', '2020-08-03 15:36:22', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290264087657218049', '1284838256529137665', '获取当前用户信息', 'user_management:profile', 'user', '/user/profile', '选项2', NULL, NULL, '获取当前用户信息', 0, 1, 1, 'N', '2020-08-03 20:31:45', '2020-08-03 20:35:30', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290267473043550209', '1284838256529137665', '用户信息', 'user_management:profiles', 'authenticationserver', '/actuator/profile', '选项2', NULL, NULL, '用户信息', 0, 1, 1, 'N', '2020-08-03 20:45:12', '2020-08-03 21:43:38', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290655046224179202', '1284838256529137665', '修改密码', 'user_management:pwd', 'user', '/user/updatePwd', '选项4', NULL, NULL, '修改密码', 0, 1, 1, 'N', '2020-08-04 22:25:17', '2020-08-04 22:25:17', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290672359795187713', '1284838256529137665', '修改用户基本信息', 'user_management:putbasic', 'user', '/user/basic/{id}', '选项4', NULL, NULL, '修改用户基本信息', 0, 1, 1, 'N', '2020-08-04 23:34:05', '2020-08-05 10:30:31', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1290838227246145537', '1284839947097890817', '修改角色状态', 'role_management:changeEnabled', 'role', '/role/changeEnabled', '选项4', NULL, NULL, '修改角色状态', 0, 1, 1, 'N', '2020-08-05 10:33:11', '2020-08-05 10:33:11', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1292455858382348290', '1284838256529137665', '获取图片', 'user_management:img', 'user', '/avatar/**', '选项2', NULL, NULL, '获取图片', 0, 1, 1, 'N', '2020-08-09 21:41:04', '2020-08-09 21:45:50', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('1292749608304357378', '1284838256529137665', '上传头像', 'user_management:avatar', 'user', '/user/avatar', '选项3', NULL, NULL, '上传头像', 0, 1, 1, 'N', '2020-08-10 17:08:19', '2020-08-10 17:08:19', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('201', '1284839947097890817', '新增角色', 'role_manager:btn_add', 'role', '/role', 'POST', NULL, NULL, '新增角色功能', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:18:25', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('202', '1284839947097890817', '编辑角色', 'role_manager:btn_edit', 'role', '/role/{id}', 'PUT', NULL, NULL, '编辑角色功能', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:18:34', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('203', '1284839947097890817', '删除角色', 'role_manager:btn_del', 'role', '/role/{id}', 'DELETE', NULL, NULL, '根据id删除角色', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:18:43', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('204', '1284839947097890817', '查看角色', 'role_manager:view', 'role', '/role/{id}', 'GET', NULL, NULL, '根据id获取角色', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:18:49', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('205', '1284839947097890817', '根据用户id查询角色', 'role_manager:user', 'role', '/role/user/{userId}', 'GET', NULL, NULL, '根据用户id获取用户所拥有的角色集', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:18:58', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('206', '1284839947097890817', '获取所有角色', 'role_manager:all', 'role', '/role/all', 'GET', NULL, NULL, '获取所有角色', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:19:08', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('207', '1284839947097890817', '搜索角色', 'role_manager:query', 'role', '/role/conditions', 'POST', NULL, NULL, '根据条件查询角色', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:19:45', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('208', '1284839947097890817', '测试外部接口', 'role_manager:get', 'role', '/role', 'GET', NULL, NULL, '测试外部接口', 0, 1, 1, 'N', '2020-07-07 14:12:54', '2020-07-19 21:35:03', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('301', '1284842783294644225', '根据父id查询组织', 'group_manager:parent', 'group', '/group/parent/{id}', 'GET', NULL, NULL, '根据父id查询用户组织', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:31:39', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('302', '1284842783294644225', '查看用户组织', 'group_manager:get', 'group', '/group/{id}', 'GET', NULL, NULL, '根据id查询用户组织', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:29:45', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('303', '1284842783294644225', '搜索用户组织', 'group_manager:query', 'group', '/group/conditions', 'POST', NULL, NULL, '根据条件查询用户组织信息', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:29:57', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('304', '1284842783294644225', '删除用户组织', 'group_manager:del', 'group', '/group/{id}', 'DELETE', NULL, NULL, '根据用户id删除用户组织', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:30:11', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('305', '1284842783294644225', '编辑用户组织', 'group_manager:edit', 'group', '/group/{id}', 'PUT', NULL, NULL, '修改用户组织', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:30:20', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('306', '1284842783294644225', '新增用户组织', 'group_manager:add', 'group', '/group', 'POST', NULL, NULL, '新增用户组织', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:30:30', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('307', '1284841798987964418', '新增网关路由', 'gateway_manager:add', 'gateway', '/gateway/routes', 'POST', NULL, NULL, '新增网关路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:27:09', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('308', '1284841798987964418', '修改网关路由', 'gateway_manager:edit', 'gateway', '/gateway/routes/{id}', 'PUT', NULL, NULL, '修改网关路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:27:03', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('309', '1284841798987964418', '删除网关路由', 'gateway_manager:adel', 'gateway', '/gateway/routes/{id}', 'DELETE', NULL, NULL, '删除网关路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:57', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('310', '1284841798987964418', '查看网关路由', 'gateway_manager:view', 'gateway', '/gateway/routes/{id}', 'GET', NULL, NULL, '查看网关路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:49', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('311', '1284841798987964418', '搜索网关路由', 'gateway_manager:query', 'gateway', '/gateway/routes/conditions', 'POST', NULL, NULL, '搜索网关路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:40', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('312', '1284843658289373185', '全局加载路由', 'gateway_manager:overload', 'gateway', '/gateway/routes/overload', 'POST', NULL, NULL, '全局加载路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:33:30', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('313', '1284841798987964418', '新增网关路由', 'resource_manager:add', 'resource', '/resource', 'POST', NULL, NULL, '新增资源路由', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:25:45', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('314', '1284841798987964418', '修改网关路由', 'resource_manager:edit', 'resource', '/resource/{id}', 'PUT', NULL, NULL, '修改资源', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:25:57', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('315', '1284841798987964418', '删除网关路由', 'resource_manager:adel', 'resource', '/resource/{id}', 'DELETE', NULL, NULL, '删除资源', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:08', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('316', '1284841798987964418', '查看网关路由', 'resource_manager:view', 'resource', '/resource/{id}', 'GET', NULL, NULL, '查看资源', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:18', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('317', '1284841798987964418', '搜索网关路由', 'resource_manager:query', 'resource', '/resource/conditions', 'POST', NULL, NULL, '搜索资源', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:26:25', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('318', '1284843658289373185', '全局加载路由', 'resource_manager:all', 'resource', '/resource/all', 'GET', NULL, NULL, '查询全部资源', 0, 1, 1, 'N', '2020-06-24 16:53:56', '2020-07-19 21:33:18', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('319', '1284843658289373185', '查询资源路由', 'resource_manager:get', 'resource', '/resource/user/{username}', 'GET', NULL, NULL, '查询资源路由', 0, 1, 1, 'N', '2020-07-07 15:56:19', '2020-07-19 21:33:08', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('401', '1284841296862666753', '测试新增shop接口', 'shop_manager:add', 'shop', '/shop', 'POST', NULL, NULL, '测试新增shop接口', 0, 1, 1, 'N', '2020-07-07 18:05:18', '2020-07-19 21:23:46', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('402', '1284841296862666753', '测试修改shop接口', 'shop_manager:edit', 'shop', '/shop/{id}', 'PUT', NULL, NULL, '测试修改shop接口', 0, 1, 1, 'N', '2020-07-07 18:07:17', '2020-07-19 21:23:54', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('403', '1284841296862666753', '测试删除shop接口', 'shop_manager:adel', 'shop', '/shop/{id}', 'DELETE', NULL, NULL, '测试删除shop接口', 0, 1, 1, 'N', '2020-07-07 18:02:00', '2020-07-19 21:24:06', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('404', '1284841296862666753', '测试查看shop接口', 'shop_manager:view', 'shop', '/shop/{id}', 'GET', NULL, NULL, '测试查看shop接口', 0, 1, 1, 'N', '2020-07-07 17:59:30', '2020-07-19 21:24:14', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('405', '1284841296862666753', '测试搜索shop接口', 'shop_manager:query', 'shop', '/shop/conditions', 'POST', NULL, NULL, '测试搜索shop接口', 0, 1, 1, 'N', '2020-07-07 09:10:35', '2020-07-19 21:24:21', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('406', '1284841296862666753', '测试全局加载shop接口', 'shop_manager:all', 'shop', '/shop/all', 'GET', NULL, NULL, '测试全局加载shop接口', 0, 1, 1, 'N', '2020-07-07 16:27:47', '2020-07-19 21:24:33', 'system', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `resource` VALUES ('501', '1284844422772580353', '获取产品信息', 'producer_manager:get', 'producer', '/products', 'GET', NULL, NULL, '产品测试接口', 0, 1, 1, 'Y', '2020-07-07 22:24:30', '2020-07-19 21:36:36', 'system', 'admin', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for role_groupd_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_groupd_relation`;
CREATE TABLE `role_groupd_relation`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `role_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupd_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_time` datetime(0) NOT NULL COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_groupd_relation
-- ----------------------------
INSERT INTO `role_groupd_relation` VALUES ('1293207507061248001', '1284060496206516226', '1290655046224179202', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507061248002', '1284060496206516226', '1290267473043550209', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507061248003', '1284060496206516226', '1292749608304357378', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507069636610', '1284060496206516226', '1290672359795187713', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507069636611', '1284060496206516226', '106', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025217', '1284060496206516226', '1290189749922848769', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025218', '1284060496206516226', '102', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025219', '1284060496206516226', '104', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025220', '1284060496206516226', '1290264087657218049', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025221', '1284060496206516226', '105', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');
INSERT INTO `role_groupd_relation` VALUES ('1293207507078025222', '1284060496206516226', '1292455858382348290', '2020-08-11 23:27:51', '2020-08-11 23:27:51', 'admin', 'admin');

-- ----------------------------
-- Table structure for role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_relation`;
CREATE TABLE `role_menu_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `menu_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_menu_relation
-- ----------------------------

-- ----------------------------
-- Table structure for role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_relation`;
CREATE TABLE `role_resource_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关系id',
  `resource_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和资源关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_resource_relation
-- ----------------------------
INSERT INTO `role_resource_relation` VALUES ('1285780455072796673', '1282697029075714049', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185282', '1282698339523084289', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185283', '1282696275397033986', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185284', '207', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185285', '208', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185286', '106', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185287', '205', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185288', '206', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185289', '1282697388863111170', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185290', '1283302106563874817', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185291', '101', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455081185292', '104', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573890', '302', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573891', '105', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573892', '204', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573893', '303', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573894', '301', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573895', '1283046453295558658', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1285780455089573896', '1283752978595037186', '1285778438078140418', '2020-07-22 11:35:24', '2020-07-22 11:35:24', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290912587805904897', '1281526913311043585', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587805904898', '1282695809753792513', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587805904899', '1290838227246145537', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587805904900', '1290264087657218049', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587814293506', '1284839947097890817', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587814293507', '1284849788033982465', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587814293508', '1284844738142298114', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587814293509', '308', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587818487809', '1282691124124827649', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587818487810', '309', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587822682114', '1284847575056277505', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587822682115', '106', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587822682116', '304', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876418', '305', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876419', '306', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876420', '1283046453295558658', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876421', '307', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876422', '102', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876423', '1281527423489404930', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876424', '103', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876425', '301', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587826876426', '104', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587835265025', '302', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587835265026', '105', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587835265027', '303', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587835265028', '101', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587835265029', '1281527147399344129', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459330', '1283752978595037186', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459331', '1284844422772580353', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459332', '1282690592811368450', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459333', '1284841296862666753', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459334', '1281528200064790530', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459335', '1282694721864581122', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459336', '1290267473043550209', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459337', '1284842783294644225', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459338', '1282693893455986690', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459339', '1284521899698688001', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587839459340', '1282697029075714049', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847938', '1290655046224179202', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847939', '1290672359795187713', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847940', '1282690075083259905', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847941', '1282691496780349442', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847942', '1284838256529137665', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847943', '1282696275397033986', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847944', '403', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847945', '205', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847946', '404', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587847847947', '206', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236546', '405', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236547', '207', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236548', '1284843658289373185', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236549', '406', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236550', '208', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236551', '201', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236552', '1', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236553', '202', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587856236554', '1284839368690786305', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625153', '401', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625154', '203', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625155', '402', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625156', '204', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625157', '1282697388863111170', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625158', '1281526354961100801', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625159', '1283302106563874817', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625160', '1290189749922848769', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587864625161', '1284850891022688257', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013762', '1282695381360164866', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013763', '1282691815530676225', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013764', '319', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013765', '315', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013766', '1284840598779486209', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013767', '316', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013768', '317', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013769', '318', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013770', '311', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013771', '1282698339523084289', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587873013772', '312', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587881402369', '313', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587881402370', '314', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587881402371', '1284841798987964418', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587881402372', '1281526648008732674', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290912587881402373', '310', '107', '2020-08-05 15:28:40', '2020-08-05 15:28:40', 'zengjian', 'zengjian');
INSERT INTO `role_resource_relation` VALUES ('1290929451466498049', '1282694721864581122', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451479080962', '1282690592811368450', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451483275266', '1290189749922848769', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451483275267', '1284843658289373185', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451491663874', '1282693893455986690', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451495858177', '1284839947097890817', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451495858178', '1290838227246145537', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451495858179', '203', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451504246785', '204', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451504246786', '201', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451512635393', '202', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451516829698', '207', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451521024001', '208', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451521024002', '1282695809753792513', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451521024003', '205', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451529412609', '1284849788033982465', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451529412610', '206', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451533606913', '1284842783294644225', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451533606914', '1290267473043550209', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451533606915', '1284521899698688001', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451541995522', '1283752978595037186', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451541995523', '1282697388863111170', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451546189825', '310', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451546189826', '313', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451546189827', '314', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451546189828', '311', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451546189829', '312', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451554578433', '1282697029075714049', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451554578434', '317', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451554578435', '318', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451558772738', '315', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451558772739', '316', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451558772740', '1282696275397033986', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451558772741', '1283046453295558658', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451558772742', '319', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161346', '1283302106563874817', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161347', '1284844738142298114', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161348', '1282691124124827649', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161349', '1282691496780349442', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161350', '1290672359795187713', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451567161351', '101', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451575549954', '1284838256529137665', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451575549955', '104', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451575549956', '302', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744257', '105', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744258', '303', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744259', '1284841798987964418', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744260', '102', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744261', '103', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744262', '301', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451579744263', '306', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451588132865', '1282698339523084289', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451588132866', '307', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451588132867', '1282691815530676225', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451588132868', '106', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451596521474', '304', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451596521475', '1290655046224179202', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451596521476', '305', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451596521477', '308', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451604910081', '1284840598779486209', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451604910082', '309', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451604910083', '1282695381360164866', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451604910084', '1290264087657218049', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1290929451604910085', '1282690075083259905', '1290839187922202625', '2020-08-05 16:35:40', '2020-08-05 16:35:40', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717456924673', '1281526354961100801', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717465313282', '1290189749922848769', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717469507585', '1282690592811368450', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717469507586', '1283752978595037186', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717469507587', '1284844422772580353', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701889', '1282694721864581122', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701890', '1284841296862666753', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701891', '1282693893455986690', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701892', '1290267473043550209', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701893', '1284842783294644225', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717473701894', '1290655046224179202', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717482090497', '1281526913311043585', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717482090498', '1282695809753792513', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717482090499', '1284838256529137665', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717482090500', '1284843658289373185', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717482090501', '1283046453295558658', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284801', '1284849788033982465', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284802', '1282691124124827649', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284803', '1284847575056277505', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284804', '405', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284805', '207', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717486284806', '406', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717494673410', '208', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717494673411', '401', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717494673412', '203', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717494673413', '402', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717494673414', '204', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867714', '403', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867715', '205', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867716', '1281527423489404930', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867717', '1', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867718', '404', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867719', '206', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867720', '201', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867721', '202', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867722', '1284839368690786305', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717498867723', '1281527147399344129', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717507256321', '1283302106563874817', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717507256322', '1282697388863111170', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717507256323', '1284521899698688001', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717507256324', '1281528200064790530', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717507256325', '1282695381360164866', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450625', '1284850891022688257', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450626', '1292455858382348290', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450627', '1282696275397033986', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450628', '1282691815530676225', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450629', '317', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450630', '318', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450631', '319', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450632', '1284840598779486209', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450633', '313', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450634', '314', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717511450635', '315', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717519839234', '1282698339523084289', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717519839235', '316', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717519839236', '1282697029075714049', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717519839237', '1281526648008732674', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717519839238', '310', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033537', '311', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033538', '312', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033539', '1284841798987964418', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033540', '1290672359795187713', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033541', '1282691496780349442', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033542', '1290838227246145537', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033543', '1290264087657218049', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033544', '1282690075083259905', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717524033545', '1284839947097890817', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717532422146', '1292749608304357378', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717532422147', '1284844738142298114', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717532422148', '306', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717532422149', '307', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717532422150', '308', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616450', '309', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616451', '104', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616452', '302', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616453', '105', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616454', '303', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616455', '106', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616456', '304', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616457', '305', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616458', '101', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616459', '102', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616460', '103', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292749717536616461', '301', '101', '2020-08-10 17:08:45', '2020-08-10 17:08:45', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819847966722', '1284839947097890817', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819860549633', '1282695809753792513', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819860549634', '103', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819860549635', '301', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819860549636', '1284841296862666753', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819860549637', '102', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132545', '1282690592811368450', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132546', '101', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132547', '1290189749922848769', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132548', '1284847575056277505', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132549', '1284844422772580353', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132550', '1282694721864581122', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132551', '1283046453295558658', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132552', '1284844738142298114', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819873132553', '1282691124124827649', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819881521153', '1290838227246145537', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819885715457', '1284850891022688257', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819885715458', '1281527423489404930', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819885715459', '1284839368690786305', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819889909761', '1283752978595037186', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819889909762', '1281528200064790530', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819889909763', '1282693893455986690', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819889909764', '1284849788033982465', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819889909765', '406', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104065', '208', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104066', '1290267473043550209', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104067', '405', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104068', '207', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104069', '404', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104070', '206', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104071', '1281527147399344129', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104072', '403', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104073', '205', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819894104074', '402', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819902492673', '204', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819902492674', '1282697029075714049', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819902492675', '401', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819902492676', '203', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686978', '1284521899698688001', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686979', '1284842783294644225', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686980', '1281526913311043585', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686981', '1281526648008732674', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686982', '1282698339523084289', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686983', '319', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686984', '1290655046224179202', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686985', '318', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686986', '317', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819906686987', '316', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819915075586', '1284841798987964418', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819915075587', '315', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819915075588', '314', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819915075589', '313', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819915075590', '202', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269890', '201', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269891', '1', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269892', '1283302106563874817', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269893', '1284838256529137665', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269894', '1284843658289373185', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269895', '1282691496780349442', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269896', '1282696275397033986', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269897', '1292455858382348290', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269898', '1282695381360164866', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819919269899', '1284840598779486209', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819927658497', '1282697388863111170', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819927658498', '1282691815530676225', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819927658499', '309', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819927658500', '308', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819927658501', '307', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852801', '306', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852802', '305', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852803', '106', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852804', '304', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852805', '1292749608304357378', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852806', '105', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852807', '303', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819931852808', '104', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241410', '302', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241411', '312', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241412', '311', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241413', '310', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241414', '1290672359795187713', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241415', '1281526354961100801', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241416', '1290264087657218049', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756819940241417', '1282690075083259905', '1290929893655191553', '2020-08-10 17:36:59', '2020-08-10 17:36:59', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864030765057', '1290655046224179202', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864039153666', '1282691496780349442', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347969', '404', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347970', '206', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347971', '1284841798987964418', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347972', '403', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347973', '205', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347974', '402', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347975', '204', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347976', '401', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864043347977', '203', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736577', '202', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736578', '201', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736579', '1290672359795187713', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736580', '1', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736581', '1290267473043550209', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736582', '1281526648008732674', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736583', '1282693893455986690', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736584', '319', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736585', '318', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864051736586', '317', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125185', '1284843658289373185', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125186', '1282698339523084289', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125187', '1292455858382348290', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125188', '1284838256529137665', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125189', '1282696275397033986', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125190', '1283302106563874817', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125191', '1281527147399344129', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125192', '1284521899698688001', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125193', '1282690592811368450', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125194', '1283752978595037186', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125195', '1284847575056277505', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864060125196', '1284842783294644225', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513794', '1284839368690786305', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513795', '1281527423489404930', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513796', '1284849788033982465', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513797', '406', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513798', '208', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864068513799', '405', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708097', '207', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708098', '1281528200064790530', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708099', '1281526913311043585', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708100', '1282695809753792513', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708101', '1290838227246145537', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708102', '305', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708103', '106', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708104', '304', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708105', '105', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708106', '303', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708107', '104', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708108', '302', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708109', '103', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864072708110', '301', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096706', '102', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096707', '101', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096708', '1284850891022688257', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096709', '1282697029075714049', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096710', '1283046453295558658', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096711', '1284844738142298114', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096712', '1282691815530676225', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864081096713', '1282691124124827649', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291010', '1282697388863111170', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291011', '1284841296862666753', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291012', '1282694721864581122', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291013', '1284839947097890817', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291014', '1290189749922848769', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291015', '1284844422772580353', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291016', '1281526354961100801', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864085291017', '316', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485314', '315', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485315', '314', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485316', '313', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485317', '312', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485318', '311', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485319', '310', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485320', '1284840598779486209', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485321', '309', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485322', '1292749608304357378', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485323', '308', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485324', '307', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485325', '306', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485326', '1290264087657218049', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864089485327', '1282690075083259905', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1292756864097873922', '1282695381360164866', '1290930097234124802', '2020-08-10 17:37:09', '2020-08-10 17:37:09', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556144033793', '1282697388863111170', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556152422402', '1283302106563874817', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556152422403', '1290189749922848769', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556152422404', '311', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556152422405', '312', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556152422406', '1284521899698688001', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811010', '1282697029075714049', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811011', '310', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811012', '1290267473043550209', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811013', '1292749608304357378', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811014', '106', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811015', '205', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811016', '206', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811017', '207', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556160811018', '1290264087657218049', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556169199617', '1290655046224179202', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556173393922', '1290672359795187713', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556173393923', '1282698339523084289', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556173393924', '102', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556173393925', '104', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556173393926', '302', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556181782529', '105', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556181782530', '204', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556181782531', '319', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556181782532', '316', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556185976833', '1284843658289373185', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556185976834', '1283046453295558658', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556185976835', '318', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556185976836', '1292455858382348290', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');
INSERT INTO `role_resource_relation` VALUES ('1293210556185976837', '1282696275397033986', '1284060496206516226', '2020-08-11 23:39:58', '2020-08-11 23:39:58', 'admin', 'admin');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色code',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `data_scope` tinyint(1) NULL DEFAULT 1 COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `deleted` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '角色状态（1正常 0停用）',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('101', 'Admin', '超级管理员', '公司IT总负责人', 1, 'N', 1, '2020-06-24 16:53:56', '2020-08-11 17:40:53', 'system', 'admin');
INSERT INTO `roles` VALUES ('102', 'FIN', '财务', '财务', 1, 'Y', 1, '2020-06-24 16:53:56', '2020-07-16 18:02:24', 'system', 'zengjian');
INSERT INTO `roles` VALUES ('103', 'IT', 'IT', 'IT角色', 1, 'Y', 1, '2020-06-24 16:53:56', '2020-07-15 22:33:04', 'system', 'zengjian');
INSERT INTO `roles` VALUES ('104', '104', '初级软件工程师', '初级软件工程师', 1, 'Y', 1, '2020-06-27 17:32:58', '2020-07-16 18:02:46', 'zengjian', 'zengjian');
INSERT INTO `roles` VALUES ('105', 'personnel', '人事部门', '人事管理', 1, 'Y', 1, '2020-06-27 17:33:32', '2020-07-17 16:33:17', 'zengjian', 'liuhuan');
INSERT INTO `roles` VALUES ('106', '总经理', '总经理', '总经理', 1, 'Y', 1, '2020-07-13 17:04:59', '2020-07-17 16:35:03', 'zengjian', 'admin');
INSERT INTO `roles` VALUES ('107', 'Developer', '开发人员', '开发人员负责系需求、开发、测试、部署、运维', 3, 'N', 1, '2020-07-13 17:08:42', '2020-08-11 17:40:21', 'zengjian', 'admin');
INSERT INTO `roles` VALUES ('1284060496206516226', 'ExternalVisitor', '外部访问人员', '外部访问人员是浏览系统的潜在客户', 0, 'N', 1, '2020-07-17 17:40:54', '2020-08-11 23:39:58', 'liuhuan', 'admin');
INSERT INTO `roles` VALUES ('1285778438078140418', 'Registered user', '注册用户', '提供给开发人员注册账号用', 1, 'N', 1, '2020-07-22 11:27:23', '2020-08-05 10:35:43', 'xinyonghu', 'admin');
INSERT INTO `roles` VALUES ('1290839187922202625', 'ceshi', '测试', NULL, 1, 'N', 1, '2020-08-05 10:37:00', '2020-08-11 17:45:14', 'admin', 'admin');
INSERT INTO `roles` VALUES ('1290929893655191553', 'TheBackendDevelopment', '后端开发', '后端开发人员', 1, 'N', 1, '2020-08-05 16:37:26', '2020-08-10 17:36:59', 'liuxue', 'admin');
INSERT INTO `roles` VALUES ('1290930097234124802', 'Front-endDevelopment', '前端开发', '前端开发人员', 1, 'N', 1, '2020-08-05 16:38:14', '2020-08-10 17:37:09', 'liuxue', 'admin');

-- ----------------------------
-- Table structure for user_groupd_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_groupd_relation`;
CREATE TABLE `user_groupd_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `groupd_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和组关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_groupd_relation
-- ----------------------------
INSERT INTO `user_groupd_relation` VALUES ('1287741889398816769', '1285770711637495809', '103', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1290912675672379394', '101', '103', '2020-08-05 15:29:01', '2020-08-05 15:29:01', 'zengjian', 'zengjian');
INSERT INTO `user_groupd_relation` VALUES ('1291221187115892737', '1285771781201793026', '103', '2020-08-06 11:54:55', '2020-08-06 11:54:55', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1291225466883031042', '1285772624223342593', '103', '2020-08-06 12:11:56', '2020-08-06 12:11:56', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1291225557412888577', '1285772156772356098', '30111', '2020-08-06 12:12:17', '2020-08-06 12:12:17', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1291225635951230977', '107', '103', '2020-08-06 12:12:36', '2020-08-06 12:12:36', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1291225690271662081', '108', '103', '2020-08-06 12:12:49', '2020-08-06 12:12:49', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1291225777156669442', '1285766782346399746', '103', '2020-08-06 12:13:10', '2020-08-06 12:13:10', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1293113699816439809', '104', '103', '2020-08-11 17:15:06', '2020-08-11 17:15:06', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1293490037425565698', '1290573359247032321', '103', '2020-08-12 18:10:31', '2020-08-12 18:10:31', 'admin', 'admin');
INSERT INTO `user_groupd_relation` VALUES ('1300097798577958914', '1290936477890387969', '104', '2020-08-30 23:47:24', '2020-08-30 23:47:24', 'admin', 'admin');

-- ----------------------------
-- Table structure for user_position_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_position_relation`;
CREATE TABLE `user_position_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `position_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和岗位关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_position_relation
-- ----------------------------
INSERT INTO `user_position_relation` VALUES ('1287741889382039553', '1285770711637495809', '1283332848824115202', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1290912675663990785', '101', '1283298141415673858', '2020-08-05 15:29:01', '2020-08-05 15:29:01', 'zengjian', 'zengjian');
INSERT INTO `user_position_relation` VALUES ('1291221187107504130', '1285771781201793026', '1283332848824115202', '2020-08-06 11:54:55', '2020-08-06 11:54:55', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1291225466870448130', '1285772624223342593', '1283332848824115202', '2020-08-06 12:11:56', '2020-08-06 12:11:56', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1291225557383528449', '1285772156772356098', '1283332848824115202', '2020-08-06 12:12:17', '2020-08-06 12:12:17', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1291225635942842369', '107', '1283332848824115202', '2020-08-06 12:12:36', '2020-08-06 12:12:36', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1291225690254884865', '108', '1283332848824115202', '2020-08-06 12:12:49', '2020-08-06 12:12:49', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1291225777148280834', '1285766782346399746', '1283298141415673858', '2020-08-06 12:13:10', '2020-08-06 12:13:10', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1293113699782885378', '104', '1283298141415673858', '2020-08-11 17:15:06', '2020-08-11 17:15:06', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1293490037408788481', '1290573359247032321', '1283298141415673858', '2020-08-12 18:10:31', '2020-08-12 18:10:31', 'admin', 'admin');
INSERT INTO `user_position_relation` VALUES ('1300097798561181697', '1290936477890387969', '1283296507864289282', '2020-08-30 23:47:24', '2020-08-30 23:47:24', 'admin', 'admin');

-- ----------------------------
-- Table structure for user_project_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_project_relation`;
CREATE TABLE `user_project_relation`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关系id',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `project_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工程id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_project_relation
-- ----------------------------

-- ----------------------------
-- Table structure for user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_role_relation`;
CREATE TABLE `user_role_relation`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关系id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role_relation
-- ----------------------------
INSERT INTO `user_role_relation` VALUES ('1284518368392536066', '1284518368308649985', '103', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1284518368405118978', '1284518368308649985', '102', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1284518368405118979', '1284518368308649985', '101', '2020-07-19 00:00:19', '2020-07-19 00:00:19', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1287741889373650945', '1285770711637495809', '1285778438078140418', '2020-07-27 21:29:26', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1290912675647213570', '101', '107', '2020-08-05 15:29:01', '2020-08-05 15:29:01', 'zengjian', 'zengjian');
INSERT INTO `user_role_relation` VALUES ('1290912675651407874', '101', '101', '2020-08-05 15:29:01', '2020-08-05 15:29:01', 'zengjian', 'zengjian');
INSERT INTO `user_role_relation` VALUES ('1291221187094921217', '1285771781201793026', '1290930097234124802', '2020-08-06 11:54:55', '2020-08-06 11:54:55', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1291225466811727873', '1285772624223342593', '1290930097234124802', '2020-08-06 12:11:56', '2020-08-06 12:11:56', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1291225557261893634', '1285772156772356098', '1290930097234124802', '2020-08-06 12:12:17', '2020-08-06 12:12:17', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1291225635930259457', '107', '1290930097234124802', '2020-08-06 12:12:36', '2020-08-06 12:12:36', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1291225690238107649', '108', '1290930097234124802', '2020-08-06 12:12:49', '2020-08-06 12:12:49', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1291225776833708034', '1285766782346399746', '1290929893655191553', '2020-08-06 12:13:10', '2020-08-06 12:13:10', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1293113699749330946', '104', '107', '2020-08-11 17:15:06', '2020-08-11 17:15:06', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1293113699757719553', '104', '101', '2020-08-11 17:15:06', '2020-08-11 17:15:06', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1293490037392011266', '1290573359247032321', '1290930097234124802', '2020-08-12 18:10:31', '2020-08-12 18:10:31', 'admin', 'admin');
INSERT INTO `user_role_relation` VALUES ('1300097798284357633', '1290936477890387969', '1285778438078140418', '2020-08-30 23:47:24', '2020-08-30 23:47:24', 'admin', 'admin');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码密文',
  `nickname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户姓名（昵称）',
  `sex` enum('男','女','未知') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男' COMMENT '性别(男 女 未知)',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户手机',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像地址',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `deleted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除Y：已删除，N：未删除',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否有效用户（1为有效 0为无效）',
  `account_non_expired` tinyint(1) NULL DEFAULT NULL COMMENT '账号是否未过期',
  `credentials_non_expired` tinyint(1) NULL DEFAULT NULL COMMENT '密码是否未过期',
  `account_non_locked` tinyint(1) NULL DEFAULT NULL COMMENT '是否未锁定',
  `login_id` datetime(0) NULL DEFAULT NULL COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_users_username`(`username`) USING BTREE,
  UNIQUE INDEX `ux_users_mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('101', 'admin', '$2a$10$TvnPRRi7ic2/zGew5VlBLOr6iFFOax2FCU6XQrFaB7bOSE2vF1Uea', '超级管理员', '女', '13402312710', '1234214@qq.com', '/profile/avatar/2020/08/12/de343027-1d71-429c-b184-62e1bf95361d.jpeg', NULL, 'N', 1, 1, 1, 1, NULL, NULL, '2020-06-24 16:53:56', '2020-08-12 17:47:07', 'system', 'admin');
INSERT INTO `users` VALUES ('104', 'zengjian', '$2a$10$OVpHsFGDNyxpMyB557qR/eq5lsmdSu/DQbsEGY2Jk9a7.ki72v2f.', '曾剑', '男', '13402312713', NULL, NULL, '开发人员', 'N', 1, 1, 1, 1, NULL, NULL, '2020-06-27 01:08:38', '2020-08-11 17:15:06', 'zengjian', 'admin');
INSERT INTO `users` VALUES ('107', 'zhuchaojian', '$2a$10$rlxZLKdQ2Wae2OexHKdD5uTA6EXbSyt/DN2uENbs9XLPX9wyagCuG', '朱超见', '男', '15631810611', NULL, NULL, '朱超见', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-06 10:04:19', '2020-08-06 12:12:36', 'zengjian', 'admin');
INSERT INTO `users` VALUES ('108', 'liushifeng', '$2a$10$NNDTgCqGLAqANPgYpdiegOBdutSr3ioeQBkI5p58OueG8BrEX8GoS', '刘士峰', '男', '15487412341', NULL, NULL, '刘士峰', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-06 10:55:34', '2020-08-06 12:12:49', 'zengjian', 'admin');
INSERT INTO `users` VALUES ('1285766782346399746', 'guozhenfang', '$2a$10$BA0JDh71dwGH04q8Xq6mLeRdVg/XCaIRIfYxaYGXpZrCoanM3PAxy', '郭振方', '男', '18688907170', NULL, NULL, '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-22 10:41:04', '2020-08-06 12:13:10', 'zengjian', 'admin');
INSERT INTO `users` VALUES ('1285770711637495809', 'xinyonghu', '$2a$10$OuMcRjjetuNdQKDMjKtzSu0Pb1IzBp164TGSEMNhkbcGtze5vqSpO', '新用户', '男', '12345678901', NULL, NULL, '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-22 10:56:41', '2020-07-27 21:29:26', 'admin', 'admin');
INSERT INTO `users` VALUES ('1285771781201793026', 'xing', '$2a$10$6SsRMiHGFnWCu.X9aKmqteSjXm0PUimHV0f5IPxmpEGRuM7P6OFtO', '庞海杏', '男', '18218437099', NULL, NULL, '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-22 11:00:56', '2020-08-06 11:54:55', 'xinyonghu', 'admin');
INSERT INTO `users` VALUES ('1285772156772356098', 'hedonghong', '$2a$10$F1vwqVLZAclKHUyhVhHGe.4pxKH6OtbQcDPbaegjdGZrFcE3a./w6', '何东鸿', '男', '13129139940', '1329767432@qq.com', '/profile/avatar/2020/08/10/5498c71c-9977-4a8e-8560-e260aeee0bfb.jpeg', '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-22 11:02:25', '2020-08-10 20:19:52', 'xinyonghu', 'hedonghong');
INSERT INTO `users` VALUES ('1285772624223342593', 'zhuanghaoran', '$2a$10$OFvuHJPdlZ.8w/sCJZVjk.1uFwsbzpKF3TYU1Zxxp0xfT3SmCwjri', '庄浩然', '男', '13790100128', NULL, NULL, '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-07-22 11:04:17', '2020-08-06 12:11:56', 'xinyonghu', 'admin');
INSERT INTO `users` VALUES ('1290573359247032321', 'ceshi', '$2a$10$4FwzYJR2zi2G/EDZmyLDHuJpj7WSGOn3c0efJOtboMR2ghCnOCuky', '前端开发', '男', '13402312777', NULL, '/profile/avatar/2020/08/10/71a63a0b-8b82-415a-a22d-70ef6df8a283.jpeg', 'asdf', 'N', 1, 1, 1, 1, NULL, NULL, '2020-08-04 17:00:41', '2020-08-12 18:10:31', 'admin', 'admin');
INSERT INTO `users` VALUES ('1290936477890387969', 'houduan', '$2a$10$BC1VSKmosUW0yWSJESVvLewou0uasjpGGfbr6EHoHaQ3hcBsXchj.', '后端开发人员', '男', '13402312719', NULL, NULL, '', 'N', 1, 1, 1, 1, NULL, NULL, '2020-08-05 17:03:35', '2020-08-30 23:47:24', 'admin', 'admin');
INSERT INTO `users` VALUES ('1293205311066292226', 'fengxingqiang', '$2a$10$IJKrX0oAymUOtq1/q80GEOR/EqGeATpcAYwQeB1Ll.RB885fouUXK', '冯新强', '男', '13345896578', NULL, NULL, '测绘高手', 'Y', 1, 1, 1, 1, NULL, NULL, '2020-08-11 23:19:07', '2020-08-12 18:10:11', 'system', 'admin');
INSERT INTO `users` VALUES ('1293208591708262401', 'aidehua', '$2a$10$Mmw9MapmS.8xxVz7KRtLMetBkpQ9UkYYxbqbwDnzHbWm7vuuuIUJq', '爱德华', '男', '14785236978', NULL, NULL, '剪刀手爱德华', 'Y', 1, 1, 1, 1, NULL, NULL, '2020-08-11 23:32:10', '2020-08-11 23:32:10', 'system', 'system');
INSERT INTO `users` VALUES ('1293210044166316033', 'zhangxiaoqiang', '$2a$10$TfFqFxdO1ej0JJOn3g/XeurAFFZhQ0QMAM1K8bvPBDh5lCiVo6n.y', '张小强', '男', '14785964578', NULL, NULL, '足球王子', 'Y', 1, 1, 1, 1, NULL, NULL, '2020-08-11 23:37:56', '2020-08-11 23:37:56', 'system', 'system');

SET FOREIGN_KEY_CHECKS = 1;
