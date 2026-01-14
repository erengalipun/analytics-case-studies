-- =====================================================
-- Purpose:
-- Standardize column naming conventions and improve
-- schema readability for analytical querying.
--
-- Approach:
-- - Convert columns to snake_case
-- - Ensure case-insensitive querying
--
-- Note:
-- Column renaming is executed as separate ALTER TABLE
-- statements due to PostgreSQL syntax requirements.
-- =====================================================

ALTER TABLE hms_production_data RENAME COLUMN "Job_ID" TO job_id;
ALTER TABLE hms_production_data RENAME COLUMN "Machine_ID" TO machine_id;
ALTER TABLE hms_production_data RENAME COLUMN "Operation_Type" TO operation_type;
ALTER TABLE hms_production_data RENAME COLUMN "Material_Used" TO material_used;
ALTER TABLE hms_production_data RENAME COLUMN "Processing_Time" TO processing_time;
ALTER TABLE hms_production_data RENAME COLUMN "Energy_Consumption" TO energy_consumption;
ALTER TABLE hms_production_data RENAME COLUMN "Machine_Availability" TO machine_availability;
ALTER TABLE hms_production_data RENAME COLUMN "Scheduled_Start" TO scheduled_start;
ALTER TABLE hms_production_data RENAME COLUMN "Scheduled_End" TO scheduled_end;
ALTER TABLE hms_production_data RENAME COLUMN "Actual_Start" TO actual_start;
ALTER TABLE hms_production_data RENAME COLUMN "Actual_End" TO actual_end;
ALTER TABLE hms_production_data RENAME COLUMN "Job_Status" TO job_status;
ALTER TABLE hms_production_data RENAME COLUMN "Optimization_Category" TO optimization_category;