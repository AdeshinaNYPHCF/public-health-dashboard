# Poster Supplementary, NYSPHC Summit 2026

## Public-Health Climate-Health Portfolio

A public health analytics portfolio focused on **climate hazards, environmental exposure, and population health vulnerability assessment**.

This repository presents analytical workflows, dashboards, GIS visualizations, and surveillance frameworks that examine long-term climate trends and environmental health risks, including **extreme heat, air quality exposure, and vector-borne disease dynamics**.

The portfolio demonstrates how integrated surveillance data and spatial analytics support **evidence-based environmental health planning and equity-focused decision making**.

---

## Project Objectives

This portfolio demonstrates how integrated Climate, Environmental, SVI, and Health data can support **climate-informed public health planning**.

Key objectives include:

* Quantify long-term climate trends and environmental exposures using integrated surveillance datasets
* Identify spatial overlap between climate hazards and vulnerable populations
* Evaluate environmental health risks associated with **air quality, extreme heat, and vector activity**
* Support equity-focused decision making through **dashboard-driven analytics and spatial mapping**
* Translate integrated climate health surveillance data into **actionable public health planning tools and risk communication strategies**

---

## Major Analytical Projects

### 1. Air Quality and Attributable Health Burden Evaluation

Long-term Air Quality Index (AQI) trend analysis from **1980 to 2025**, examining potential associations between environmental exposure and respiratory health burden.

**Key components:**

* Historical AQI trend analysis
* Visualization of long-term air quality patterns
* Discussion of environmental exposure and asthma burden
* Interpretation of climate–air pollution interactions

