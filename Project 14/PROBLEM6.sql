SELECT C.CUS_LNAME, T.TM_MONTH, P.P_DESCRIPT, SUM(SALE_UNITS*SALE_PRICE) AS TOTALSALES
FROM

DWDAYSALESFACT AS S
INNER JOIN DWPRODUCT AS P 
ON S.P_CODE = P.P_CODE

INNER JOIN DWCUSTOMER AS C
ON S.CUS_CODE = C.CUS_CODE

INNER JOIN DWTIME AS T
ON T.TM_ID = S.TM_ID

GROUP BY ROLLUP (CUS_LNAME, TM_MONTH, P_DESCRIPT);