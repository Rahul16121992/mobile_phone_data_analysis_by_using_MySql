create database mobile_data_analysis;
create schema mobile;
select * from mobile_data_analysis.Mobile_Analysis;
-- Q.1 Check mobile features and price list.--
Select Phone_name,Price from mobile_data_analysis.Mobile_Analysis;
-- Q.2 Find out the price of 5 most expensive phones. --
Select * from mobile_data_analysis.Mobile_Analysis
order by Price desc
limit 5;

-- Q.3 Find out the price of 5 most cheapest phones. --
Select * from mobile_data_analysis.Mobile_Analysis
order by Price asc
limit 5;

-- Q.4 List of Top 5 Samsung phones with price and all feature --
Select * from mobile_data_analysis.Mobile_Analysis
Where Brands='Samsung'
order by Price desc
limit 5;
-- Q.5 Must have android phone list then top 5 High price android phones --
Select * from mobile_data_analysis.Mobile_Analysis
Where Operating_System_Type='Android'
order by Price desc
limit 5;

-- Q.6 Must have android phone list then top 5 lower price android phones.--
Select * from mobile_data_analysis.Mobile_Analysis
Where Operating_System_Type='Android'
order by Price asc
limit 5;

-- Q.7 Must have IOS phonne list then top 5 High price IOS phones --
Select * from mobile_data_analysis.Mobile_Analysis
Where Operating_System_Type='IOS'
order by Price desc
limit 5;

-- Q.8 Must have IOS phone list then top 5 lower price IOS phones --
Select * from mobile_data_analysis.Mobile_Analysis
Where Operating_System_Type='IOS'
order by Price asc
limit 5;

-- Q.9 Write a query which phone support 5G and also top 5 phone with 5G Support --
Select * from mobile_data_analysis.Mobile_Analysis
where 5G_Availability='Yes'
order by price desc
limit 5;

-- Q.10 Total Price of all mobile is to be found with brand name.--
Select brands,sum(Price) from mobile_data_analysis.Mobile_Analysis group by brands;

