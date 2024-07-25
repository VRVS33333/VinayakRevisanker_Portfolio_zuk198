# Methane in the Furnace Analysis

## Project Description
This project analyzes the correlation between CO2 and methane levels over time using a dataset of observations. The analysis includes data wrangling, summary statistics, visualization, linear modeling, and evaluation metrics.

## Repository Structure
- `Methane in the Furnace.csv`: The dataset used for analysis.
- `scripts/`: Directory containing the R scripts.
- `plots/`: Directory containing the generated plots.
- `results/`: Directory containing analysis summaries and metrics.
- `manuscript/`: Directory containing the final report and supplementary materials.
- `README.md`: Instructions on how to reproduce the analysis.
- `data_description.txt`: Metadata explaining the data.

## Reproducing the Analysis
1. Clone the repository.
2. Ensure you have the necessary R packages installed.
3. Run the R script `scripts/analysis.R` to perform the analysis.
4. Check the `results/` directory for output summaries and metrics.
5. Check the `plots/` directory for generated plots.
6. Check the `manuscript/` directory for the final report.

## R Packages Required
- tidyverse
- hms
- ggplot2

## Data Description
The dataset contains observations of CO2 and methane levels over time.

### Columns
- `obs`: Observation time.
- `co2`: CO2 level.
- `methane`: Methane level