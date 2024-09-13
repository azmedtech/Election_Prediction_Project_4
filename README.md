# Predicting the 2024 Presidential Election Outcome 
Jessica Bourbon, Syed Shahid, Stephanie Souza, and Elisabeth Trujillo

![Election Blurb](<Visualizations/wordcloud.png>)

# Introduction

Welcome to the Predicting the 2024 Presidential Election Outcome project! This ambitious endeavor combines a wealth of data sources to forecast one of the most significant political events of our time. By harnessing the power of historical demographics, economic indicators, and social media trends, we aim to develop a robust machine learning model that predicts the outcome of the 2024 U.S. presidential election. Our approach integrates data from the U.S. Census, the Bureau of Economic Analysis, and Twitter (X) to build a predictive model that captures the multifaceted nature of electoral dynamics.

Our final presentation can be found at "INSERT FILE PATH FROM REPO HERE" and our Tableau story can be found "INSERT TABLEAU PUBLIC LINK HERE".

# Project Overview

This project seeks to explore and analyze diverse datasets spanning from 2008 to 2020 to inform predictions about the upcoming 2024 presidential election. The core of our methodology involves:
 1. Exploratory Data Analysis (EDA): Conducting individual analyses of demographic, economic, and social media data to uncover insights and trends.
 2. Data Integration: Combining insights from all three data sources to enhance the predictive power of our model.
 3. Model Development: Training and optimizing a machine learning model that utilizes combined data to predict election outcomes.
 4. Performance Evaluation: Assessing the model's accuracy and making iterative improvements to ensure high performance.

## Sentiment Analysis

BRIEFLY DESCRIBE YOUR DATA PROCESSING AND PREPARATION, AS WELL AS ANY FINDINGS IDENTIFIED DURING EXPLORATORY DATA ANALYSIS. INCLUDE IMAGES OR GRAPHS AS APPROPRIATE AND DESCIBE INSIGHTS UNIQUE TO THE EVALUATION OF ONLY YOUR DATASET (NOT YET COMBINED).

![Average Sentiment By Party](<Visualizations/all_years_avg_sent_by_cand.png>)
 Insights: The average sentiment expressed in the social media posts analyzed was not significantly different between political parties for any of the election cycles evaluated during this project. Of interest, there appears to be a significant downward shift in the sentiment expressed by each author for their respective candidate during the 2020 election, in which both parties were viewed substantially less favorably than in the previous election cycle, with the Republican candidate viewed negatively overall. For reference, the sentiment scale ranges from -1.0 (completely negative) to 1.0 (completely positive). 

![Democratic Sentiments By Year](<Visualizations/Democratic_Sentiment_By_Year.png>) ![Republican Sentiments By Year](<Visualizations/Republican_Sentiment_By_Year.png>)
Insights: Overall, across all years, the majority of authors posting on social media conveyed neutral sentiments about the presidential candidates. When comparing the positive and negative sentiments, the 2016 and 2024 data show positive sentiments around double the negative sentiments for the author's respective candidate, while the 2020 data shows the positive and negative sentiments to be nearly equal, explaining the average scores much closer to zero than in 2016 or 2024. 

Data Limitations: The datasets between 2016, 2020, and 2024 vary widely in the number of entries, which may have a bias effect on the data interpretations. Additionally, in 2023, the owner of Twitter (now X) changed the API access for the app, which lead to a shift away from the use of the API as a data source. This may also affect the quantity and type of available data for analysis.

## Demographic Analysis 

