//隐藏功能节点
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = NULL, "CODE_" = 'RATE', "NAME_" = '评级中心', "ICON" = 'bsfit-icon-ofahechazhongxin', "URL" = 'main.html', "OPEN_WAY" = NULL, "TYPE_" = 'platform', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '5', "EXTRA_INFO" = NULL, "URL_PATH" = NULL, "URL_NAME" = NULL, "META" = NULL, "COMMENTS" = '评级' WHERE "ID_" = 'RATE';
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'sdm.opt', "CODE_" = 'DOM', "NAME_" = '规则回测', "ICON" = NULL, "URL" = '/testRuleBack', "OPEN_WAY" = NULL, "TYPE_" = 'menu', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '3', "EXTRA_INFO" = '10', "URL_PATH" = '/testRuleBack', "URL_NAME" = 'testRuleBack', "META" = '{"platform":"DOM"}', "COMMENTS" = NULL WHERE "ID_" = 'DOM';
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'bank', "CODE_" = 'SDM.MODEL.MANAGE', "NAME_" = '风险模型', "ICON" = NULL, "URL" = '/model', "OPEN_WAY" = NULL, "TYPE_" = 'menu', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '2', "EXTRA_INFO" = NULL, "URL_PATH" = '/model', "URL_NAME" = 'ModelList', "META" = NULL, "COMMENTS" = NULL WHERE "ID_" = 'model_manage';
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'pa.u.monitor', "CODE_" = 'OPS.GRAFANA', "NAME_" = '系统监控', "ICON" = NULL, "URL" = '/ss/grafana/d/monitor_platform', "OPEN_WAY" = 'NEW', "TYPE_" = 'menu', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '19', "EXTRA_INFO" = NULL, "URL_PATH" = '/ss/grafana/d/monitor_platform', "URL_NAME" = 'grafana', "META" = NULL, "COMMENTS" = NULL WHERE "ID_" = 'GRAFANA';
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'pa.u.monitor', "CODE_" = 'OPS.KIBANA', "NAME_" = '日志监控', "ICON" = NULL, "URL" = '/ss/kibana', "OPEN_WAY" = 'NEW', "TYPE_" = 'menu', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '20', "EXTRA_INFO" = NULL, "URL_PATH" = '/ss/kibana', "URL_NAME" = 'kibana', "META" = NULL, "COMMENTS" = NULL WHERE "ID_" = 'KIBANA';
UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'pa.u.monitor', "CODE_" = 'PIPEACE.MONITOR.REDIS_MENU', "NAME_" = 'Redis', "ICON" = NULL, "URL" = '/pipeace/monitor/redis', "OPEN_WAY" = NULL, "TYPE_" = 'menu', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '16', "EXTRA_INFO" = NULL, "URL_PATH" = '/pipeace/monitor/redis', "URL_NAME" = 'monitor_redis', "META" = NULL, "COMMENTS" = NULL WHERE "ID_" = 'pa.u.monitor.redis';
//隐藏复核节点
update sd_cfg_scene_property set value_ = '{"feature": "FE,FD","rule": "RE,RU,RD","IMPEXP":"IMP,EXP","systemSwitch":"ON,OFF"}' where property = 'auditItem'

UPDATE "PJ_SDM"."SYS_MENU_RESOURCE" SET "PARENT_ID" = 'MGR.CHECKLIST.P', "CODE_" = 'MGR.CHECKLIST.P.AUDIT', "NAME_" = '批量审核', "ICON" = NULL, "URL" = NULL, "OPEN_WAY" = NULL, "TYPE_" = 'button', "IS_ENABLED" = '0', "CREATE_TIME" = NULL, "UPDATE_TIME" = NULL, "ORDER_NUM" = '1', "EXTRA_INFO" = NULL, "URL_PATH" = NULL, "URL_NAME" = NULL, "META" = NULL, "COMMENTS" = NULL WHERE "ID_" = 'MGR.CHECKLIST.P.AUDIT';

