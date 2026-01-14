-- =====================================================
-- Purpose:
-- Perform initial exploratory analysis to understand
-- the distribution and structure of production data.
--
-- Approach:
-- 1. Examine job distribution by efficiency category
-- 2. Review basic processing time and energy metrics
-- 3. Identify early signals without interpretation
-- =====================================================

SELECT
    COUNT(*) AS total_jobs
FROM hms_production_data;
    
SELECT optimization_category,
    COUNT(*) AS job_count
FROM hms_production_data
GROUP BY optimization_category
ORDER BY job_count DESC;

SELECT optimization_category,
    ROUND(AVG(processing_time)::numeric, 2) AS avg_processing_time
FROM hms_production_data
GROUP BY optimization_category
ORDER BY optimization_category;

SELECT optimization_category,
    ROUND(AVG(energy_consumption)::numeric, 2) AS avg_energy_consumption
FROM hms_production_data
GROUP BY optimization_category
ORDER BY optimization_category;

SELECT operation_type,
    COUNT(*) AS job_count
FROM hms_production_data
GROUP BY operation_type
ORDER BY job_count DESC;

SELECT machine_id,
    COUNT(*) AS job_count
FROM hms_production_data
GROUP BY machine_id
ORDER BY job_count DESC;