BRIEFLY DESCRIBE YOUR DATA PROCESSING AND PREPARATION, AS WELL AS ANY FINDINGS IDENTIFIED DURING EXPLORATORY DATA ANALYSIS. INCLUDE IMAGES OR GRAPHS AS APPROPRIATE AND DESCIBE INSIGHTS UNIQUE TO THE EVALUATION OF ONLY YOUR DATASET (NOT YET COMBINED).
![2008heat_map_race](https://github.com/user-attachments/assets/cadd418c-d1d1-4bcd-9a7d-49c0653e7c69)

![2022heat_map_race](https://github.com/user-attachments/assets/510cacc7-3aed-469e-82b6-f82558eaefad)
Heat maps of the racial distribution with US states over the election years. 

Insight: 

Over the last few election years, the median age is consistently around 30-40 years old. There isn't much change in those values over time. Most of the age percentages taper at either end of the spectrum of ages. Based on the race data, the largest percentage identifies as "white." However, the percentages have slowly been changing to reflect the growing diversity in our country. Although, the change is not drastic, by any means, the percentage of people who identify as "white" has decreased gradually over the years. The next highest percentages were in those who identify as "african-american/black" or "hispanic/latino(any race). I didn't pull the further breakdown within the different races, because it would have made the dataset too large, so I opted to focus on the Percentages of the Total Race data. 

Data Limitations: 

The biggest issue I had with US Census Data is that it is only officially pulled every ten years. I pulled most of my demographic data from the American Community Survey (ACS). It is a yearly done survey that does a brief snapshot of the census demographics creating estimations essentially. The main limitations are that the years 2023 and 2024 are not fully completed and released. It takes time for them to organize and release them. Therefore, I didn't have true demographic data past 2022 to use. Essentially, I created my datasets by pulling specific variables from the US Census ACS APIs. And built tailored datasets to match the demographics I wanted to look at. 

## Economic Analysis

BRIEFLY DESCRIBE YOUR DATA PROCESSING AND PREPARATION, AS WELL AS ANY FINDINGS IDENTIFIED DURING EXPLORATORY DATA ANALYSIS. INCLUDE IMAGES OR GRAPHS AS APPROPRIATE AND DESCIBE INSIGHTS UNIQUE TO THE EVALUATION OF ONLY YOUR DATASET (NOT YET COMBINED).

# Technical Overview:

1. **Language**: The backend is developed using Visual Studio Code Editor and Jupyter Notebooks in Python. Useful libraries utilized in the data processing phase of the project included pandas, nltk, matplotlib, and seaborn.
   
2. **Database**: PostgreSQL is used to store the eelction data. The database contains tables and schema for individual sentiment analysis data, individual demographic data, and location-based economic data. This relational database allows for ease of use and straightforward joining of the tables, which is essential for preparing our final dataset to feed our machine learning model.

3. **VisualizationS**: The Tableau public site is a useful way to present the story of the data and the insights derived from it. < CONTINUE TO DESCRIBE MORE AS FINALIZE VISUALIZATIONS>

# Key Features:

- **Interactive Dashboard**: Displays election information across multiple election cycles that users can click to view and compare detailed information.
- **Filter Options**: Users can filter by election year, political party, or any of the input features factored into the election prediction.
- **Dynamic Updates**: The dashboard updates in real-time based on the user's selections, ensuring relevant results are displayed.
- **Detailed Park Information**: Each park marker provides detailed information, including park name, website link, fees, and seasonal temperatures.

### Installation Instructions:

To run the National Parks Finder app locally, follow these steps:

1. **Clone the repository**: Clone the project repository to your local machine.
2. **Navigate to the project directory**: Open the integrated terminal in your code editor and navigate to the project directory.
3. **Install dependencies**: Run the following command to install the required Python packages:
    ```sh
    pip install -r requirements.txt
    ```
4. **Run the code**: DESCRIBE THE ORDER TO RUN THE VARIOUS CODE DOCUMENTS AND WHAT TO DO WITH THE OUTPUT FILES:
5. **Access the visualizations**: INSTRUCTIONS TO ACCESS PAGE IN TABLEAU AND VIEW DASHBOARDS.

# Ethical Considerations

When extracting the data for the social media sentiment, individual demographics, and location-based economic analyses, significant efforts were made to ensure ethical considerations were addressed throughout the process. Out team ensured data accuracy and integrity by cross-referencing information from multiple reliable sources to avoid the propagation of misinformation. Transparency was maintained by clearly documenting the data sources, transformation processes, and any limitations or biases inherent in the data. 

# References
## Datasets: 
* Social Media Sentiments
    1. 2016 dataset (tweets.csv): https://www.kaggle.com/datasets/benhamner/clinton-trump-tweets/data
    2. 2020 datasets (hashtag_donaldtrump.csv, hashtag_joebiden.csv): https://www.kaggle.com/datasets/manchunhui/us-election-2020-tweets/data
    3. 2024 dataset (news_data_with_sentiment.csv): https://www.kaggle.com/datasets/sukanto/trump-vs-biden-sentiment-analysis/data

* US Demographics
    1. https://www.census.gov/data/developers/data-sets/acs-1year.2021.html#list-tab-843855098
    2. https://www.census.gov/data/developers/data-sets/decennial-census.html
    3. https://www.kaggle.com/datasets/kwullum/fatal-police-shootings-in-the-us?select=ShareRaceByCity.csv
    4. https://www.kaggle.com/datasets/minhbtnguyen/us-census-for-election-predictions-20002020?      select=county_census_and_election_result.csv

* US Economics
    1. PROVIDE LINK


## Team Gitlab
https://github.com/azmedtech/Election_Prediction_Project_4
