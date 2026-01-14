-- =====================================================
-- Purpose:
-- Evaluate whether processing time and energy consumption
-- explain differences in production efficiency levels.
--
-- Approach:
-- - Compare average processing time by efficiency category
-- - Compare average energy consumption by efficiency category
-- - Identify whether these metrics are discriminative
-- =====================================================

SELECT
    optimization_category,
    COUNT(*) AS job_count,
    ROUND(AVG(processing_time)::numeric, 2) AS avg_processing_time
FROM hms_production_data
GROUP BY optimization_category
ORDER BY optimization_category;    

SELECT
    optimization_category,
    COUNT(*) AS job_count,
    ROUND(AVG(energy_consumption)::numeric, 2) AS avg_energy_consumption
FROM hms_production_data
GROUP BY optimization_category
ORDER BY optimization_category;

SELECT
    optimization_category,
    ROUND(AVG(processing_time)::numeric, 2) AS avg_processing_time,
    ROUND(AVG(energy_consumption)::numeric, 2) AS avg_energy_consumption
FROM hms_production_data
GROUP BY optimization_category
ORDER BY optimization_category;