create database Blinkit;
use Blinkit;
show databases;

select * from sql_project_blinkit;

set autocommit=0;
delete from sql_project_blinkit;
rollback;
select * from sql_project_blinkit;

#1.Write an SQL query to show all Item_Identifier

select item_identifier from sql_project_blinkit;

#2.Write an SQL query to show count of total Item_Identifier

select count(item_identifier) from sql_project_blinkit;

#3.Write an SQL query to show maximum Item Weight

select max(item_weight) from sql_project_blinkit;

#4.Write an SQL query to show minimum Item Weight

select min(item_weight) from sql_project_blinkit;

#5.Write an SQL query to show average Item_Weight

select avg(item_weight) from sql_project_blinkit;

#6.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat

SELECT COUNT(*) FROM sql_project_blinkit WHERE item_fat_content = 'Low fat';

#7.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

SELECT COUNT(*) FROM sql_project_blinkit WHERE item_fat_content = 'Regular';

#8.Write an SQL query to show maximum Item_MRP

select max(Item_MRP) from sql_project_blinkit;

#9.Write an SQL query to show minimum Item_MRP

select min(Item_MRP) from sql_project_blinkit;

#10.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200

select Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP from sql_project_blinkit where item_mrp > 200;

#11.Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat

select max(item_mrp) from sql_project_blinkit where item_fat_content = 'low fat';

#12.Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat

select min(item_mrp) from sql_project_blinkit where item_fat_content = 'low fat';

#13.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from sql_project_blinkit where item_mrp between 50 and 100;

#14.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select item_identifier, item_fat_content from sql_project_blinkit;

#15.Write an SQL query to show ALL UNIQUE value of Item_Type

select item_identifier, Item_Type from sql_project_blinkit;

#16.Write an SQL query to show ALL DATA in descending ORDER by Item MRP

select * from sql_project_blinkit order by item_mrp desc;

#17.Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from sql_project_blinkit order by item_outlet_sales asc;

#18.Write an SQL query to show ALL DATA in ascending by Item_Type

select * from sql_project_blinkit order by item_type asc;

#19.Write an SQL query to show DATA of item_type dairy & Meat

select * from sql_project_blinkit where item_type in ('dairy','meat');

#20.Write an SQL query to show ALL UNIQUE value of Outlet_Size

select outlet_identifier,outlet_size from sql_project_blinkit;

#21.Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select outlet_identifier, Outlet_Location_Type from sql_project_blinkit;

#22.Write an SQL query to show ALL UNIQUE value of Outlet_Type

select outlet_identifier, Outlet_Type from sql_project_blinkit;

#23.Write an SQL query to show count of number of items by Item_Type and order it in descending order

select item_type, count(item_type) no_of_item 
from sql_project_blinkit 
group by item_type
order by no_of_item desc;

#24.Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order

select Outlet_Size, count(Outlet_Size) no_of_item 
from sql_project_blinkit 
group by Outlet_Size
order by no_of_item asc;

#25.Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order.

select Outlet_Type, count(Outlet_Type) no_of_item 
from sql_project_blinkit 
group by Outlet_Type
order by no_of_item desc;

#26.Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order

select Outlet_Location_Type, count(Outlet_Location_Type) no_of_item 
from sql_project_blinkit 
group by Outlet_Location_Type
order by no_of_item desc;

#27.Write an SQL query to show maximum MRP by Item_Type

select item_type, max(item_mrp) from sql_project_blinkit group by item_type;

#28.Write an SQL query to show minimum MRP by Item_Type

select item_type, min(item_mrp) from sql_project_blinkit group by item_type;

#29.Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, min(item_mrp) from sql_project_blinkit 
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year desc;

#30.Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, max(item_mrp) from sql_project_blinkit 
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year desc;

#31.Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select Outlet_Size, avg(item_mrp) from sql_project_blinkit
group by outlet_size 
order by outlet_size desc;

#32.Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.

select outlet_type, avg(item_mrp) from sql_project_blinkit
group by outlet_type 
order by outlet_type asc;

#33.Write an SQL query to show maximum MRP by Outlet_Type

select outlet_type, max(item_mrp) from sql_project_blinkit
group by outlet_type;

#34.Write an SQL query to show maximum Item_Weight by Item_Type

select item_type, max(item_weight) from sql_project_blinkit
group by item_type;

#35.Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

select outlet_establishment_year, max(item_weight) from sql_project_blinkit
group by outlet_establishment_year;

#36.Write an SQL query to show minimum Item_Weight by Outlet_Type

select Outlet_Type, min(item_weight) from sql_project_blinkit
group by Outlet_Type;

#37.Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

select Outlet_Location_Type, avg(item_weight) from sql_project_blinkit
group by outlet_location_type 
order by outlet_location_type desc;

#38.Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select item_type, max(Item_Outlet_Sales) from sql_project_blinkit
group by item_type;

#39.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

select item_type, min(Item_Outlet_Sales) from sql_project_blinkit
group by item_type;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year

select Outlet_Establishment_Year, min(Item_Outlet_Sales) from sql_project_blinkit
group by Outlet_Establishment_Year;

#41.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select Outlet_Establishment_Year, max(Item_Outlet_Sales) from sql_project_blinkit
group by Outlet_Establishment_Year
order by outlet_establishment_year desc;

#42.Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

select Outlet_Size, avg(Item_Outlet_Sales) from sql_project_blinkit
group by outlet_size 
order by avg(Item_Outlet_Sales) desc;

#43.Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select outlet_type, avg(Item_Outlet_Sales) from sql_project_blinkit 
group by outlet_type;

#44.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type

select outlet_type, max(Item_Outlet_Sales) from sql_project_blinkit 
group by outlet_type;

#45.Write an SQL query to show total Item_Outlet_Sales by Item_Type

select Item_Type, sum(Item_Outlet_Sales) Total_Outlet_Sales from sql_project_blinkit 
group by Item_Type;

#46.Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content

select Item_Fat_Content, sum(Item_Outlet_Sales) Total_Outlet_Sales from sql_project_blinkit 
group by Item_Fat_Content;

#47.Write an SQL query to show maximum Item_Visibility by Item_Type

select Item_Type, max(Item_Visibility) from sql_project_blinkit 

#48.Write an SQL query to show Minimum Item_Visibility by Item_Type

select Item_Type, min(Item_Visibility) from sql_project_blinkit 
group by Item_Type;

#49.Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1

select Outlet_Location_Type, Item_Type, sum(Item_Outlet_Sales) Total_Outlet_sales from sql_project_blinkit where Outlet_Location_Type = 'Tier 1' 
group by Item_Type;

#50.Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select Item_Fat_Content, Item_Type, sum(Item_Outlet_Sales) Total_Outlet_sales from sql_project_blinkit where Item_Fat_Content = 'Low Fat' 
group by Item_Type;