====================================================================================================================================================
//核查单审核模块增加致电情况
ALTER TABLE RAMS_OL_CHECKLIST_SUBMIT ADD isCalled varchar2(2);
//核查单审核模块增加再次跟进时间
ALTER TABLE RAMS_OL_CHECKLIST_SUBMIT ADD RESCHEDULE_TIME TIMESTAMP;

//风险定性枚举修改
UPDATE "PJ_MGR"."SYSTEM_CONFIG" SET "CONFIG_TYPE" = 'risk_qualitative', "TYPE_NAME" = '确认状态', "CONFIG_CODE" = '2', "CONFIG_VALUE" = 'SAVE PENDING', "ENABLED" = '1', "REMARK" = '核查单列表确认状态', "ORDER_BY" = '2', "CREATE_TIME" = TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), "UPDATE_TIME" = TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), "MODIFER" = 'admin' WHERE "CONFIG_ID" = '343';
UPDATE "PJ_MGR"."SYSTEM_CONFIG" SET "CONFIG_TYPE" = 'risk_qualitative', "TYPE_NAME" = '确认状态', "CONFIG_CODE" = '1', "CONFIG_VALUE" = 'CONFIRMED_FRAUD', "ENABLED" = '1', "REMARK" = '核查单列表确认状态', "ORDER_BY" = '1', "CREATE_TIME" = TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), "UPDATE_TIME" = TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), "MODIFER" = 'admin' WHERE "CONFIG_ID" = '344';
INSERT INTO "PJ_MGR"."SYSTEM_CONFIG"("CONFIG_ID", "CONFIG_TYPE", "TYPE_NAME", "CONFIG_CODE", "CONFIG_VALUE", "ENABLED", "REMARK", "ORDER_BY", "CREATE_TIME", "UPDATE_TIME", "MODIFER") VALUES ('384', 'risk_qualitative', '确认状态', '3', 'VERIFIED ACTIVITY', '1', '核查单列表确认状态', '3', TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'admin');
INSERT INTO "PJ_MGR"."SYSTEM_CONFIG"("CONFIG_ID", "CONFIG_TYPE", "TYPE_NAME", "CONFIG_CODE", "CONFIG_VALUE", "ENABLED", "REMARK", "ORDER_BY", "CREATE_TIME", "UPDATE_TIME", "MODIFER") VALUES ('385', 'risk_qualitative', '确认状态', '4', 'SUPECTED GENUINE', '1', '核查单列表确认状态', '4', TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'admin');
INSERT INTO "PJ_MGR"."SYSTEM_CONFIG"("CONFIG_ID", "CONFIG_TYPE", "TYPE_NAME", "CONFIG_CODE", "CONFIG_VALUE", "ENABLED", "REMARK", "ORDER_BY", "CREATE_TIME", "UPDATE_TIME", "MODIFER") VALUES ('386', 'risk_qualitative', '确认状态', '5', 'RESCHEDULE', '1', '核查单列表确认状态', '5', TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'admin');
INSERT INTO "PJ_MGR"."SYSTEM_CONFIG"("CONFIG_ID", "CONFIG_TYPE", "TYPE_NAME", "CONFIG_CODE", "CONFIG_VALUE", "ENABLED", "REMARK", "ORDER_BY", "CREATE_TIME", "UPDATE_TIME", "MODIFER") VALUES ('387', 'check_status', '受理状态', '4', '未完结', '1', '核查单列表', '3', TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2015-01-01 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'admin');
====================================
ATMP增加字段BANKOPER
ALTER TABLE "PJ_MGR"."BANK_OPER" 
ADD ("TRANS_TYPE" VARCHAR2(4))
ADD ("ARD_DECSN" VARCHAR2(1))
ADD ("CARD_ISNUMBER" VARCHAR2(2) DEFAULT '');

COMMENT ON COLUMN "PJ_MGR"."BANK_OPER"."TRANS_TYPE" IS '交易子类型';

COMMENT ON COLUMN "PJ_MGR"."BANK_OPER"."ARD_DECSN" IS 'ARD决定';

COMMENT ON COLUMN "PJ_MGR"."BANK_OPER"."CARD_ISNUMBER" IS '发卡号码';

