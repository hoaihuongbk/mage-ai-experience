# Mage-AI Exploration

This repository demonstrates the exploration of mage-ai, a modern data pipeline tool that combines notebook flexibility with production-grade modularity.

## Overview

[Mage-AI](https://docs.mage.ai/introduction/overview) is a hybrid framework for data transformation and integration that offers:

- Notebook-style development experience
- Production-ready modular code structure
- User-friendly interface for data pipeline creation
- Rich ecosystem of connectors and transformations

## Real-world Use Case: Trino to Google Sheets Pipeline

This demo implements a data pipeline that:

![Trino to Google Sheets Pipeline](trino_to_google_sheets.png)

1. Extracts data from Trino database
    - Connects to Trino using built-in SQL connector
    - Executes SQL queries to fetch required datasets
    - Handles data type conversions automatically

2. Transforms data (if needed)
    - Cleans and formats data
    - Performs necessary aggregations
    - Validates data quality

3. Loads data to Google Sheets
    - Authenticates with Google Sheets API
    - Creates or updates specified spreadsheet
    - Maintains data freshness with scheduled updates

This pipeline enables business users to:
- Access database information directly in Google Sheets
- Collaborate on data analysis in real-time
- Automate regular reporting workflows
- Maintain single source of truth for business metrics

## How to Run This Demo

**Prerequisites**
- Docker installed
- Google Sheets API credentials
- Access to a Trino database

**Step 1**: Clone this repository to your laptop

**Step 2**: Run `make start` to start the demo, open new browser to this http://localhost:6789.

**Step 3**: Update your connection to `io_config.yaml` file in the project root folder.

**Step 4**: Test your pipeline

**Step 5**: Wrap up your work and run `make stop` to stop the demo.