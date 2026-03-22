-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: eb_demo
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_department`
--

DROP TABLE IF EXISTS `auth_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_department` (
  `department_id` varchar(50) NOT NULL COMMENT '部门ID',
  `department_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `code` varchar(100) DEFAULT NULL COMMENT '编号',
  `forbidden_flag` int DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `agent_id` varchar(200) DEFAULT NULL COMMENT '所属代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '所属代理商名称',
  `merchant_id` varchar(200) DEFAULT NULL COMMENT '所属商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '所属商户名称',
  `type` varchar(200) DEFAULT NULL COMMENT '平台类型',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `uk_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_department`
--

LOCK TABLES `auth_department` WRITE;
/*!40000 ALTER TABLE `auth_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_employee`
--

DROP TABLE IF EXISTS `auth_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_employee` (
  `employee_id` varchar(50) NOT NULL COMMENT '员工ID',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录账户',
  `employee_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `employee_code` varchar(20) DEFAULT NULL COMMENT '工号',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `forbidden_flag` int DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `header_pic` varchar(200) DEFAULT NULL COMMENT '头像',
  `department_id` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `department_name` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `position` varchar(200) DEFAULT NULL COMMENT '职位',
  `agent_id` varchar(200) DEFAULT NULL COMMENT '所属代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '所属代理商名称',
  `merchant_id` varchar(200) DEFAULT NULL COMMENT '所属商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '所属商户名称',
  `roles` text COMMENT '角色ID',
  `roles_name` text COMMENT '角色名称',
  `extend_info` text COMMENT '扩展信息，可使用JSON存储',
  `manage_area` text COMMENT '管理厂区',
  `manage_area_id` text COMMENT '管理厂区ID',
  `work_area` varchar(200) DEFAULT NULL COMMENT '工作厂区',
  `work_area_id` varchar(200) DEFAULT NULL COMMENT '工作厂区ID',
  `biz_type` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `org_id` varchar(200) DEFAULT NULL COMMENT '组织ID',
  `org_name` varchar(200) DEFAULT NULL COMMENT '组织名称',
  `org_code` varchar(200) DEFAULT NULL COMMENT '组织编号',
  `type` varchar(200) DEFAULT NULL COMMENT '类型',
  `last_update_pwd` timestamp NULL DEFAULT NULL COMMENT '最后更新密码时间',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `uk_login_name` (`login_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_employee`
--

LOCK TABLES `auth_employee` WRITE;
/*!40000 ALTER TABLE `auth_employee` DISABLE KEYS */;
INSERT INTO `auth_employee` VALUES ('985c55945a159fab0e4d634ad7919add','dev','开发专用',NULL,NULL,'10032586bc62852d2a7ed121da58d05f',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'596bf1f03e28b22d4f5c09963e0d8f21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'platform',NULL,'2026-03-22 09:53:53','2026-03-22 09:54:31',0);
/*!40000 ALTER TABLE `auth_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_resource`
--

DROP TABLE IF EXISTS `auth_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_resource` (
  `resource_id` varchar(50) NOT NULL COMMENT '资源ID',
  `name` varchar(150) DEFAULT NULL COMMENT '名称',
  `icon` varchar(150) DEFAULT NULL COMMENT 'icon',
  `url` varchar(150) DEFAULT NULL COMMENT '资源路径',
  `pid` varchar(50) DEFAULT NULL COMMENT '父资源ID',
  `pname` varchar(50) DEFAULT NULL COMMENT '父资源名称',
  `title` varchar(150) DEFAULT NULL COMMENT '标题',
  `category` varchar(50) DEFAULT NULL COMMENT '资源类型，menu 菜单，action 功能',
  `remark` varchar(150) DEFAULT NULL COMMENT '备注',
  `sort` int DEFAULT '0' COMMENT '排序',
  `path` varchar(50) DEFAULT NULL COMMENT '前端路由地址',
  `action_code` varchar(50) DEFAULT NULL COMMENT '功能代码',
  `resource_level` int DEFAULT '0' COMMENT '资源等级，0：无需验证，1：需要登录，2：需要权限',
  `un_pass_msg` varchar(100) DEFAULT NULL COMMENT '无权限时的提示',
  `root_status` int DEFAULT '0' COMMENT '根目录标识，0：否，1：是',
  `group_code` varchar(50) DEFAULT NULL COMMENT '分组',
  `type_flag` varchar(100) DEFAULT NULL COMMENT '类型标识 例如：all所有，system等，表示该资源属于系统/企业等，用于处理各个平台端资源归类',
  `default_flag` varchar(100) DEFAULT NULL COMMENT '默认类型 all所有，system等，表示该资源是否是系统/企业等各平台端的默认资源',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='权限资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_resource`
--

LOCK TABLES `auth_resource` WRITE;
/*!40000 ALTER TABLE `auth_resource` DISABLE KEYS */;
INSERT INTO `auth_resource` VALUES ('authManage','权限管理','',NULL,NULL,NULL,'权限管理','menu','权限管理',99000,'/auth',NULL,2,NULL,1,'authManage','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('bannerAddOrEdit','新增/编辑','','/api/bms/operation/banner/addOrEdit','bannerManage','Banner管理','新增/编辑','action','新增/编辑',18101,'','addOrEdit',2,'',0,'operationSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('bannerDelete','删除','','/api/bms/operation/banner/delete','bannerManage','Banner管理','删除','action','删除',18102,'','delete',2,'',0,'operationSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('bannerDisable','启用/禁用','','/api/bms/operation/banner/disable','bannerManage','Banner管理','启用/禁用','action','启用/禁用',18103,'','disable',2,'',0,'operationSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('bannerManage','Banner管理','','/api/bms/operation/banner/queryPage','operationSetting','运营管理','Banner管理','menu','Banner管理',18100,'/operation/banner','',2,'',0,'operationSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('baseSetting','基础设置','',NULL,NULL,NULL,'基础设置','menu','基础设置',98000,'/base',NULL,2,NULL,1,'baseSetting','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('brandAddOrEdit','新增/编辑','','/api/bms/base/brand/addOrEdit','brandManage','品牌管理','新增/编辑','action','新增/编辑',98201,'','addOrEdit',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('brandDelete','删除','','/api/bms/base/brand/delete','brandManage','品牌管理','删除','action','删除',98202,'','delete',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('brandDisable','启用/禁用','','/api/bms/base/brand/disable','brandManage','品牌管理','启用/禁用','action','启用/禁用',98203,'','disable',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('brandManage','品牌管理','','/api/bms/base/brand/queryPage','baseSetting','基础设置','品牌管理','menu','品牌管理',98200,'/base/brand','',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('businessesManage','商超管理','',NULL,NULL,NULL,'商超管理','menu','商超管理',71000,'/businesses',NULL,2,NULL,1,'businessesSetting','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('categoryAddOrEdit','新增/编辑','','/api/bms/base/category/addOrEdit','categoryManage','分类管理','新增/编辑','action','新增/编辑',98401,'','addOrEdit',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('categoryDelete','删除','','/api/bms/base/category/delete','categoryManage','分类管理','删除','action','删除',98402,'','delete',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('categoryDisable','启用/禁用','','/api/bms/base/category/disable','categoryManage','分类管理','启用/禁用','action','启用/禁用',98403,'','disable',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('categoryManage','分类管理','','/api/bms/base/category/queryPage','baseSetting','基础设置','分类管理','menu','分类管理',98400,'/base/category','',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('commodityManage','商品管理','',NULL,NULL,NULL,'商品管理','menu','商品管理',81000,'/commodity',NULL,2,NULL,1,'commodityManage','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('customerManage','会员管理','',NULL,NULL,NULL,'会员管理','menu','会员管理',81000,'/customer',NULL,2,NULL,1,'customerManage','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('departmentAddOrEdit','新增/编辑','','/api/auth/department/addOrEdit','departmentManage','部门管理','新增/编辑','action','新增/编辑',99101,'','addOrEdit',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('departmentDelete','删除部门','','/api/auth/department/delete','departmentManage','部门管理','删除','action','删除部门',99102,'','delete',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('departmentDisable','启用/禁用部门','','/api/auth/department/disable','departmentManage','部门管理','启用/禁用','action','启用/禁用部门',99102,'','disable',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('departmentManage','部门管理','','/api/auth/department/queryPage','authManage','权限管理','部门管理','menu','部门管理',99100,'/auth/department','',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('dictAddOrEdit','新增/编辑','','/api/bms/system/dict/addOrEdit','dictManage','字典管理','新增/编辑','action','新增/编辑',99401,'','addOrEdit',2,'',0,'systemSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('dictDelete','删除','','/api/bms/system/dict/delete','dictManage','字典管理','删除','action','删除',99402,'','delete',2,'',0,'systemSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('dictDisable','启用/禁用','','/api/bms/system/dict/disable','dictManage','字典管理','启用/禁用','action','启用/禁用',99403,'','disable',2,'',0,'systemSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('dictManage','字典管理','','/api/bms/system/dict/queryPage','systemSetting','系统设置','字典管理','menu','字典管理',99400,'/system/dict','',2,'',0,'systemSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('employeeAddOrEdit','新增/编辑员工','','/api/auth/employee/addOrEdit','employeeManage','员工管理','新增/编辑','action','新增/编辑员工',99301,'','addOrEdit',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('employeeDelete','删除员工','','/api/auth/employee/delete','employeeManage','员工管理','删除','action','删除员工',99302,'','delete',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('employeeDisable','启用/禁用员工','','/api/auth/employee/disable','employeeManage','员工管理','启用/禁用','action','启用/禁用员工',99303,'','disable',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('employeeManage','员工管理','','/api/auth/employee/queryPage','authManage','权限管理','员工管理','menu','员工管理',99300,'/auth/employee','',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsInfoAddOrEdit','新增/编辑','','/api/bms/commodity/goods/addOrEdit','goodsInfoManage','商品管理','新增/编辑','action','新增/编辑',11201,'','addOrEdit',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsInfoDelete','删除','','/api/bms/commodity/goods/delete','goodsInfoManage','商品管理','删除','action','删除',11202,'','delete',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsInfoManage','商品管理','','/api/bms/commodity/goods/queryPage','commodityManage','商品管理','商品管理','menu','商品管理',11200,'/commodity/goods','',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsInfoSaleFlag','商品上下架','','/api/bms/commodity/goods/saleFlag','goodsInfoManage','商品管理','商品上下架','action','商品上下架',11203,'','saleFlag',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsSpuConfigAddOrEdit','新增/编辑','','/api/bms/commodity/spu/addOrEdit','goodsSpuConfigManage','SPU配置','新增/编辑','action','新增/编辑',11101,'','addOrEdit',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsSpuConfigDelete','删除','','/api/bms/commodity/spu/delete','goodsSpuConfigManage','SPU配置','删除','action','删除',11102,'','delete',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('goodsSpuConfigManage','SPU配置','','/api/bms/commodity/spu/queryPage','commodityManage','商品管理','SPU配置','menu','SPU配置',11100,'/commodity/spu','',2,'',0,'commodityManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('groupAddOrEdit','新增/编辑','','/api/bms/base/group/addOrEdit','groupManage','分组管理','新增/编辑','action','新增/编辑',98301,'','addOrEdit',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('groupDelete','删除','','/api/bms/base/group/delete','groupManage','分组管理','删除','action','删除',98302,'','delete',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('groupDisable','启用/禁用','','/api/bms/base/group/disable','groupManage','分组管理','启用/禁用','action','启用/禁用',98303,'','disable',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('groupManage','分组管理','','/api/bms/base/group/queryPage','baseSetting','基础设置','分组管理','menu','分组管理',98300,'/base/group','',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('merchantAddOrEdit','新增/编辑','','/api/bms/businesses/merchant/addOrEdit','merchantManage','商户管理','新增/编辑','action','新增/编辑',71201,'','addOrEdit',2,'',0,'businessesSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('merchantDelete','删除','','/api/bms/businesses/merchant/delete','merchantManage','商户管理','删除','action','删除',71202,'','delete',2,'',0,'businessesSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('merchantDisable','启用/禁用','','/api/bms/businesses/merchant/disable','merchantManage','商户管理','启用/禁用','action','启用/禁用',71203,'','disable',2,'',0,'businessesSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('merchantManage','商户管理','','/api/bms/businesses/merchant/queryPage','businessesManage','商超管理','商户管理','menu','商户管理',71200,'/businesses/merchant','',2,'',0,'businessesSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('operationSetting','运营管理','',NULL,NULL,NULL,'运营管理','menu','运营管理',18000,'/operation',NULL,2,NULL,1,'operationSetting','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderInfoAddOrEdit','新增/编辑','','/api/bms/order/info/addOrEdit','orderInfoManage','订单管理','新增/编辑','action','新增/编辑',10101,'','addOrEdit',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderInfoDelete','删除','','/api/bms/order/info/delete','orderInfoManage','订单管理','删除','action','删除',10102,'','delete',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderInfoManage','订单管理','','/api/bms/order/info/queryPage','orderManage','订单管理','订单管理','menu','订单管理',10100,'/order/order','',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderManage','订单管理','',NULL,NULL,NULL,'订单管理','menu','订单管理',71000,'/order',NULL,2,NULL,1,'orderManage','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderRefundAddOrEdit','新增/编辑','','/api/bms/order/refund/addOrEdit','orderRefundManage','退款管理','新增/编辑','action','新增/编辑',10701,'','addOrEdit',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderRefundDelete','删除','','/api/bms/order/refund/delete','orderRefundManage','退款管理','删除','action','删除',10702,'','delete',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('orderRefundManage','退款管理','','/api/bms/order/refund/queryPage','orderManage','订单管理','退款管理','menu','退款管理',10700,'/order/refund','',2,'',0,'orderManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('roleAddOrEdit','新增/编辑角色','','/api/auth/role/addOrEdit','roleManage','角色管理','新增/编辑','action','新增/编辑角色',99201,'','addOrEdit',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('roleDelete','删除角色','','/api/auth/role/delete','roleManage','角色管理','删除','action','删除角色',99202,'','delete',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('roleDisable','启用/禁用角色','','/api/auth/role/disable','roleManage','角色管理','启用/禁用','action','启用/禁用角色',99203,'','disable',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('roleGrantResource','角色分配资源','','/api/auth/role/grant','roleManage','角色管理','分配资源','action','角色分配资源',99204,'','grant',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('roleManage','角色管理','','/api/auth/role/queryPage','authManage','权限管理','角色管理','menu','角色管理',99200,'/auth/role','',2,'',0,'authManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('systemSetting','系统设置','',NULL,NULL,NULL,'系统设置','menu','系统设置',99000,'/system',NULL,2,NULL,1,'systemSetting','all',NULL,'2026-03-22 09:54:00','2026-03-22 09:54:00',0),('tagAddOrEdit','新增/编辑','','/api/bms/base/tag/addOrEdit','tagManage','标签管理','新增/编辑','action','新增/编辑',98501,'','addOrEdit',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('tagDelete','批量删除','','/api/bms/base/tag/delete','tagManage','标签管理','批量删除','action','批量删除',98502,'','delete',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('tagDisable','启用/禁用','','/api/bms/base/tag/disable','tagManage','标签管理','启用/禁用','action','启用/禁用',98503,'','disable',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('tagManage','标签管理','','/api/bms/base/tag/queryPage','baseSetting','基础设置','标签管理','menu','标签管理',98500,'/base/tag','',2,'',0,'baseSetting','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('userInfoAddOrEdit','新增/编辑','','/api/bms/customer/user/addOrEdit','userInfoManage','会员管理','新增/编辑','action','新增/编辑',81101,'','addOrEdit',2,'',0,'customerManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('userInfoDelete','删除','','/api/bms/customer/user/delete','userInfoManage','会员管理','删除','action','删除',81102,'','delete',2,'',0,'customerManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('userInfoDisable','启用/禁用','','/api/bms/customer/user/disable','userInfoManage','会员管理','启用/禁用','action','启用/禁用',81103,'','disable',2,'',0,'customerManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0),('userInfoManage','用户管理','','/api/bms/customer/user/queryPage','customerManage','会员管理','用户管理','menu','用户管理',81100,'/customer/user','',2,'',0,'customerManage','all','all','2026-03-22 09:54:00','2026-03-22 09:54:00',0);
/*!40000 ALTER TABLE `auth_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role`
--

DROP TABLE IF EXISTS `auth_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_role` (
  `role_id` varchar(50) NOT NULL COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `forbidden_flag` int DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注信息',
  `parent_id` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `parent_name` varchar(200) DEFAULT NULL COMMENT '上级名称',
  `supper_status` int DEFAULT '0' COMMENT '超级管理员标识，0：非，1：是',
  `type` varchar(200) DEFAULT NULL COMMENT '平台类型',
  `agent_id` varchar(200) DEFAULT NULL COMMENT '所属代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '所属代理商名称',
  `merchant_id` varchar(200) DEFAULT NULL COMMENT '所属商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '所属商户名称',
  `biz_type` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `uk_role_name` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role`
--

LOCK TABLES `auth_role` WRITE;
/*!40000 ALTER TABLE `auth_role` DISABLE KEYS */;
INSERT INTO `auth_role` VALUES ('596bf1f03e28b22d4f5c09963e0d8f21','开发者',0,'系统开发所需的测试权限',NULL,NULL,1,'platform',NULL,NULL,NULL,NULL,NULL,'2026-03-22 09:53:53','2026-03-22 09:53:53',0);
/*!40000 ALTER TABLE `auth_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_role_resource`
--

DROP TABLE IF EXISTS `auth_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_role_resource` (
  `role_resource_id` varchar(50) NOT NULL COMMENT 'RoleResourceID',
  `role_id` varchar(100) DEFAULT NULL COMMENT '角色ID',
  `resource_id` varchar(100) DEFAULT NULL COMMENT '资源ID',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`role_resource_id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_resource_id` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色资源关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role_resource`
--

LOCK TABLES `auth_role_resource` WRITE;
/*!40000 ALTER TABLE `auth_role_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `banner_id` varchar(50) NOT NULL COMMENT '轮播ID',
  `target_id` varchar(50) DEFAULT NULL COMMENT '关联目标ID',
  `target_type` varchar(50) DEFAULT NULL COMMENT '关联目标类型',
  `target_name` varchar(100) DEFAULT NULL COMMENT '关联目标名称',
  `jump_url` varchar(500) DEFAULT NULL COMMENT '跳转URL',
  `jump_min_app_id` varchar(100) DEFAULT NULL COMMENT '跳转小程序APPID',
  `media_type` int DEFAULT NULL COMMENT '媒体类型',
  `media_url` varchar(500) DEFAULT NULL COMMENT '媒体URL',
  `jump_type` int DEFAULT NULL COMMENT '跳转类型',
  `banner_location` varchar(100) DEFAULT NULL COMMENT 'Banner位置',
  `page_type` varchar(50) DEFAULT NULL COMMENT '页面类型',
  `client_type` int DEFAULT NULL COMMENT '客户端类型',
  `bg_color` varchar(50) DEFAULT NULL COMMENT '背景色',
  `banner_title` varchar(200) DEFAULT NULL COMMENT 'Banner标题',
  `banner_description` varchar(500) DEFAULT NULL COMMENT 'Banner描述',
  `share_flag` int DEFAULT NULL COMMENT '分享标识',
  `sort` int DEFAULT NULL COMMENT '排序权重',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`banner_id`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_merchant_id` (`merchant_id`),
  KEY `idx_forbidden_flag` (`forbidden_flag`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_brand`
--

DROP TABLE IF EXISTS `base_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_brand` (
  `brand_id` varchar(50) NOT NULL COMMENT '品牌ID',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `category_id` varchar(50) DEFAULT NULL COMMENT '分类ID',
  `category_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `logo` varchar(500) DEFAULT NULL COMMENT '品牌logo地址',
  `brand_describe` text COMMENT '品牌描述',
  `sort` int DEFAULT NULL COMMENT '排序权重',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0-启用 1-禁用',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `uk_brand_name` (`brand_name`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_merchant_id` (`merchant_id`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_brand`
--

LOCK TABLES `base_brand` WRITE;
/*!40000 ALTER TABLE `base_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_category`
--

DROP TABLE IF EXISTS `base_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_category` (
  `category_id` varchar(50) NOT NULL COMMENT '分类ID',
  `category_code` varchar(50) DEFAULT NULL COMMENT '分类编码',
  `category_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `category_describe` text COMMENT '分类描述',
  `group_id` varchar(50) DEFAULT NULL COMMENT '分组ID',
  `group_name` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `parent_id` varchar(50) DEFAULT NULL COMMENT '父级分类ID',
  `parent_name` varchar(100) DEFAULT NULL COMMENT '父级分类名称',
  `level` int DEFAULT '1' COMMENT '等级',
  `sort` int DEFAULT NULL COMMENT '排序权重',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uk_category_code` (`category_code`),
  UNIQUE KEY `uk_category_name` (`category_name`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_merchant_id` (`merchant_id`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_category`
--

LOCK TABLES `base_category` WRITE;
/*!40000 ALTER TABLE `base_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_group`
--

DROP TABLE IF EXISTS `base_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_group` (
  `group_id` varchar(50) NOT NULL COMMENT '分组ID',
  `group_code` varchar(50) DEFAULT NULL COMMENT '分组编码',
  `group_name` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `group_describe` text COMMENT '分组描述',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `uk_group_code` (`group_code`),
  UNIQUE KEY `uk_group_name` (`group_name`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_merchant_id` (`merchant_id`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_group`
--

LOCK TABLES `base_group` WRITE;
/*!40000 ALTER TABLE `base_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_tag`
--

DROP TABLE IF EXISTS `base_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_tag` (
  `tag_id` varchar(50) NOT NULL COMMENT '标签ID',
  `tag_name` varchar(100) DEFAULT NULL COMMENT '标签名称',
  `sub_name` varchar(100) DEFAULT NULL COMMENT '副标签名称',
  `tag_code` varchar(50) DEFAULT NULL COMMENT '标签编码',
  `tag_describe` text COMMENT '标签描述',
  `category_id` varchar(50) DEFAULT NULL COMMENT '分类ID',
  `category_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `uk_tag_code` (`tag_code`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_merchant_id` (`merchant_id`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='标签';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_tag`
--

LOCK TABLES `base_tag` WRITE;
/*!40000 ALTER TABLE `base_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_cart_item`
--

DROP TABLE IF EXISTS `goods_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_cart_item` (
  `cart_item_id` varchar(50) NOT NULL COMMENT '购物车项ID',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商家ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_sku_id` varchar(50) DEFAULT NULL COMMENT 'SKU ID',
  `goods_sku_name` varchar(100) DEFAULT NULL COMMENT 'SKU名称',
  `cover_img` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `count` int DEFAULT '0' COMMENT '数量',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`cart_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_cart_item`
--

LOCK TABLES `goods_cart_item` WRITE;
/*!40000 ALTER TABLE `goods_cart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_detail`
--

DROP TABLE IF EXISTS `goods_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_detail` (
  `goods_id` varchar(50) NOT NULL COMMENT 'GoodsDetailId',
  `content` longtext COMMENT '详情内容，支持富文本',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_detail`
--

LOCK TABLES `goods_detail` WRITE;
/*!40000 ALTER TABLE `goods_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_explain`
--

DROP TABLE IF EXISTS `goods_explain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_explain` (
  `goods_explain_id` varchar(50) NOT NULL COMMENT 'GoodsExplainId',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `explain_name` varchar(50) DEFAULT NULL COMMENT '说明名称',
  `explain_content` varchar(200) DEFAULT NULL COMMENT '说明内容',
  `sort` int DEFAULT '0' COMMENT '排序',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_explain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品说明';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_explain`
--

LOCK TABLES `goods_explain` WRITE;
/*!40000 ALTER TABLE `goods_explain` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_explain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_info`
--

DROP TABLE IF EXISTS `goods_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_info` (
  `goods_id` varchar(50) NOT NULL COMMENT 'GoodsId',
  `goods_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_trait` varchar(200) DEFAULT NULL COMMENT '商品特点',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `market_price` decimal(10,2) DEFAULT NULL COMMENT '市场价格',
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT '成本价格',
  `sku_type` int DEFAULT '2' COMMENT '规格类型 1单一规格 2多规格',
  `used_flag` int DEFAULT '0' COMMENT '二手标签 0否 1是',
  `sale_type` int DEFAULT '1' COMMENT '销售模式 1现货销售 2预售模式',
  `distribution_type` int DEFAULT '1' COMMENT '配送方式 0：自提，1：快递，2：都可以 99：送到货柜',
  `credit_flag` int DEFAULT '1' COMMENT '是否支持积分支付（0：否，1：是）',
  `balance_flag` int DEFAULT '1' COMMENT '是否支持余额支付（0：否，1：是）',
  `total_stock` int DEFAULT '0' COMMENT '总库存',
  `locked_stock` int DEFAULT '0' COMMENT '锁定库存',
  `surplus_stock` int GENERATED ALWAYS AS ((`total_stock` - `locked_stock`)) STORED COMMENT '剩余库存',
  `goods_tag` varchar(200) DEFAULT NULL COMMENT '商品标签',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '重量(kg)',
  `volume` decimal(10,2) DEFAULT NULL COMMENT '体积(m3)',
  `merchant_code` varchar(100) DEFAULT NULL COMMENT '商家编码',
  `spu_code` varchar(50) DEFAULT NULL COMMENT 'spu编码',
  `first_category_id` varchar(50) DEFAULT NULL COMMENT '一级分类ID',
  `second_category_id` varchar(50) DEFAULT NULL COMMENT '二级分类ID',
  `third_category_id` varchar(50) DEFAULT NULL COMMENT '三级分类ID',
  `first_category_name` varchar(50) DEFAULT NULL COMMENT '一级分类名称',
  `second_category_name` varchar(50) DEFAULT NULL COMMENT '二级分类名称',
  `third_category_name` varchar(50) DEFAULT NULL COMMENT '三级分类名称',
  `postage_template_id` varchar(50) DEFAULT NULL COMMENT '运费模板ID',
  `init_sale_count` int DEFAULT NULL COMMENT '初始销量',
  `sale_count` int DEFAULT NULL COMMENT '销售总量',
  `evaluate_count` int DEFAULT NULL COMMENT '评价总数',
  `good_evaluate_count` int DEFAULT NULL COMMENT '好评次数',
  `start_sale_time` datetime DEFAULT NULL COMMENT '预售开售时间',
  `unit` varchar(50) DEFAULT NULL COMMENT '商品数量单位',
  `sale_flag` int DEFAULT '0' COMMENT '在售标签 0待上架，1在售',
  `sort` int DEFAULT NULL COMMENT '排序,数字越大,越靠前',
  `max_count` int DEFAULT '0' COMMENT '单次最大购买数（0：表示不限制）',
  `limit_count` int DEFAULT '0' COMMENT '限购次数, 0表示不限制',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '所属商家ID',
  `merchant_name` varchar(50) DEFAULT NULL COMMENT '商家名称',
  `qr_url` varchar(200) DEFAULT NULL COMMENT '二维码地址',
  `tax_id` varchar(50) DEFAULT NULL COMMENT '税率ID',
  `tax_name` varchar(50) DEFAULT NULL COMMENT '税率名称',
  `collect_count` int DEFAULT NULL COMMENT '收藏数',
  `new_flag` int DEFAULT '0' COMMENT '新品标识 0否 1是',
  `recommend_flag` int DEFAULT '0' COMMENT '推荐标识 0否 1是',
  `brand_id` varchar(50) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `cover_img` varchar(200) DEFAULT NULL COMMENT '封面图',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(50) DEFAULT NULL COMMENT '代理商名称',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_id`),
  CONSTRAINT `chk_goods_info_stock` CHECK (((`total_stock` >= 0) and (`locked_stock` >= 0) and (`total_stock` >= `locked_stock`)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_info`
--

LOCK TABLES `goods_info` WRITE;
/*!40000 ALTER TABLE `goods_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_sku`
--

DROP TABLE IF EXISTS `goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_sku` (
  `goods_sku_id` varchar(50) NOT NULL COMMENT 'GoodsSkuId',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `goods_sku_name` varchar(150) DEFAULT NULL COMMENT '商品名称',
  `goods_sku_no` varchar(50) DEFAULT NULL COMMENT 'sku编码',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `market_price` decimal(10,2) DEFAULT NULL COMMENT '市场价格',
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT '成本价格',
  `total_stock` int DEFAULT '0' COMMENT '总库存',
  `locked_stock` int DEFAULT '0' COMMENT '锁定库存',
  `surplus_stock` int GENERATED ALWAYS AS ((`total_stock` - `locked_stock`)) STORED COMMENT '剩余库存',
  `sale_count` int DEFAULT '0' COMMENT '销售总量',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '重量(kg)',
  `volume` decimal(10,2) DEFAULT NULL COMMENT '体积(m3)',
  `max_count` int DEFAULT '0' COMMENT '单次最大购买数（0：表示不限制）',
  `limit_count` int DEFAULT '0' COMMENT '限购次数, 0表示不限制',
  `sort` int DEFAULT NULL COMMENT '排序,数字越大,越靠前',
  `sku_hash` varchar(100) DEFAULT NULL COMMENT 'SKU 哈希码',
  `cover_img` varchar(200) DEFAULT NULL COMMENT '封面图',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_sku_id`),
  CONSTRAINT `chk_goods_sku_stock` CHECK (((`total_stock` >= 0) and (`locked_stock` >= 0) and (`total_stock` >= `locked_stock`)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品SKU';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_sku`
--

LOCK TABLES `goods_sku` WRITE;
/*!40000 ALTER TABLE `goods_sku` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_spu`
--

DROP TABLE IF EXISTS `goods_spu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_spu` (
  `goods_spu_id` varchar(50) NOT NULL COMMENT 'GoodsSpuId',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `spu_name` varchar(50) DEFAULT NULL COMMENT 'SPU名称',
  `spu_sort` int DEFAULT NULL COMMENT 'SPU排序',
  `spu_value` varchar(50) DEFAULT NULL COMMENT '规格值',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_spu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品SPU';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_spu`
--

LOCK TABLES `goods_spu` WRITE;
/*!40000 ALTER TABLE `goods_spu` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_spu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_spu_config`
--

DROP TABLE IF EXISTS `goods_spu_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_spu_config` (
  `goods_spu_config_id` varchar(50) NOT NULL COMMENT 'GoodsSpuConfigId',
  `first_category_id` varchar(50) DEFAULT NULL COMMENT '一级分类ID',
  `second_category_id` varchar(50) DEFAULT NULL COMMENT '二级分类ID',
  `third_category_id` varchar(50) DEFAULT NULL COMMENT '三级分类ID',
  `first_category_name` varchar(50) DEFAULT NULL COMMENT '一级分类名称',
  `second_category_name` varchar(50) DEFAULT NULL COMMENT '二级分类名称',
  `third_category_name` varchar(50) DEFAULT NULL COMMENT '三级分类名称',
  `spu_name` varchar(50) DEFAULT NULL COMMENT 'spu名称',
  `spu_value` varchar(200) DEFAULT NULL COMMENT 'spu值',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`goods_spu_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='SPU配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_spu_config`
--

LOCK TABLES `goods_spu_config` WRITE;
/*!40000 ALTER TABLE `goods_spu_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_spu_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_stock_log`
--

DROP TABLE IF EXISTS `goods_stock_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_stock_log` (
  `stock_log_id` varchar(50) NOT NULL COMMENT '库存流水ID',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `goods_id` varchar(50) NOT NULL COMMENT '商品ID',
  `goods_sku_id` varchar(50) DEFAULT NULL COMMENT '商品SKU ID',
  `action` varchar(50) NOT NULL COMMENT '操作类型 lock锁定/deduct扣减/release释放',
  `count` int NOT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int DEFAULT '0' COMMENT '删除标记 0否 1是',
  PRIMARY KEY (`stock_log_id`),
  UNIQUE KEY `uk_order_goods_sku_action` (`order_no`,`goods_id`,`goods_sku_id`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品库存流水';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_stock_log`
--

LOCK TABLES `goods_stock_log` WRITE;
/*!40000 ALTER TABLE `goods_stock_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_stock_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_info`
--

DROP TABLE IF EXISTS `media_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_info` (
  `media_id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL COMMENT '媒体ID',
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `sub_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子标题',
  `target_id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联目标ID',
  `target_type` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联目标类型',
  `target_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联目标的名称',
  `media_type` int DEFAULT NULL COMMENT '媒体类型',
  `media_flag` int DEFAULT NULL COMMENT '媒体标识',
  `media_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '媒体URL',
  `media_cover_img` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '媒体封面图',
  `config_content` text COLLATE utf8mb4_general_ci COMMENT '配置内容',
  `sort` int DEFAULT NULL COMMENT '排序,权重',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除标记',
  PRIMARY KEY (`media_id`),
  KEY `idx_target_id_type` (`target_id`,`target_type`),
  KEY `idx_media_type_flag` (`media_type`,`media_flag`),
  KEY `idx_sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='媒体信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_info`
--

LOCK TABLES `media_info` WRITE;
/*!40000 ALTER TABLE `media_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_info`
--

DROP TABLE IF EXISTS `merchant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_info` (
  `merchant_id` varchar(50) NOT NULL COMMENT '商户ID',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `merchant_code` varchar(50) DEFAULT NULL COMMENT '商户代码',
  `logo` varchar(500) DEFAULT NULL COMMENT '商户 logo',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `sub_title` varchar(200) DEFAULT NULL COMMENT '副标题',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `area` varchar(50) DEFAULT NULL COMMENT '区域',
  `address` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `address_info` varchar(500) DEFAULT NULL COMMENT '详细地址信息（省市区+具体地址）',
  `link_man` varchar(50) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `business_hours` varchar(100) DEFAULT NULL COMMENT '营业时间',
  `longitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(200) DEFAULT NULL COMMENT '代理商名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`merchant_id`),
  UNIQUE KEY `uk_merchant_code` (`merchant_code`),
  KEY `idx_agent_id` (`agent_id`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_info`
--

LOCK TABLES `merchant_info` WRITE;
/*!40000 ALTER TABLE `merchant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_amount`
--

DROP TABLE IF EXISTS `order_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_amount` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '总金额(商品金额+邮费金额)',
  `goods_amount` decimal(10,2) DEFAULT NULL COMMENT '商品金额',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额（优惠掉的金额）',
  `discount_after_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠后金额（总金额-优惠金额）',
  `postage_amount` decimal(10,2) DEFAULT NULL COMMENT '邮费金额',
  `actual_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实际支付金额（优惠后金额+邮费金额），需要支付的金额',
  `user_coupon_id` varchar(50) DEFAULT NULL COMMENT '用户优惠券ID',
  `discount_name` varchar(200) DEFAULT NULL COMMENT '优惠名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单金额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_amount`
--

LOCK TABLES `order_amount` WRITE;
/*!40000 ALTER TABLE `order_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_container`
--

DROP TABLE IF EXISTS `order_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_container` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `container_id` varchar(50) DEFAULT NULL COMMENT '货柜ID',
  `container_name` varchar(50) DEFAULT NULL COMMENT '货柜名称',
  `container_code` varchar(50) DEFAULT NULL COMMENT '货柜编号',
  `grid_nos` varchar(200) DEFAULT NULL COMMENT '具体货柜格子编号，多个格子用逗号分隔',
  `status` int DEFAULT NULL COMMENT '状态 0待送货 1待取货 2已取货',
  `delivery_time` timestamp NULL DEFAULT NULL COMMENT '送货时间',
  `pickup_time` timestamp NULL DEFAULT NULL COMMENT '取货时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_id`),
  KEY `idx_order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单货柜信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_container`
--

LOCK TABLES `order_container` WRITE;
/*!40000 ALTER TABLE `order_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_deliver`
--

DROP TABLE IF EXISTS `order_deliver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_deliver` (
  `order_deliver_id` varchar(50) NOT NULL COMMENT 'OrderDeliverId',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `express_no` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `express_company_code` varchar(50) DEFAULT NULL COMMENT '快递公司编码',
  `express_company` varchar(50) DEFAULT NULL COMMENT '快递公司',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '发货商户ID',
  `merchant_name` varchar(50) DEFAULT NULL COMMENT '发货商户名称',
  `emp_id` varchar(50) DEFAULT NULL COMMENT '发货人ID',
  `emp_name` varchar(50) DEFAULT NULL COMMENT '发货人名称',
  `delivered_date` date DEFAULT NULL COMMENT '发货日期',
  `delivered_time` datetime DEFAULT NULL COMMENT '发货时间',
  `recipients_name` varchar(50) DEFAULT NULL COMMENT '收货人名称',
  `recipients_phone` varchar(50) DEFAULT NULL COMMENT '收货人手机号',
  `recipients_address_id` varchar(50) DEFAULT NULL COMMENT '收货地址的ID',
  `address` varchar(200) DEFAULT NULL COMMENT '具体收货地址',
  `area` varchar(50) DEFAULT NULL COMMENT '地区',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `sort` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT NULL COMMENT '状态 0:待签收 1已签收',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `postage_amount` decimal(10,2) DEFAULT '0.00' COMMENT '快递费用',
  `postage_template_id` varchar(50) DEFAULT NULL COMMENT '快递费用模板ID',
  `postage_template_name` varchar(50) DEFAULT NULL COMMENT '快递费用模板名称',
  `subscript_status` int DEFAULT NULL COMMENT '订阅状态 0 未订阅 1已订阅',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_deliver_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_order_no` (`order_no`),
  KEY `idx_express_no` (`express_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单发货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_deliver`
--

LOCK TABLES `order_deliver` WRITE;
/*!40000 ALTER TABLE `order_deliver` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_deliver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_deliver_goods`
--

DROP TABLE IF EXISTS `order_deliver_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_deliver_goods` (
  `order_deliver_goods_id` varchar(50) NOT NULL COMMENT 'OrderDeliverGoodsId',
  `order_deliver_id` varchar(50) DEFAULT NULL COMMENT '发货ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `goods_sku_id` varchar(50) DEFAULT NULL COMMENT '商品SKUID',
  `goods_sku_name` varchar(150) DEFAULT NULL COMMENT '商品SKU名称',
  `goods_sku_no` varchar(50) DEFAULT NULL COMMENT '商品SKU编号',
  `goods_count` int DEFAULT NULL COMMENT '商品数量',
  `goods_pic_url` varchar(200) DEFAULT NULL COMMENT '商品图片URL',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_deliver_goods_id`),
  KEY `idx_order_deliver_id` (`order_deliver_id`),
  KEY `idx_goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单发货商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_deliver_goods`
--

LOCK TABLES `order_deliver_goods` WRITE;
/*!40000 ALTER TABLE `order_deliver_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_deliver_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_goods`
--

DROP TABLE IF EXISTS `order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_goods` (
  `order_goods_id` varchar(50) NOT NULL COMMENT '订单商品ID',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_no` varchar(50) DEFAULT NULL COMMENT '商品编码',
  `goods_sku_id` varchar(50) DEFAULT NULL COMMENT '商品SKUID',
  `goods_sku_no` varchar(50) DEFAULT NULL COMMENT 'SKU编码',
  `goods_sku_name` varchar(150) DEFAULT NULL COMMENT '商品SKU名称',
  `goods_pic_url` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `goods_count` int DEFAULT NULL COMMENT '销售数量',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品原售价',
  `serial_no` varchar(50) DEFAULT NULL COMMENT '产品序列号',
  `goods_type` int DEFAULT '0' COMMENT '商品类型 0-普通商品 1-虚拟商品',
  `gift_flag` int DEFAULT '0' COMMENT '是否是赠品 0-否 1-是',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_goods_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_goods_id` (`goods_id`),
  KEY `idx_goods_sku_id` (`goods_sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_goods`
--

LOCK TABLES `order_goods` WRITE;
/*!40000 ALTER TABLE `order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `order_id` varchar(50) NOT NULL COMMENT 'orderId',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `user_third_account` varchar(50) DEFAULT NULL COMMENT '用户第三方账号，如微信openid',
  `user_phone` varchar(50) DEFAULT NULL COMMENT '用户电话',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `goods_sku_name` varchar(150) DEFAULT NULL COMMENT '商品SKU 名称',
  `goods_pic` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `goods_count` int DEFAULT NULL COMMENT '商品总数量',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `actual_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实际支付金额，实际需要支付的金额',
  `dispatch_type` int DEFAULT '1' COMMENT '配送方式：0 自提 1 快递 2 虚拟商品 3 送货上门 99 送到货柜',
  `invoice_flag` int DEFAULT '0' COMMENT '是否要发票 0未开发票，1已开票',
  `refund_status` int DEFAULT '0' COMMENT '退款状态 0：未退款，1：全部退款，2：部分退款',
  `refund_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `user_remark` varchar(200) DEFAULT NULL COMMENT '买家备注',
  `order_status` int DEFAULT '0' COMMENT '订单状态（0：待支付，1：已取消，2：待发货，3：待收货，4：已收货，5：退货中，6：退款中，7：已退款）',
  `order_channel` varchar(50) DEFAULT 'mall' COMMENT '订单渠道',
  `client_type` varchar(50) DEFAULT NULL COMMENT '客户端类型',
  `push_flag` int DEFAULT '0' COMMENT '订单推送状态 0：未推送，1：已推送',
  `order_remark` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `statistics_flag` int DEFAULT '0' COMMENT '统计状态 0未处理 1已处理',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商家ID',
  `merchant_name` varchar(50) DEFAULT NULL COMMENT '商家名称',
  `merchant_remark` varchar(200) DEFAULT NULL COMMENT '商家备注',
  `order_date` date DEFAULT NULL COMMENT '订单日期',
  `order_time` timestamp NULL DEFAULT NULL COMMENT '订单时间',
  `agent_id` varchar(50) DEFAULT NULL COMMENT '代理商ID',
  `agent_name` varchar(100) DEFAULT NULL COMMENT '代理商名称',
  `cancel_remark` varchar(200) DEFAULT NULL COMMENT '取消原因备注',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  `pickup_location_id` varchar(50) DEFAULT NULL COMMENT '提货点ID',
  `pickup_location_name` varchar(100) DEFAULT NULL COMMENT '提货点名称',
  `container_id` varchar(50) DEFAULT NULL COMMENT '货柜ID',
  `container_name` varchar(100) DEFAULT NULL COMMENT '货柜名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `idx_order_no` (`order_no`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_order_status` (`order_status`),
  KEY `idx_order_date` (`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_pay`
--

DROP TABLE IF EXISTS `order_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_pay` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `actual_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实际支付金额',
  `pay_status` int DEFAULT '0' COMMENT '支付状态 0：未支付，1：支付中，2：已支付，3：已取消，4：支付失败',
  `third_trade_no` varchar(50) DEFAULT NULL COMMENT '第三方交易编号',
  `pay_type` varchar(50) DEFAULT NULL COMMENT '支付类型，wechat,alipay,douyin,union,credit,balance',
  `pay_date` date DEFAULT NULL COMMENT '支付日期',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_id`),
  KEY `idx_pay_status` (`pay_status`),
  KEY `idx_third_trade_no` (`third_trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单支付';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_pay`
--

LOCK TABLES `order_pay` WRITE;
/*!40000 ALTER TABLE `order_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_pickup`
--

DROP TABLE IF EXISTS `order_pickup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_pickup` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `pickup_location_id` varchar(50) DEFAULT NULL COMMENT '提货点Id',
  `pickup_location_name` varchar(100) DEFAULT NULL COMMENT '提货点名称',
  `pickup_code` varchar(50) DEFAULT NULL COMMENT '提货码',
  `pickup_user` varchar(50) DEFAULT NULL COMMENT '提货人',
  `pickup_phone` varchar(50) DEFAULT NULL COMMENT '提货人电话',
  `pickup_time` timestamp NULL DEFAULT NULL COMMENT '提货时间',
  `pickup_status` int DEFAULT '0' COMMENT '提货状态 0待提货 1已提货 2已取消',
  `pickup_remark` varchar(255) DEFAULT NULL COMMENT '提货备注',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `area` varchar(100) DEFAULT NULL COMMENT '区',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `address_info` varchar(100) DEFAULT NULL COMMENT '提货点完整地址',
  `link_man` varchar(100) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `longitude` varchar(100) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(100) DEFAULT NULL COMMENT '纬度',
  `received_amount` decimal(10,2) DEFAULT NULL COMMENT '实收金额',
  `deliver_id` varchar(50) DEFAULT NULL COMMENT '发货人ID',
  `deliver_name` varchar(50) DEFAULT NULL COMMENT '发货人姓名',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_id`),
  KEY `idx_order_no` (`order_no`),
  KEY `idx_pickup_code` (`pickup_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单提货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_pickup`
--

LOCK TABLES `order_pickup` WRITE;
/*!40000 ALTER TABLE `order_pickup` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_pickup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_refund`
--

DROP TABLE IF EXISTS `order_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_refund` (
  `order_refund_id` varchar(50) NOT NULL COMMENT 'OrderRefundId',
  `order_refund_no` varchar(50) DEFAULT NULL COMMENT '退款单号',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `order_pay_id` varchar(50) DEFAULT NULL COMMENT '支付记录ID',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `user_phone` varchar(50) DEFAULT NULL COMMENT '用户电话',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `refund_type` int DEFAULT '0' COMMENT '退款类型 0 仅退款 1 退货退款',
  `refund_source` int DEFAULT '0' COMMENT '退款来源 0 用户申请 1 商家发起 2 系统发起',
  `refund_status` int DEFAULT '0' COMMENT '退款状态 0 待审核 1 审核拒绝 2 待退货 3 待收货 4 退款中 5 已退款 6 已关闭',
  `refund_channel` int DEFAULT '0' COMMENT '退款渠道 0 原路退回 1 退至余额 2 线下打款',
  `refund_reason_type` int DEFAULT '0' COMMENT '退款原因类型',
  `refund_reason` varchar(200) DEFAULT NULL COMMENT '退款原因说明',
  `apply_remark` varchar(200) DEFAULT NULL COMMENT '退款申请备注（用户填写）',
  `audit_remark` varchar(200) DEFAULT NULL COMMENT '退款审核备注（客服填写）',
  `handle_remark` varchar(200) DEFAULT NULL COMMENT '退款处理备注（财务填写）',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款申请金额',
  `refund_freight_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款运费金额',
  `refund_credit_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款积分抵扣金额',
  `refund_coupon_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款优惠券抵扣金额',
  `refund_evidence_pics` varchar(500) DEFAULT NULL COMMENT '退款凭证图片，多个以逗号分隔',
  `return_express_company` varchar(100) DEFAULT NULL COMMENT '退回物流公司',
  `return_express_no` varchar(50) DEFAULT NULL COMMENT '退回物流单号',
  `auditor_id` varchar(50) DEFAULT NULL COMMENT '审核人ID',
  `auditor_name` varchar(50) DEFAULT NULL COMMENT '审核人姓名',
  `audit_time` datetime DEFAULT NULL COMMENT '审核时间',
  `handler_id` varchar(50) DEFAULT NULL COMMENT '处理人ID',
  `handler_name` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `refund_trade_no` varchar(50) DEFAULT NULL COMMENT '退款交易号',
  `refund_complete_time` datetime DEFAULT NULL COMMENT '退款完成时间',
  `receive_confirm_time` datetime DEFAULT NULL COMMENT '用户收货确认时间（用于退货退款）',
  `contact_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `contact_name` varchar(50) DEFAULT NULL COMMENT '联系人',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_refund_id`),
  KEY `idx_order_refund_no` (`order_refund_no`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_order_no` (`order_no`),
  KEY `idx_refund_status` (`refund_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单退款';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_refund`
--

LOCK TABLES `order_refund` WRITE;
/*!40000 ALTER TABLE `order_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_refund_goods`
--

DROP TABLE IF EXISTS `order_refund_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_refund_goods` (
  `order_refund_goods_id` varchar(50) NOT NULL COMMENT '订单退款商品ID',
  `order_refund_id` varchar(50) DEFAULT NULL COMMENT '退款ID',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `order_goods_id` varchar(50) DEFAULT NULL COMMENT '订单商品记录ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `goods_sku_id` varchar(50) DEFAULT NULL COMMENT '商品SKU ID',
  `goods_name` varchar(150) DEFAULT NULL COMMENT '商品名称',
  `goods_sku_name` varchar(200) DEFAULT NULL COMMENT '商品SKU 名称',
  `goods_pic` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `goods_spec_json` text COMMENT '商品规格JSON（用于回显）',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `goods_actual_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `refund_real_amount` decimal(10,2) DEFAULT '0.00' COMMENT '实际退款金额',
  `return_quantity` int DEFAULT NULL COMMENT '退货数量',
  `return_finish_time` datetime DEFAULT NULL COMMENT '退货完成时间',
  `express_company` varchar(100) DEFAULT NULL COMMENT '快递公司',
  `express_company_code` varchar(100) DEFAULT NULL COMMENT '快递公司代码',
  `express_no` varchar(100) DEFAULT NULL COMMENT '快递单号',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`order_refund_goods_id`),
  KEY `idx_order_refund_id` (`order_refund_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单退款商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_refund_goods`
--

LOCK TABLES `order_refund_goods` WRITE;
/*!40000 ALTER TABLE `order_refund_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_refund_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
  `dict_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀛楀吀ID',
  `dict_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀛楀吀鍚嶇О',
  `dict_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀛楀吀缂栫爜',
  `module_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '妯″潡鍚嶇О',
  `dict_describe` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀛楀吀鎻忚堪',
  `forbidden_flag` int DEFAULT '0' COMMENT '绂佺敤鐘舵? 0鍙?敤锛?绂佺敤',
  `insert_time` datetime DEFAULT NULL COMMENT '鎻掑叆鏃堕棿',
  `last_update_time` datetime DEFAULT NULL COMMENT '鏈?悗鏇存柊鏃堕棿',
  `deleted` int DEFAULT '0' COMMENT '閫昏緫鍒犻櫎鏍囪?',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `uk_dict_name` (`dict_name`),
  UNIQUE KEY `uk_dict_code` (`dict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='瀛楀吀琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_item`
--

DROP TABLE IF EXISTS `sys_dict_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_item` (
  `dict_item_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀛楀吀椤笽D',
  `dict_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍏宠仈鐨勫瓧鍏窱D',
  `dict_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀛楀吀key',
  `dict_value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀛楀吀value',
  `forbidden_flag` int DEFAULT '0' COMMENT '绂佺敤鐘舵? 0鍙?敤锛?绂佺敤',
  `insert_time` datetime DEFAULT NULL COMMENT '鎻掑叆鏃堕棿',
  `last_update_time` datetime DEFAULT NULL COMMENT '鏈?悗鏇存柊鏃堕棿',
  `deleted` int DEFAULT '0' COMMENT '閫昏緫鍒犻櫎鏍囪?',
  PRIMARY KEY (`dict_item_id`),
  UNIQUE KEY `uk_dict_key` (`dict_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='瀛楀吀椤硅〃';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_item`
--

LOCK TABLES `sys_dict_item` WRITE;
/*!40000 ALTER TABLE `sys_dict_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dict_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `user_account_id` varchar(50) NOT NULL COMMENT 'UserAccountId',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `type` int DEFAULT NULL COMMENT '类型（0：微信，1：QQ，2：微博，3：支付宝）',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_account_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_type_account_no` (`type`,`account_no`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='账号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `user_address_id` varchar(50) NOT NULL COMMENT 'UserAddressId',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `address_name` varchar(100) DEFAULT NULL COMMENT '地址名称',
  `recipient_name` varchar(50) DEFAULT NULL COMMENT '收货人名称',
  `recipient_phone` varchar(20) DEFAULT NULL COMMENT '收货人手机号',
  `default_status` int NOT NULL DEFAULT '0' COMMENT '默认 0不是 1默认',
  `code` varchar(20) DEFAULT NULL COMMENT '省市区编码',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `area` varchar(20) DEFAULT NULL COMMENT '区域',
  `province_city_area` varchar(100) DEFAULT NULL COMMENT '省份-城市-区域',
  `address` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  `geohash` varchar(200) DEFAULT NULL COMMENT '经纬度的geohash码',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_address_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_default_status` (`default_status`),
  KEY `idx_forbidden_flag` (`forbidden_flag`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='收货地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_detail` (
  `user_id` varchar(50) NOT NULL COMMENT 'userId',
  `real_name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `identity_no` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `identity_front` varchar(200) DEFAULT NULL COMMENT '身份证正面',
  `identity_back` varchar(200) DEFAULT NULL COMMENT '身份证反面',
  `passport_no` varchar(50) DEFAULT NULL COMMENT '护照号码',
  `passport_front` varchar(200) DEFAULT NULL COMMENT '护照正面',
  `passport_back` varchar(200) DEFAULT NULL COMMENT '护照反面',
  `census_register` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `area` varchar(20) DEFAULT NULL COMMENT '区县',
  `province_city_area` varchar(50) DEFAULT NULL COMMENT '省市区',
  `dwell_address` varchar(200) DEFAULT NULL COMMENT '居住地址',
  `age_range` varchar(20) DEFAULT NULL COMMENT '年龄范围',
  `age` int DEFAULT NULL COMMENT '具体年龄',
  `education` varchar(20) DEFAULT NULL COMMENT '学历',
  `profession` varchar(20) DEFAULT NULL COMMENT '职业',
  `position` varchar(20) DEFAULT NULL COMMENT '职位',
  `other_day` varchar(20) DEFAULT NULL COMMENT '其他特殊日子',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_id`),
  KEY `idx_identity_no` (`identity_no`),
  KEY `idx_passport_no` (`passport_no`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` varchar(50) NOT NULL COMMENT 'userId',
  `user_no` varchar(50) DEFAULT NULL COMMENT '会员编号',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  `gender` varchar(20) DEFAULT NULL COMMENT '性别',
  `signature` varchar(50) DEFAULT NULL COMMENT '个性签名',
  `real_status` int NOT NULL DEFAULT '0' COMMENT '实名认证状态（0：未认证，1：已认证）',
  `vip_code` varchar(50) DEFAULT NULL COMMENT '会员编码',
  `vip_name` varchar(50) DEFAULT NULL COMMENT 'VIP名称',
  `vip_expire_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `referrer_id` varchar(100) DEFAULT NULL COMMENT '推荐人ID',
  `referrer_name` varchar(50) DEFAULT NULL COMMENT '推荐人姓名',
  `forbidden_flag` int NOT NULL DEFAULT '0' COMMENT '禁用状态 0可用，1禁用',
  `flag` varchar(100) DEFAULT NULL COMMENT '标识',
  `ext_flag` varchar(100) DEFAULT NULL COMMENT '扩展标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注信息',
  `channel_id` varchar(100) DEFAULT NULL COMMENT '渠道ID',
  `channel_name` varchar(200) DEFAULT NULL COMMENT '渠道名称',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_user_no` (`user_no`),
  UNIQUE KEY `uk_phone` (`phone`),
  UNIQUE KEY `uk_email` (`email`),
  KEY `idx_referrer_id` (`referrer_id`),
  KEY `idx_channel_id` (`channel_id`),
  KEY `idx_forbidden_flag` (`forbidden_flag`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_value`
--

DROP TABLE IF EXISTS `user_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_value` (
  `user_id` varchar(100) NOT NULL COMMENT 'UserID',
  `total_credit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总积分',
  `frozen_credit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '冻结积分',
  `available_credit` decimal(10,2) GENERATED ALWAYS AS ((`total_credit` - `frozen_credit`)) STORED COMMENT '可用积分',
  `total_balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总余额',
  `frozen_balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '冻结余额',
  `available_balance` decimal(10,2) GENERATED ALWAYS AS ((`total_balance` - `frozen_balance`)) STORED COMMENT '可用余额',
  `empirical` decimal(10,2) DEFAULT NULL COMMENT '经验值',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_id`),
  KEY `idx_deleted` (`deleted`),
  CONSTRAINT `chk_user_value_balance` CHECK ((`total_balance` >= `frozen_balance`)),
  CONSTRAINT `chk_user_value_credit` CHECK ((`total_credit` >= `frozen_credit`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员价值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_value`
--

LOCK TABLES `user_value` WRITE;
/*!40000 ALTER TABLE `user_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_value_log`
--

DROP TABLE IF EXISTS `user_value_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_value_log` (
  `user_value_log_id` varchar(50) NOT NULL COMMENT 'UserValueLogId',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `type` int DEFAULT NULL COMMENT '类型（0：积分，1:余额，2:经验值）',
  `change_date` date DEFAULT NULL COMMENT '变更日期',
  `change_time` timestamp NULL DEFAULT NULL COMMENT '变更时间',
  `change_value` decimal(10,2) DEFAULT NULL COMMENT '变更的值',
  `change_direction` int DEFAULT NULL COMMENT '变动方向（0：增加，1：减少，2：冻结，3：实扣，4：释放）',
  `change_case` varchar(200) DEFAULT NULL COMMENT '变更备注',
  `biz_type` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `biz_id` varchar(200) DEFAULT NULL COMMENT '关联业务ID',
  `sync_status` int DEFAULT NULL COMMENT '同步状态（0：待同步，1：已同步）',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '删除标记，0否 1是',
  PRIMARY KEY (`user_value_log_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_type` (`type`),
  KEY `idx_change_date` (`change_date`),
  KEY `idx_biz_type_id` (`biz_type`,`biz_id`),
  KEY `idx_sync_status` (`sync_status`),
  KEY `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='价值变更记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_value_log`
--

LOCK TABLES `user_value_log` WRITE;
/*!40000 ALTER TABLE `user_value_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_value_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eb_demo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-22 17:56:18
