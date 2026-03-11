# Poster Supplementary, NYSPHC Summit 2026
## Public-Health-Climate-Health Portfolio

A public health analytics portfolio focused on **climate hazards, environmental exposure, and population health vulnerability assessment**.

This repository presents analytical workflows, dashboards, GIS visualizations, and surveillance frameworks that examine long term climate trends and environmental health risks including **extreme heat, air quality exposure, and vector borne disease dynamics**.

The portfolio demonstrates how integrated surveillance data and spatial analytics support **evidence based environmental health planning and equity focused decision making.**


# Project Objectives

This portfolio demonstrates how integrated Climate, environmental, SVI, and health data can support **climate informed public health planning**.

Key objectives include

• Quantify long term climate trends and environmental exposures using integrated surveillance datasets.

• Identify spatial overlap between climate hazards and vulnerable populations.

• Evaluate environmental health risks associated with **air quality, extreme heat, and vector activity**.

• Support equity focused decision making through **dashboard driven analytics and spatial mapping**.

• Translate integrated climate health surveillance data into **actionable public health planning tools and risk communication strategies.**

---

# Major Analytical Projects

# 1. Air Quality and Attributable Health Burden Evaluation

Long term Air Quality Index trend analysis from **1980 to 2025** examining potential associations between environmental exposure and respiratory health burden(See pdf).

Key components include

• historical AQI trend analysis
• visualization of long term air quality patterns
• discussion of environmental exposure and asthma burden
• interpretation of climate air pollution interactions

*Outputs* include analytical reports and visualizations supporting environmental health assessment.

---


# 2. Climate Health Vulnerability Dashboard

Dashboard project examining **climate health vulnerability across census tracts**. The dashboard clusters geographic areas using integrated environmental indicators including;

• outdoor mobility patterns.
• climate exposure indicators.
• environmental health vulnerability metrics.

The goal is to identify communities facing elevated climate risk and support **targeted public health planning and resource allocation**.

### Objective:
Assess and rank climate- and mobility-related vulnerability across census tracts using integrated indicators to identify spatial disparities and high-risk communities.

### Workflow:
Data cleaning, conduct exploratory analysis with EDA heatmaps, correlation matrices, and pair plots → compute a composite Average Risk index using row means across selected indicators → rank tracts and identify the Top N most vulnerable census tracts → apply K means clustering to group tracts with similar vulnerability profiles → generate interactive heatmaps, PCA cluster plots, and ranked tables within a Shiny dashboard.


### Variables Evaluated:
Census tract numeric indicators representing environmental exposure, outdoor mobility, socioeconomic vulnerability, and climate-related risk metrics, derived from integrated datasets.

#### Population Structure and Demographic Composition
• Pop_Change_2010_2020_Percent
• Children_0_4_Percent
• Seniors_65_Plus_Percent
• Working_Age_18_64_Percent

#### Socioeconomic Vulnerability
• Pop_Below_200_Poverty_Level_Percent
• Children_in_Poverty_0_17_Percent
• GINI_Index (income inequality)
• Uninsured_Pop_Percent

#### Mobility and Transportation Access
• Workers_Walking_Biking_Percent
• Workers_Using_Public_Transit_Percent
• Occupied_Housing_Units_with_No_Vehicles_Percent_of_Units
• Occupied_Housing_No_Vehicles_Percent

#### Housing and Environmental Living Conditions
• Overcrowded_Housing_Percent
• Limited_English_Proficiency_Percent

#### Health and Population Vulnerability Indicators
• Disabled_Pop_Percent
• Life_Expectancy_At_Birth

#### Race and Ethnic Composition Indicators
• Black_Percent
• White_NonHispanic_Percent

### Methodology and Statistical Analysis:
Exploratory data analysis using scaled heatmaps, correlation matrices, vulnerability ranking using row mean composite risk scores, principal component analysis for dimensionality reduction, and K-means clustering to identify tract-level vulnerability groups.

