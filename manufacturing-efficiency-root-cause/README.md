# Manufacturing Efficiency – Root Cause Analysis

## Problem
The objective of this case study is to identify the key factors driving
low production efficiency in a hybrid manufacturing system.

## Dataset
Synthetic production planning and optimization data representing
a hybrid manufacturing production environment, including processing times,
energy consumption, machine usage, and scheduling information.

**Source:**  
Kaggle – [Manufacturing Production Data](https://www.kaggle.com/datasets/ziya07/manufacturing-production-data)

## Analytical Approach
The analysis followed a hypothesis-driven approach to identify the primary
drivers of production inefficiency.

- Explored efficiency distribution across production jobs
- Tested multiple hypotheses:
  - Processing time
  - Energy consumption
  - Machine availability
  - Operation type
- Eliminated weak explanatory factors
- Identified schedule delay as the primary driver of low efficiency

## Key Insight
Low-efficiency jobs exhibit significantly higher average schedule delays
compared to high-efficiency jobs, indicating that schedule adherence
is the most influential factor affecting production performance.

## Tools
- PostgreSQL
- SQL
- DBeaver

## Related Article
📖 Medium: [Root Cause Analysis of Manufacturing Inefficiency Using SQL](https://medium.com/@erengalipun/root-cause-analysis-of-manufacturing-inefficiency-using-sql-0b45b9c4577d)
