# Adventure-Works-Data-Engineering-Project | Medallion Architecture with ADF, Databricks & Synapse

## Introduction :

**This is an end-to-end Azure Data Engineering Project where I upload data fromGitHub HTTP 
source to bronze layer through Azure Data factory. Transform the data in the silver layer using 
Databricks and provide the data to downstream using Azure Synapse Analytics.**

**I have followed Medallion architecture where:** 
- Raw data is uploaded to bronze layer using parameters and dynamic pipelines.
- Raw data is Transformed in the solver layer using Databricks.
- The Transformed data is served into gold layer, where views of the dataare created for 
downstream analysis.

 ![Architecture](https://github.com/user-attachments/assets/76b9c4e1-b740-4260-9922-fcf8c88fdcf1)
