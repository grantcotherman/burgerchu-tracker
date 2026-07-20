
# Burgerchu Tracker
This tool utilizes the Ebay API to ingest for sale data for a specific Pokemon card. That data is then refined to remove outliers and records that don't completely fit the search. Finally, a Gold layer is populated with aggregate data each day and an email is sent out if an available item is under a specific price threshhold.


## Project Contents
pipeline folder
- 01_ingest_to_bronze.ipynb pulls search data from ebay and stores in a local duckdb as a bronze layer
- 02_bronze_to_silver.ipynb pulls data from bronze, verifies it meets certain requirements and loads to silver
- 03_silver_to_gold.ipynb pulls data from silver, aggregates it and adds a row to an aggregate gold table.

All loads are indempotent and incremental using control tables.

analytics folder
- conditional_email.ipynb sends an email when an item is available below a stated price threshhold

sandbox folder
 -  includes some scripts I used to work out details regarding some of these tools.

.env.example - Example .env

.run_pipeline_example.sh - Example bash script to run the notebook. Schedule with cron



## Burgerchu Background (Personal)
I'm not a Pokemon collector (although I sheepishly own a couple), but the current craze and bubble around Pokemon cards is nothing short of fascinating. Perhaps the most interesting storyline from the last few years is that of "BurgerChu". BurgerChu, technically known as "2025 POKEMON JPN M-P PROMO MCDONALD'S #020 PIKACHU" was a promotional pokemon card available in happy meals in Japan. The promotion resulted in crowds so uncontrollable that they ended it early which resulted in people viewing the card as extremely scarce early on. The price for a graded PSA 10 copy was over $300 dollars for a period before dropping to as low as $50 when I purchased mine (Still probably $15 overpriced). Now it is back around $100 and over 300,000 of PSA 10s exist, the most of any card.

Here is what the silly thing looks like. 

![Burgerchu card](assets/burgerchu_image.jpeg)