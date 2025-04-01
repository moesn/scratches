DO $$
DECLARE
tbl_info RECORD;
BEGIN
FOR tbl_info IN (
        SELECT
            t.table_schema,
            t.table_name,
            pk.primary_key_column,
            (SELECT column_name
             FROM information_schema.columns
             WHERE table_schema = t.table_schema
               AND table_name = t.table_name
               AND ordinal_position = 1) AS first_column
        FROM information_schema.tables t
        LEFT JOIN (
            SELECT
                tc.table_schema,
                tc.table_name,
                MAX(kcu.column_name) AS primary_key_column
            FROM information_schema.table_constraints tc
            JOIN information_schema.key_column_usage kcu
                ON tc.constraint_name = kcu.constraint_name
            WHERE tc.constraint_type = 'PRIMARY KEY'
                AND tc.table_schema = 'public' -- 指定schema
            GROUP BY tc.table_schema, tc.table_name
            HAVING COUNT(kcu.column_name) = 1
        ) pk ON t.table_schema = pk.table_schema AND t.table_name = pk.table_name
        WHERE t.table_type = 'BASE TABLE'
          AND t.table_schema = 'public' -- 指定schema
    ) LOOP
        -- 主键字段删除逻辑
        IF tbl_info.primary_key_column IS NOT NULL THEN
            EXECUTE format(
                'DELETE FROM %I.%I WHERE LENGTH(%I::text) = 26',
                tbl_info.table_schema,
                tbl_info.table_name,
                tbl_info.primary_key_column
            );
            RAISE NOTICE '表 "%": 主键字段 "%" 删除完成',
                tbl_info.table_name,
                tbl_info.primary_key_column;
END IF;

        -- 首字段删除逻辑
        IF tbl_info.first_column IS NOT NULL THEN
            EXECUTE format(
                'DELETE FROM %I.%I WHERE LENGTH(%I::text) = 26',
                tbl_info.table_schema,
                tbl_info.table_name,
                tbl_info.first_column
            );
            RAISE NOTICE '表 "%": 首字段 "%" 删除完成',
                tbl_info.table_name,
                tbl_info.first_column;
END IF;
END LOOP;
END $$;
