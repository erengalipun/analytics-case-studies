-- =====================================================
-- Purpose:
-- Assess whether machine allocation or operation types
-- contribute to differences in production efficiency.
--
-- Approach:
-- 1. Analyze job distribution by machine
-- 2. Analyze job distribution by operation type
-- 3. Compare processing time and energy usage across machines
-- =====================================================

SELECT
    machine_id,
    COUNT(*) AS job_count
FROM hms_production_data
GROUP BY machine_id
ORDER BY job_count DESC;

SELECT
    machine_id,
    COUNT(*) AS job_count,
    ROUND(AVG(processing_time)::numeric, 2) AS avg_processing_time,
    ROUND(AVG(energy_consumption)::numeric, 2) AS avg_energy_consumption
FROM hms_production_data
GROUP BY machine_id
ORDER BY machine_id;

SELECT
    operation_type,
    COUNT(*) AS job_count
FROM hms_production_data
GROUP BY operation_type
ORDER BY job_count DESC;

SELECT
    operation_type,
    COUNT(*) AS job_count,
    ROUND(AVG(processing_time)::numeric, 2) AS avg_processing_time,
    ROUND(AVG(energy_consumption)::numeric, 2) AS avg_energy_consumption
FROM hms_production_data
GROUP BY operation_type
ORDER BY operation_type;