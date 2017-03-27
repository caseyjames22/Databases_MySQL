SELECT LGLINE.INV_NUM, LGLINE.LINE_NUM, LGLINE.PROD_SKU, LGPRODUCT.PROD_DESCRIPT, LGPRODUCT.BRAND_ID INTO TEMP22A
FROM LGPRODUCT INNER JOIN LGLINE ON LGPRODUCT.PROD_SKU = LGLINE.PROD_SKU
WHERE (((LGPRODUCT.PROD_CATEGORY)='TOP COAT'))
GROUP BY LGLINE.INV_NUM, LGLINE.LINE_NUM, LGLINE.PROD_SKU, LGPRODUCT.PROD_DESCRIPT, LGPRODUCT.BRAND_ID;