**Outputs**:
Interactive vulnerability heatmaps, tract comparison visuals, ranked tables, PCA cluster plots, and cluster summary statistics.

### Public Health Importance:
The analysis identifies geographic inequality in climate-related health vulnerability, enabling targeted intervention, climate adaptation planning, and resource prioritization for high-risk communities at the census tract level.




---

# 3. Vector Surveillance and Climate Threshold Analysis

Seasonal surveillance analytics examining **temperature thresholds and vector activity patterns in Monroe County**.

This analysis evaluates relationships between climate conditions and the seasonal dynamics of

• mosquitoes
• ticks
• vector associated disease risks

### Output Results support environmental health monitoring and vector prevention planning strategies.(See Supplementary.pdf)###

---
```

# 4. Heatwave Climate Surveillance Analysis Workflow

This analysis examines seasonal heat exposure patterns using temperature, relative humidity, and dew point observations. The goal is to identify periods where environmental conditions meet thresholds associated with elevated heat related health risks.

The workflow applies reproducible data processing and exploratory data analysis techniques implemented in R.

### Data Input

Climate observations containing daily meteorological measurements. Variables used in the analysis include *1996-2024*

Date,
Year,
Month,
Temperature,
Relative Humidity,
Dew Point


### Data Preparation

The Date variable was converted to a standardized Date format to enable time based analysis.

```
data <- data %>%
  mutate(Date = as.Date(Date, format = "%Y-%m-%d"))
```

The analysis focuses on the primary heat season in the monroe county.

Months included in the analysis
May,
June,
July,
August

Heatwave days were defined using a combined temperature and humidity risk index.

The threshold conditions reflect combinations of high temperature and elevated relative humidity that increase heat stress risk.

Applied thresholds based on EPA/CDA charts;

*Temperature 86°F with relative humidity ≥ 90 percent*
*Temperature 88°F with relative humidity ≥ 80 percent*
*Temperature 90°F with relative humidity ≥ 70 percent*
*Temperature 92°F with relative humidity ≥ 60 percent*

These thresholds approximate environmental conditions associated with dangerous heat exposure.

Records meeting these conditions were flagged as heatwave days extracted from daily Temperature 1996-2024.

The resulting filtered dataset represents days where meteorological conditions may pose elevated heat related health risks.

### Seasonal Data Filtering

Only observations meeting both conditions were retained

1. Occurring during the seasonal heat months May-August for each year's daily temperature
2. Meeting temperature humidity threshold criteria

This step isolates high risk environmental exposure days relevant for heat surveillance.

### Heatwave Summary Metrics

Heatwave conditions were summarized by year and month to identify seasonal patterns.

### Key metrics calculated

Number of heatwave days
Average relative humidity during heatwave events
Average dew point temperature
This aggregation supports evaluation of long term heat exposure patterns and seasonal variation.

### Exploratory Data Analysis- Heatwave Frequency Trends

Annual heatwave frequency was calculated and visualized using a grouped bar chart showing the number of heatwave days by month.

This visualization highlights
Interannual variation in heatwave occurrence
Seasonal differences in heat exposure
Potential trends in heatwave frequency

#### Heatwave Intensity Patterns

A scatterplot analysis was used to examine the relationship between
Temperature
Relative humidity
Dew point

Each point represents an individual heatwave day.

Color gradients based on dew point illustrate atmospheric moisture conditions associated with heat stress.

This visualization provides insight into environmental conditions that characterize high intensity heat events.

#### Consecutive Heatwave Streaks

To identify prolonged heat exposure events, the analysis calculates sequences of consecutive heatwave days.

Runs of heatwave days were identified using a run length encoding method implemented through the `rleid()` function from the data.table package.

For each year and month, the length of continuous heatwave streaks was calculated.

Only streaks longer than two days were retained.

This step identifies sustained heat exposure periods that may have greater public health impact.

Results were visualized using a bar chart showing the length of consecutive heatwave streaks by year and month.


### Analytical Outputs

The workflow produces the following outputs

Heatwave summary table describing seasonal heatwave characteristics
Bar chart of annual heatwave frequency by month
Scatter plot of heatwave intensity showing temperature humidity relationships
Visualization of longest consecutive heatwave streaks
Time series plots of monthly humidity patterns

*These *outputs* support environmental health surveillance and help identify periority Days/weeks/months periods of elevated heat risk sing historical temperature data patterns to guide;
• cooling center resources managements 
• staffing decisions
• early season heat alerts
## Final output-  **county heat risk communication**

### Public Health Application
This analysis provides a framework for evaluating heat exposure patterns that may inform

Extreme heat early warning systems
Heat health risk communication strategies
Cooling center planning and emergency preparedness
Climate informed public health surveillance programs

The analytical workflow demonstrates how meteorological data can be translated into operational indicators supporting climate and health adaptation planning.

### Tools Used

R
tidyverse data processing libraries
ggplot2 visualization
data.table for sequence detection

---
```

