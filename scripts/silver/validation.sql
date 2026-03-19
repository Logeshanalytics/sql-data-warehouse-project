SELECT COUNT(*) FROM silver.sil_crm_cust_info;
SELECT COUNT(*) FROM silver.sil_crm_prd_info;
SELECT COUNT(*) FROM silver.sil_crm_sales_details;

SELECT cst_id, COUNT(*)
FROM silver.sil_crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1;

SELECT DISTINCT cst_gndr FROM silver.sil_crm_cust_info;
