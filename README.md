           Swiggy Restaurant Analysis – SQL Project
This project explores restaurant performance, pricing, and customer feedback using SQL queries on a Swiggy dataset.
The dataset contains restaurant listings across various Indian cities with information like ratings, delivery time, price, cuisine, and area.
 ________________________________________
                      📂 Dataset Information
              The dataset (restaurants table) includes the following fields:
                  Column	        Description
                  ID	            Unique identifier for the entry
                  Restaurant	    Name of the restaurant
                  Area	            Neighborhood or locality
                  City	            City name (mostly Bangalore, Hyderabad, etc.)
                  Price     	    Average price (likely per person/item)
                  Avg ratings	    Average user rating (e.g., 4.2)
                  Total ratings	    Number of users who rated
                  Food type	        Types of cuisine offered (comma-separated)
                  Address        	Full address
                  Delivery time  	Estimated delivery time in minutes
________________________________________
                    📊 Key Analytical Questions (SQL)
        🏆 General Performance
        •	Top-rated restaurants
        •	Most reviewed restaurants
        •	Delivery time distribution
        •	Area-wise delivery performance
        •	City-wise average ratings
        
        💰 Price & Value
        
        •	Correlation between price and rating
        •	Restaurants with high ratings and low price (value-for-money)
        •	Price variation across areas and cuisines
        
        🍲 Cuisine Insights
        
        •	Most popular food types
        •	Cuisine with highest average ratings
        •	Delivery time by cuisine
        •	Restaurants with unique/specialized cuisines
      
        📍 Location Specific
        
        •	Best-rated areas
        •	Most expensive areas
        •	Average delivery time per area
        
        🧼 Data Quality Checks
        
        •	Duplicate restaurant names
        •	Outliers in price and delivery time
        •	Suspicious records (0 price or 0 ratings)