# 5. Rabies and Climate Surveillance Dashboard

Development of a surveillance dashboard integrating climate indicators and animal rabies monitoring data.

### Rabies and Climate Surveillance Dashboard Workflow
This analysis integrates rabies surveillance records with seasonal temperature patterns to support climate informed zoonotic disease monitoring in Monroe County, NY. Data cleaning and standardization convert variables ; 

•Referral records, specimen testing results, and environmental indicators into structured surveillance variables.
•Including referral date, •animal type, •ownership status, •specimen submission, •positivity status, and •geographic ZIP code. 

The dashboard evaluates **temporal trends in rabies referrals, spatial concentration of exposures, animal species distribution, specimen positivity rates, and ownership related risk patterns**.

•Monthly referral counts are compared with maximum temperature trends to explore potential climate influences on animal activity and exposure events.

•Interactive visualizations display key indicators including top referral ZIP codes, animal type distribution, positivity by animal ownership, and specimen testing outcomes.

• The system enables dynamic filtering by year, animal type, and geographic indicators to support exploratory surveillance analysis.

• This integrated climate health dashboard provides decision support for rabies vaccination advocacy, vector and wildlife monitoring, and targeted public health communication strategies.

*Output* The dashboard supports **rabies vaccination advocacy and climate sensitive disease surveillance.**

---

```

# 6. GIS and Spatial Analysis Contributions

Environmental health GIS mapping projects include

## a. Development of **community resources map** identifying ##

• food pantries
• shelters
• low income clinics
• Addresses, contact phone number and list of services provided
• using ROC Health Data tools to improve access to essential services.

## b.  Creation of **flood risk overlays** using 1 percent and 0.2 percent floodplain boundaries intersected with **Disadvantaged Communities indicators** to support equity focused climate planning.##


# Repository Structure

```
public-health-dashboard

index.html           portfolio homepage

climate-health-portfolio

Codes                R scripts and analysis code
Data                 datasets used in analyses
Documents            reports and research outputs
Video                dashboard demonstrations

figures              visualizations maps and QR codes
```

---

# Data Sources

Data used in this portfolio originate from publicly available environmental and public health datasets including

• air quality monitoring data
• climate and temperature observations
• environmental surveillance datasets
• public health program resources.

These datasets are used for analytical demonstration and environmental health research interpretation.

--- 

# Methods

Analytical methods used across projects include

• exploratory data analysis
• long term environmental trend analysis
• geospatial mapping and overlay analysis
• vulnerability clustering techniques
• environmental health interpretation of exposure indicators.

Analysis workflows were implemented primarily in **R using reproducible scripts and visualization tools.**


# Tools and Technologies

R
RStudio
GIS spatial analysis tools
HTML and CSS
Git and GitHub
GitHub Pages

---

# Author

Adeshina Bello
NYPHCF 


# License

This repository is shared for educational, research, and professional portfolio purposes.
