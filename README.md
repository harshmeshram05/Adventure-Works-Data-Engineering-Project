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

**Here I had used Azure DataLake Storage Gen2 to store the data in the form of hierarchies and also created 3 containers to follow Medallion architecture (bronze, silver and gold)**

## Bronze Layer 
**Now, I will load the data from GitHub to the bronze layer). Now, I will be creating a Copy Activity which will be parameterised to copy the data from GitHub to bronze.
I created a new Pipeline where I dragged a Copy Activity. The input (each rel_url will be coming from a ForEach Activity) of the Copy Activity receives a 
h_rel_url which will dynamically change upon each Copy step and Lookup activity is created for fetching the information**

<img width="1038" height="471" alt="Image" src="https://github.com/user-attachments/assets/d187afb0-5051-4e97-bf97-47f54a8589df" />

<img width="1366" height="566" alt="Image" src="https://github.com/user-attachments/assets/4d504b2b-de56-4d6e-b571-22719e83c976" />

## THE SILVER LAYER: 

**I created a Databricks Resource under the Resource Group and also created a notebook (silver_notebook) under a folder (Databricks) inside the Workspace 
tab and register an application in Microsoft Entra ID, so that I could connect Databricks to my Storage Account by giving the Credentials of the application.**

![Image](https://github.com/user-attachments/assets/3f6b1776-3656-412c-bff7-4ecb02228c34

**Now I performed some Transformations and pushed the Transformed data into the silver layer**

<img width="1366" height="495" alt="Image" src="https://github.com/user-attachments/assets/3ae9daea-abba-4f46-a24e-5386d010bb15" />

<img width="1366" height="442" alt="Image" src="https://github.com/user-attachments/assets/cecb6890-2924-418b-a6ec-8bb288163d47" />

## Visualizations in Databricks

1) Territory-wise analysis where we can understand which territory isbest performing 
in sales.

![Image](https://github.com/user-attachments/assets/b62bbf6e-6675-4ea0-b16a-01bf52478562)

2) Month-wise and Year-wise Sales Analysis

![Image](https://github.com/user-attachments/assets/b48a7980-50d3-4835-b649-d045980bc7ee)

## Gold Layer : 

**For the gold layer presentation, I was using Azure Synapse Analytics and I had created a default Storage Account and default File System which will be using by Synapse 
Analytics. Now, I have created a managed identity under the Storage blob data contributor. Managed Identity helps in linking of Azure Resources with each other.I created a gold schema where I stored all the Views inside it.**


