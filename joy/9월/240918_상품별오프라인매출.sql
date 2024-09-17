SELECT PRODUCT.PRODUCT_CODE, 
SUM(PRODUCT.PRICE * OFFLINE_SALE.SALES_AMOUNT) AS SALES
FROM PRODUCT 
LEFT JOIN OFFLINE_SALE
ON PRODUCT.PRODUCT_ID = OFFLINE_SALE.PRODUCT_ID
GROUP BY PRODUCT.PRODUCT_ID
ORDER BY SALES DESC, PRODUCT_CODE ASC;

