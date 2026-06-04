select * from superstore_sales_dataset;

select Region, sum(Sales) as total_sales from superstore_sales_dataset 
group by Region;

select `Product Name`, sum(Profit) as total_profit 
from superstore_sales_dataset
group by `Product Name`
order by total_profit desc limit 5;

use model1;

SELECT MONTH(
         STR_TO_DATE(`Order Date`, '%d-%m-%Y')
       ) AS month,
       SUM(Sales) AS total_sales
FROM superstore_sales_dataset
GROUP BY month
ORDER BY month;

select `Customer Name`, sum(Quantity) as total_quantity 
from superstore_sales_dataset
group by `Customer Name`
order by total_quantity desc;