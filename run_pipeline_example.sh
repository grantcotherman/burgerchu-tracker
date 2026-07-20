#!/bin/bash
set -euo pipefail

PROJECT_DIR=""
PYTHON_BIN=""

LOG_DIR="$PROJECT_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/pipeline_$(date +%F_%H%M%S).log"

run_notebook() {
    local nb_path="$1"
    echo "=== $(date) : running $nb_path ===" >> "$LOG_FILE"
    "$PYTHON_BIN" -m jupyter nbconvert \
        --to notebook --execute --inplace \
        --ExecutePreprocessor.timeout=600 \
        "$nb_path" >> "$LOG_FILE" 2>&1
}

cd "$PROJECT_DIR"

run_notebook "pipeline/01_ingest_to_bronze.ipynb"
run_notebook "pipeline/02_bronze_to_silver.ipynb"
run_notebook "pipeline/03_silver_to_gold.ipynb"
run_notebook "analytics/conditional_email.ipynb"

echo "=== $(date) : pipeline run complete ===" >> "$LOG_FILE"
