SELECT LGBRAND.BRAND_NAME, LGBRAND.BRAND_TYPE, CAST(Round(Avg(LGPRODUCT.PROD_PRICE),2)AS NUMERIC(36,2)) AS [Average Price], Sum(LGLINE.LINE_QTY) AS [Units Sold]
FROM (LGBRAND INNER JOIN LGPRODUCT ON LGBRAND.BRAND_ID = LGPRODUCT.BRAND_ID) INNER JOIN LGLINE ON LGPRODUCT.PROD_SKU = LGLINE.PROD_SKU
GROUP BY LGBRAND.BRAND_NAME, LGBRAND.BRAND_TYPE;