-- =====================================================
-- Purpose:
-- Identify whether schedule delays are the primary
-- driver of low production efficiency.
--
-- Approach:
-- - Calculate delay between scheduled and actual times
-- - Compare average delays across efficiency categories
-- - Assess correlation between delay magnitude and efficiency
-- =====================================================

SELECT
    optimization_category,
    COUNT(*) AS job_count,
    ROUND(
        AVG(
            EXTRACT(EPOCH FROM (actual_end - scheduled_end)) / 60
        )::numeric,
        2
    ) AS avg_delay_minutes
FROM hms_production_data
WHERE actual_end IS NOT NULL
  AND scheduled_end IS NOT NULL
GROUP BY optimization_category
ORDER BY optimization_category;

SELECT
    optimization_category,
    COUNT(*) AS delayed_jobs,
    ROUND(
        AVG(
            EXTRACT(EPOCH FROM (actual_end - scheduled_end)) / 60
        )::numeric,
        2
    ) AS avg_delay_minutes
FROM hms_production_data
WHERE actual_end > scheduled_end
GROUP BY optimization_category
ORDER BY avg_delay_minutes DESC;