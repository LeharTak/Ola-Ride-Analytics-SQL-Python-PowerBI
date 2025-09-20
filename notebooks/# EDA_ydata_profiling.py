# 01_EDA_ydata_profiling (Instructions & starter code)

Purpose:
- Run exploratory data analysis (EDA) on Ola dataset and export a ydata_profiling HTML report.
- Save basic summary outputs and a cleaned CSV for further analysis.

Suggested file name (Jupyter Notebook): 01_EDA_ydata_profiling.ipynb
But for now this file contains instructions and starter code.

## Libraries to use
- pandas
- ydata_profiling
- matplotlib / seaborn (for custom plots)
- numpy

## Starter code (paste into a notebook cell)
```python
import pandas as pd
import numpy as np
from ydata_profiling import ProfileReport

# 1) Load data (adjust filename if different)
df = pd.read_csv("../data/raw_data.csv")

# 2) Quick cleaning of common placeholders
df.replace(["N/A","NA","n/a","na",""], pd.NA, inplace=True)

# 3) Save a small sample copy (optional)
df.sample(1000).to_csv("../data/sample_data.csv", index=False)

# 4) Run ydata_profiling
profile = ProfileReport(df, title="Ola EDA Report", explorative=True)
profile.to_file("Ola_EDA_Report.html")

# 5) Save basic describe outputs
df.describe(include='all').to_csv("01_describe_all.csv")
df.isnull().sum().to_frame("null_count").to_csv("01_null_summary.csv")

# 6) Create and save a cleaned version (drop-only or light cleaning)
# (Do NOT drop rows completely unless necessary; save as cleaned_data.csv for further notebooks)
cleaned = df.copy()
# Example: fix Booking_Date to datetime if present
if 'Date' in cleaned.columns or 'Booking_Date' in cleaned.columns:
    col = 'Booking_Date' if 'Booking_Date' in cleaned.columns else 'Date'
    cleaned[col] = pd.to_datetime(cleaned[col], errors='coerce')

# Save cleaned file for next steps
cleaned.to_csv("../data/cleaned_data.csv", index=False)
