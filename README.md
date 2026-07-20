
# Burgerchu Tracker
TL;DR - This tool utilizes the Ebay API to ingest for sale data for a specific Pokemon card. That data is then refined to remove outliers and records that don't completely fit the search. Finally, a Gold layer is populated with aggregate data each day and an email is sent out if an available item is under a specific price threshhold.

## Overview

## Project Specifics
pipeline folder
- 01_ingest_to_bronze.ipynb
- 02_bronze_to_silver.ipynb
- 03_silver_to_gold.ipynb

analytics folder
- conditional_email.ipynb

sandbox folder includes some scripts I used to work out details regarding a few of these tools.



## Burgerchu Background (Personal)
I'm not a Pokemon collector (although I sheepishly own a couple), but the current craze and bubble around Pokemon cards is nothing short of fascinating. Perhaps the most interesting storyline from the last few years is that of "BurgerChu". BurgerChu, technically known as "2025 POKEMON JPN M-P PROMO MCDONALD'S #020 PIKACHU" was a promotional pokemon card available in happy meals in Japan. The promotion resulted in crowds so uncontrollable that they ended it early which resulted in people viewing the card as extremely scarce early on. The price for a graded PSA 10 copy was over $300 dollars for a period before dropping to as low as $50 when I purchased mine (Still probably $15 overpriced). Now it is back around $100 and over 300,000 of PSA 10s exist, the most of any card.

Here is what the silly thing looks like. 

![Burgerchu card](assets/burgerchu_image.jpeg)