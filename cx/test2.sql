
-- ----------------------------
-- Indexes structure for table cst_asset_db
-- ----------------------------
CREATE INDEX "tas_asset_db_service_business_id_idx" ON "public"."cst_asset_db" USING btree (
    "business_id" "pg_catalog"."int8_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_asset_db
-- ----------------------------
ALTER TABLE "public"."cst_asset_db" ADD CONSTRAINT "tas_asset_db_service_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_asset_misc
-- ----------------------------
CREATE INDEX "tas_asset_misc_service_idx_01" ON "public"."cst_asset_misc" USING btree (
    "checksum" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "asset_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_asset_misc
-- ----------------------------
ALTER TABLE "public"."cst_asset_misc" ADD CONSTRAINT "tas_asset_misc_service_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_business_system
-- ----------------------------
ALTER TABLE "public"."cst_business_system" ADD CONSTRAINT "sys_buz_system_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_strategy
-- ----------------------------
ALTER TABLE "public"."cst_compliance_strategy" ADD CONSTRAINT "dsmc_compliance_strategy_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_strategy_attr
-- ----------------------------
ALTER TABLE "public"."cst_compliance_strategy_attr" ADD CONSTRAINT "dsmc_compliance_strategy_attr_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_strategy_condition
-- ----------------------------
ALTER TABLE "public"."cst_compliance_strategy_condition" ADD CONSTRAINT "dsmc_compliance_strategy_condition_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_strategy_item_rel
-- ----------------------------
ALTER TABLE "public"."cst_compliance_strategy_item_rel" ADD CONSTRAINT "dsmc_compliance_strategy_item_rel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_task
-- ----------------------------
ALTER TABLE "public"."cst_compliance_task" ADD CONSTRAINT "dsmc_compliance_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_task_business_resource
-- ----------------------------
ALTER TABLE "public"."cst_compliance_task_business_resource" ADD CONSTRAINT "dsmc_compliance_task_business_resource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_task_resource_rel
-- ----------------------------
ALTER TABLE "public"."cst_compliance_task_resource_rel" ADD CONSTRAINT "dsmc_compliance_task_resource_rel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_compliance_template
-- ----------------------------
ALTER TABLE "public"."cst_compliance_template" ADD CONSTRAINT "dsmc_compliance_template_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_control_strategy
-- ----------------------------
ALTER TABLE "public"."cst_control_strategy" ADD CONSTRAINT "dsmc_control_strategy_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_control_strategy_standard_rel
-- ----------------------------
ALTER TABLE "public"."cst_control_strategy_standard_rel" ADD CONSTRAINT "dsmc_control_strategy_standard_rel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_data_manager
-- ----------------------------
CREATE INDEX "idx_business_id" ON "public"."cst_data_manager" USING btree (
    "business_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE INDEX "idx_db_id" ON "public"."cst_data_manager" USING btree (
    "db_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE INDEX "idx_table_id" ON "public"."cst_data_manager" USING btree (
    "table_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE UNIQUE INDEX "idx_unique" ON "public"."cst_data_manager" USING btree (
    "seq" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_data_manager
-- ----------------------------
ALTER TABLE "public"."cst_data_manager" ADD CONSTRAINT "tas_asset_db_manager_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_desensitive_verification_strategy
-- ----------------------------
CREATE INDEX "uni_static" ON "public"."cst_desensitive_verification_strategy" USING btree (
    "asset_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "strategy_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE UNIQUE INDEX "uni_static_strategy_id" ON "public"."cst_desensitive_verification_strategy" USING btree (
    "business_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "strategy_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "asset_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "strategy_scope" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_desensitive_verification_strategy
-- ----------------------------
ALTER TABLE "public"."cst_desensitive_verification_strategy" ADD CONSTRAINT "desensitive_verification_strategy_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_desensitive_verification_strategy_details
-- ----------------------------
CREATE INDEX "strategy_id_index" ON "public"."cst_desensitive_verification_strategy_details" USING btree (
    "strategy_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_desensitive_verification_strategy_details
-- ----------------------------
ALTER TABLE "public"."cst_desensitive_verification_strategy_details" ADD CONSTRAINT "desensitive_verification_strategy_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_desensitive_verification_strategy_object
-- ----------------------------
ALTER TABLE "public"."cst_desensitive_verification_strategy_object" ADD CONSTRAINT "desensitive_verification_strategy_object_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_desensitive_verification_strategy_rule
-- ----------------------------
ALTER TABLE "public"."cst_desensitive_verification_strategy_rule" ADD CONSTRAINT "desensitive_verification_strategy_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_external_api
-- ----------------------------
ALTER TABLE "public"."cst_external_api" ADD CONSTRAINT "tas_asset_app_api_ext_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_external_api_relation
-- ----------------------------
CREATE UNIQUE INDEX "unique_api_db" ON "public"."cst_external_api_relation" USING btree (
    "api_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "db_service_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE UNIQUE INDEX "unique_api_partner" ON "public"."cst_external_api_relation" USING btree (
    "api_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "api_partner_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_external_api_relation
-- ----------------------------
ALTER TABLE "public"."cst_external_api_relation" ADD CONSTRAINT "tas_asset_app_api_relation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_external_partner
-- ----------------------------
CREATE INDEX "idx_name" ON "public"."cst_external_partner" USING btree (
    "org_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE UNIQUE INDEX "unique_name" ON "public"."cst_external_partner" USING btree (
    "org_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "system_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_external_partner
-- ----------------------------
ALTER TABLE "public"."cst_external_partner" ADD CONSTRAINT "tas_asset_app_api_partner_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_key_position_person
-- ----------------------------
ALTER TABLE "public"."cst_key_position_person" ADD CONSTRAINT "dsmc_key_position_person_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_life_cycle_mark
-- ----------------------------
ALTER TABLE "public"."cst_life_cycle_mark" ADD CONSTRAINT "dsmc_life_cycle_mark_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_safe_standard
-- ----------------------------
ALTER TABLE "public"."cst_safe_standard" ADD CONSTRAINT "dsmc_safe_standard_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_safe_standard_catalog
-- ----------------------------
ALTER TABLE "public"."cst_safe_standard_catalog" ADD CONSTRAINT "dsmc_safe_standard_catalog_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_safe_standard_interpret
-- ----------------------------
ALTER TABLE "public"."cst_safe_standard_interpret" ADD CONSTRAINT "dsmc_safe_standard_interpret_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_safe_standard_item
-- ----------------------------
ALTER TABLE "public"."cst_safe_standard_item" ADD CONSTRAINT "dsmc_safe_standard_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_assess_order
-- ----------------------------
ALTER TABLE "public"."cst_scc_assess_order" ADD CONSTRAINT "scc_assess_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_assess_order_log
-- ----------------------------
ALTER TABLE "public"."cst_scc_assess_order_log" ADD CONSTRAINT "scc_assess_order_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_assess_task
-- ----------------------------
ALTER TABLE "public"."cst_scc_assess_task" ADD CONSTRAINT "scc_assess_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_assess_task_log
-- ----------------------------
ALTER TABLE "public"."cst_scc_assess_task_log" ADD CONSTRAINT "scc_assess_task_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_buz_upload_error_info
-- ----------------------------
ALTER TABLE "public"."cst_scc_buz_upload_error_info" ADD CONSTRAINT "scc_buz_upload_error_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_buz_upload_log
-- ----------------------------
ALTER TABLE "public"."cst_scc_buz_upload_log" ADD CONSTRAINT "scc_buz_upload_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_compliance_target_file
-- ----------------------------
ALTER TABLE "public"."cst_scc_compliance_target_file" ADD CONSTRAINT "scc_compliance_target_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_scc_db_data_compare_result_may_delete
-- ----------------------------
CREATE INDEX "idx_compare_result" ON "public"."cst_scc_db_data_compare_result_may_delete" USING btree (
    "compare_result" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );
CREATE INDEX "idx_tenant_id" ON "public"."cst_scc_db_data_compare_result_may_delete" USING btree (
    "tenant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_scc_db_data_compare_result_may_delete
-- ----------------------------
ALTER TABLE "public"."cst_scc_db_data_compare_result_may_delete" ADD CONSTRAINT "scc_db_data_compare_result_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_lifecycle_data
-- ----------------------------
ALTER TABLE "public"."cst_scc_lifecycle_data" ADD CONSTRAINT "scc_lifecycle_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_manage_field
-- ----------------------------
ALTER TABLE "public"."cst_scc_manage_field" ADD CONSTRAINT "scc_manage_field_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_manage_field_map
-- ----------------------------
ALTER TABLE "public"."cst_scc_manage_field_map" ADD CONSTRAINT "scc_manage_field_map_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_scc_manage_template
-- ----------------------------
CREATE INDEX "my_idx" ON "public"."cst_scc_manage_template" USING btree (
    "template_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "template_file_path" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_scc_manage_template
-- ----------------------------
ALTER TABLE "public"."cst_scc_manage_template" ADD CONSTRAINT "scc_manage_template_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_manage_template_type
-- ----------------------------
ALTER TABLE "public"."cst_scc_manage_template_type" ADD CONSTRAINT "scc_manage_template_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_order
-- ----------------------------
ALTER TABLE "public"."cst_scc_order" ADD CONSTRAINT "scc_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_order_detail
-- ----------------------------
ALTER TABLE "public"."cst_scc_order_detail" ADD CONSTRAINT "scc_order_detail_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_order_log
-- ----------------------------
ALTER TABLE "public"."cst_scc_order_log" ADD CONSTRAINT "scc_order_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_order_map
-- ----------------------------
ALTER TABLE "public"."cst_scc_order_map" ADD CONSTRAINT "scc_order_map_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_risk_details
-- ----------------------------
ALTER TABLE "public"."cst_scc_risk_details" ADD CONSTRAINT "scc_risk_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_risk_order
-- ----------------------------
ALTER TABLE "public"."cst_scc_risk_order" ADD CONSTRAINT "scc_risk_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_risk_order_log
-- ----------------------------
ALTER TABLE "public"."cst_scc_risk_order_log" ADD CONSTRAINT "scc_risk_order_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_risk_type
-- ----------------------------
ALTER TABLE "public"."cst_scc_risk_type" ADD CONSTRAINT "scc_risk_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_task
-- ----------------------------
ALTER TABLE "public"."cst_scc_task" ADD CONSTRAINT "scc_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_scc_task_check
-- ----------------------------
ALTER TABLE "public"."cst_scc_task_check" ADD CONSTRAINT "scc_task_check_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cst_scc_upload_db_data
-- ----------------------------
CREATE INDEX "cus_idx" ON "public"."cst_scc_upload_db_data" USING btree (
    "task_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
    "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
    );

-- ----------------------------
-- Primary Key structure for table cst_scc_upload_db_data
-- ----------------------------
ALTER TABLE "public"."cst_scc_upload_db_data" ADD CONSTRAINT "scc_upload_db_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cst_unknown_data_asset_whitelist
-- ----------------------------
ALTER TABLE "public"."cst_unknown_data_asset_whitelist" ADD CONSTRAINT "dsmc_asset__unknown_data_asset_whitelist_pkey" PRIMARY KEY ("id");
