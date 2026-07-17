# Burgerchu Tracker (In Progress)

## Project Goals:
- Pull Ebay data on a certain Pokemon card
- Process the data using Polars
- Utilize claude integration in the pipeline to supplement dataset
- Store in DuckDB
- Schedule this process using airflow

## The Catch:
- Use AI as little as possible. Use docs and old fashioned trial and error as much as possible!
    - Used AI to troubleshoot some issues around the ebay api. 


## Potential Scripts
- ingest_to_bronze
    - Pulls from API
    - Put into a bronze layer in DuckDB
- bronze_to_silver
    - Pulls from Bronze
    - Clean and Restructure
    - Supplement with Claude integration
- visualization_example
    - Provide a price charting visualization using the data ingested