**Outputs:** Analytical reports and visualizations supporting environmental health assessment-
**[View Data Analysis Report](https://github.com/AdeshinaNYPHCF/public-health-dashboard/blob/main/climate-health-portfolio/Documents/AQI.pdf)**

---

### 2. Climate Health Vulnerability Dashboard

Dashboard project examining **climate health vulnerability across census tracts**, integrating environmental health vulnerability metrics,climate exposure indicators- outdoor mobility patterns, and socioeconomic indicators.

**Objective:**
Assess and rank climate- and mobility-related vulnerability across census tracts to identify spatial disparities and high-risk communities.

**Workflow:**

1. Data cleaning and exploratory analysis (EDA) using heatmaps, correlation matrices, and pair plots
2. Compute a composite Average Risk index (row means across selected indicators)
3. Rank census tracts and identify top N most vulnerable communities
4. Apply K-means clustering to group tracts with similar vulnerability profiles
5. Generate interactive heatmaps, PCA cluster plots, and ranked tables in a Shiny dashboard

**Variables Evaluated:**

### Variable Classification for Environmental and Health Vulnerability Analysis

* **Geographic Identifiers:**  
`Census_Tract`

* **Environmental Exposure and Climate Risk:**  
`PM2_5`, `Days_Above_90_Degrees_2050`

* **Health Outcomes and Disease Burden:**  
`CHD_adults`, `COPD_ED_Rate`

* **Population Structure and Demographics:**  
`Pop_Age0_4`, `Pop_Age65plus`, `Disabled`

* **Socioeconomic Vulnerability:**  
`Uninsured_Pop`, `Disadvantaged` *(Disadvantaged Community: Yes or No)*

* **Mobility and Transportation Access:**  
`workers_Pub_Transit`, `Workers_Walking_Biking`, `Workers_Traveling_Public_TP`

* **Housing and Transportation Constraints:**  
`Housing_No_Vehicles`

* **Language and Social Barriers:**  
`Pop_Limited_English Language`

**Methodology:** Scaled heatmaps, correlation matrices, vulnerability ranking via composite risk scores, K-means clustering.

**Outputs:** Interactive vulnerability heatmaps, ranked tables, cluster plots, cluster summaries-
**[View Dashboard](https://github.com/AdeshinaNYPHCF/public-health-dashboard)**

**Public Health Impact:** Identifies geographic inequality, enabling targeted interventions, climate adaptation planning, and resource prioritization

---

### 3. Vector Surveillance and Climate Threshold Analysis

Seasonal surveillance analytics examining **temperature thresholds and vector activity patterns in Monroe County**.

**Focus:** Relationship between climate conditions and seasonal dynamics of mosquitoes, ticks, and vector-associated disease risks

**Outputs:** Support environmental health monitoring and vector prevention planning.

---

### 4. Heatwave Climate Surveillance Analysis Workflow

Examines seasonal heat exposure patterns using **temperature, relative humidity, and dew point** observations to identify periods with elevated heat-related health risks.

**Data Input:** Daily climate measurements (1996–2024)

**Workflow Highlights:**
* Standardize date formats for time-based analysis
* Focus on heat season: May–August
* Identify heatwave days using thresholds combining temperature and humidity:
    dentifying Heatwave Days Using Combined Temperature and Humidity Thresholds

**Heatwave days were defined using a combined temperature and relative humidity risk index. Heat stress risk increases when high temperatures occur alongside elevated humidity because atmospheric moisture reduces evaporative cooling from sweating. This interaction increases the perceived temperature, commonly expressed as the Heat Index.**

**To capture these conditions, temperature–humidity combinations were evaluated using guidance from the NOAA Heat Index framework, which categorizes exposure conditions based on potential health risk.**

**The analysis focuses on days where daily maximum temperature reaches at least 88°F, since this level begins to enter heat index ranges associated with elevated heat stress under moderate to high humidity conditions.**

| Temperature | Relative Humidity | Approx. Heat Index Range | NOAA Risk Category | Health Risk Description                                                                   |
| ----------- | ----------------- | ------------------------ | ------------------ | ----------------------------------------------------------------------------------------- |
| 86°F        | ≥ 90%             | ~100–105°F               | Extreme Caution    | Heat cramps and heat exhaustion possible with prolonged exposure                          |
| 88°F        | ≥ 80%             | ~104–108°F               | Danger             | Heat cramps and heat exhaustion likely; prolonged exposure may increase heat illness risk |
| 90°F        | ≥ 70%             | ~105–110°F               | Danger             | Heat exhaustion likely with extended exposure and physical activity                       |
| 92°F        | ≥ 60%             | ~106–112°F               | Danger             | High risk of heat exhaustion; vulnerable populations face elevated heat stress            |


* These thresholds approximate environmental conditions associated with dangerous heat exposure. Records meeting these conditions were flagged as heatwave days extracted from daily Temperature 1996-2024. 
* The resulting filtered dataset represents days where meteorological conditions may pose elevated heat related health risks.
* Exploratory visualizations: grouped bar charts, scatterplots, consecutive heatwave streaks.

**Exploratory Data Analysis-**
* Heatwave Frequency Trends Annual heatwave frequency was calculated and visualized using a grouped bar chart showing the number of heatwave days by month. 
* This visualization highlights Interannual variation in heatwave occurrence Seasonal differences in heat exposure Potential trends in heatwave frequency 
* Heatwave Intensity Patterns A scatterplot analysis was used to examine the relationship between Temperature Relative humidity Dew point Each point represents an individual heatwave day. 
* Consecutive Heatwave Streaks To identify prolonged heat exposure events, the analysis calculates sequences of consecutive heatwave days. Runs of heatwave days were identified using a run length encoding method implemented through the `rleid()` function from the data.table package. 
* For each year and month, the length of continuous heatwave streaks was calculated. Only streaks longer than two days were retained. 

**Public Health Applications:**
 *These *outputs* support environmental health surveillance and help identify periority Days/weeks/months periods of elevated heat risk identified in historical temperature data patterns to guide; 
 
 *cooling center resources managements 
 *staffing decisions  
 *early season heat alerts 
 *risk communication
 
 ## Final output- **county heat risk communication** ### 
 Public Health Application This analysis provides a framework for evaluating heat exposure patterns that may inform Extreme heat early warning systems,  Heat health risk communication, cooling center planning and preparedness for priority months, weeks, days patterns identified in historical data.
 
 * The analytical workflow demonstrates how meteorological data can be translated into operational indicators supporting climate and health adaptation planning.

**Tools Used:** SAS, ggplot2, data.table-**[View Data Communication](https://github.com/AdeshinaNYPHCF/public-health-dashboard/blob/main/climate-health-portfolio/Documents/Monroe%20County%20heat-risk%20communication%20using%20historical%20data.pdf)**

---


### 5. Rabies and Climate Surveillance Dashboard
Development of a surveillance dashboard integrating climate indicators and animal rabies monitoring data. ### Rabies and Climate Surveillance Dashboard Workflow This analysis integrates rabies surveillance records with seasonal temperature patterns to support climate informed zoonotic disease monitoring in Monroe County, NY. Data cleaning and standardization convert variables ; 

* •Referral records, specimen testing results, and environmental indicators into structured surveillance variables. •Including referral date, •animal type, •ownership status, •specimen submission, •positivity status, and •geographic ZIP code. 

* The dashboard evaluates **temporal trends in rabies referrals, spatial concentration of exposures, animal species distribution, specimen positivity rates, and ownership related risk patterns**. 

* Monthly referral counts are compared with maximum temperature trends to explore potential climate influences on animal activity and exposure events.

* Interactive visualizations display key indicators including top referral ZIP codes, animal type distribution, positivity by animal ownership, and specimen testing outcomes. 

* The system enables dynamic filtering by year, animal type, and geographic indicators to support exploratory surveillance analysis. 

* This integrated climate health dashboard provides decision support for rabies vaccination advocacy, vector and wildlife monitoring, and targeted public health communication strategies. 
**Output** The dashboard supports rabies vaccination advocacy and climate sensitive disease surveillance. -**[View Dashboard](https://github.com/AdeshinaNYPHCF/public-health-dashboard/blob/main/climate-health-portfolio/Video/MC_Rabies_Climate%20Surveillance%20Dashboard.mp4)**

----

### 6. GIS and Spatial Contributions

**a. Community Resources Map:** Identifies food pantries, shelters, low-income clinics with addresses, contacts, and services.

**b. Flood Risk Overlays:** Combines 1% and 0.2% floodplain boundaries with **Disadvantaged Community indicators** to support equity-focused climate planning.

---

## Repository Structure

```
public-health-dashboard/
├── index.html               # Portfolio homepage
├── climate-health-portfolio/
│   ├── Codes                # R scripts and analysis code
│   ├── Data                 # Datasets
│   ├── Documents            # Reports and outputs
│   └── Video                # Dashboard demonstrations
└── figures                  # Visualizations, maps, QR codes
```

---

## Data Sources

Publicly available environmental and public health datasets:

* Air quality monitoring data
* Climate and temperature observations
* Environmental surveillance datasets
* Public health program resources

---

## Methods

* Exploratory data analysis
* Long-term environmental trend analysis
* Geospatial mapping and overlay analysis
* Vulnerability clustering techniques
* Environmental health interpretation of exposure indicators

Workflows implemented primarily in **R using reproducible scripts and visualization tools**

---

## Tools and Technologies

* R & RStudio
* Advanced Excel tools(VBA, Pivot table & Others)
* GIS spatial analysis tools
* HTML & CSS
* Git & GitHub
* GitHub Pages

---

## Author

**Adeshina Bello**
---

## License

Shared for educational, research, and professional portfolio purposes

---

