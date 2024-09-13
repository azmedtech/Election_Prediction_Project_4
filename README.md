# Predicting the 2024 Presidential Election Outcome 
Jessica Bourbon, Syed Shahid, Stephanie Souza, and Elisabeth Trujillo

![Election Blurb](<Visualizations/wordcloud.png>)

# Introduction

Welcome to the Predicting the 2024 Presidential Election Outcome project! This ambitious endeavor combines a wealth of data sources to forecast one of the most significant political events of our time. By harnessing the power of historical demographics, economic indicators, and social media trends, we aim to develop a robust machine learning model that predicts the outcome of the 2024 U.S. presidential election. Our approach integrates data from the U.S. Census, the Bureau of Economic Analysis, and Twitter (X) to build a predictive model that captures the multifaceted nature of electoral dynamics.

Our final presentation can be found at ![Average Sentiment By Party](https://github.com/azmedtech/Election_Prediction_Project_4/blob/main/Election_Prediction_Presentation.pptx) and our Tableau story can be found at [Election Tableau Story](https://public.tableau.com/views/PresidentialPrediction2024/Story1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

# Project Overview

This project seeks to explore and analyze diverse datasets spanning from 2008 to 2020 to inform predictions about the upcoming 2024 presidential election. The core of our methodology involves:
 1. Exploratory Data Analysis (EDA): Conducting individual analyses of demographic, economic, and social media data to uncover insights and trends.
 2. Data Integration: Combining insights from all three data sources to enhance the predictive power of our model.
 3. Model Development: Training and optimizing a machine learning model that utilizes combined data to predict election outcomes.
 4. Performance Evaluation: Assessing the model's accuracy and making iterative improvements to ensure high performance.

## Sentiment Analysis

Three datasets were obtaiend from Kaggle.com (links below) and processed in Jupyter Notebooks using Python code. The datasets contained information about social media posts that had statements of a political nature. After cleaning and merging the data, the natual language took kit was used to generate sentiment scores for each post, broken into % neutral, % positive, and % negative (total sum = 1.0 per post). These scores were further evaluated to determine an overall average sentiment score by candidate, for each electio nyear data was avaialble (2016, 2020, and 2024). The goal of is to use this sentiment iformation, in additiona lto demographic and economic factors, to strengthen the predictive value of our machine learning model.  

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

![median_age_change_2008_2022](https://github.com/user-attachments/assets/89743aa9-0d8d-4f4e-b8f3-08994668dcd2)
Line graph showimg changes in median age in the US states over election years. 
Insights: Over the last few election years, the median age is consistently around 30-40 years old. There isn't much change in those values over time, but it seems to be steadily rising. Most of the age percentages taper at either end of the spectrum of ages. Based on the race data, the largest percentage identifies as "white." However, the percentages have slowly been changing to reflect the growing diversity in our country. Although, the change is not drastic, by any means, the percentage of people who identify as "white" has decreased gradually over the years. The next highest percentages were in those who identify as "african-american/black" or "hispanic/latino(any race). I didn't pull the further breakdown within the different races, because it would have made the dataset too large, so I opted to focus on the Percentages of the Total Race data. 

Data Limitations: The biggest issue with the US Census Data is that it is only officially pulled every ten years. The ajority of theavaialble demographic data was pulled from the American Community Survey (ACS). It is a yearly done survey that does a brief snapshot of the census demographics creating estimations essentially. The main limitations are that the years 2023 and 2024 are not fully completed and released. It takes time for them to organize and release them. Therefore, true demographic data past 2022 was unavailable for use. To create the datasets, specific variables from the US Census ACS APIs were pulled, and used to build tailored datasets to match the demographics of interest. 

## Economic & Election Analysis

The datasets from Kaggle, the Census Bureau, and the Bureau of Economic Analysis were first loaded and preprocessed to ensure uniformity in their formats. During this stage, columns were standardized across all datasets, especially for state names, year formats, and numeric values like GDP and employment. Missing values were addressed either by filling them with averages or removing rows lacking crucial information. Once the data was cleaned, economic indicators such as GDP, personal income, and employment were merged with election results data, aligning them by state and year. Separate datasets covering racial demographics, age groups, and sentiment scores were also merged by state, year, and candidate.

During the exploratory data analysis (EDA), a significant economic recovery was observed from 2008 to 2020, with GDP increasing steadily across most states following the 2008 financial crisis. Employment and personal income trends indicated that states with higher employment rates and rising personal incomes exhibited more voting stability, often supporting incumbents. In contrast, states with slower GDP growth or stagnant employment were more likely to shift political preferences, a trend particularly evident in the 2016 and 2020 elections.

![Total Votes by Party per State](<Economic Indicators/election_total_votes_bar_chart.png>)
Insights: Analysis on economic indicators like GDP, personal income, and employment changed from 2008 to 2020. You can observe any economic growth or decline in specific states.

![Economic Indicators Across Election Years](<Economic Indicators/economic_indicators_barplot_normalized.png>)
Insights:  Analysis on states with higher GDP tend to vote in elections. We can check whether wealthier states lean towards certain candidates or political parties.

Data Limitations: ENTER FINDINGS HERE

# Technical Overview:

1. **Language**: The backend is developed using Visual Studio Code Editor and Jupyter Notebooks in Python. Occasionally, due to environment limitations in environment or file sizem Google CoLab was used. Useful libraries utilized in the data processing phase of the project included pandas, nltk, matplotlib, and seaborn.
   
2. **Database**: PostgreSQL is used to store the eelction data. The database contains tables and schema for individual sentiment analysis data, individual demographic data, and location-based economic data. This relational database allows for ease of use and straightforward joining of the tables, which is essential for preparing our final dataset to feed our machine learning model.

3. **Visualizations**: The Tableau public site is a useful way to present the story of the data and the insights derived from it. A comprehensive story line tying the different factors that may influence voting outcome into a cohesive presentation of the Exploratory Data Analysis. The WordCLoud library was used to generate an interesting visual comprised of the top social media statements for each political party candidate across the three election cycles available. 

4. **Machine Learning Model**: Four different machine learning models were generated. These include Logistical Regression, TenserFlow, Rendom Forest, and Decision Tree. In each scenario the Target for the model was the Candidate (Political Party). Features evaluated included age, race, location, gross domestic product, individual income, availability of jobs, and social media snetiment.

# Key Features:

- **Interactive Dashboard**: Displays election information across multiple election cycles that users can click to view and compare detailed information.
- **Filter Options**: Users can filter by election year, political party, or any of the input features factored into the election prediction.
- **Dynamic Updates**: The dashboard updates in real-time based on the user's selections, ensuring relevant results are displayed.
- **Predictive Power**: Each machine learning model provides predictive information that indicates the most probable 2024 winning candidate, based on historical precedent. 

### Installation Instructions:

To use this project to predict the winning candidate locally, follow these steps:

1. **Clone the repository**: Clone the project repository to your local machine.
2. **Navigate to the project directory**: Open the integrated terminal in your code editor and navigate to the project directory.
3. **Install dependencies**: Ensure your local environment can accomodate pandas, numpy, matplotlib, tensorflow, wordcloud, and nltk. Alternatively, utilize Google CoLabs.
4. **Run the code**

    **Sentiment Anlaysis**: From the Sentiment_Analysis folder, run the individual Sentiment_2016, Sentiment_2020, and Sentiment_2024 code files. Next, run the Combined_Data_2016_2020_2024 code file to obtain the final combined sentiment analysis dataset. Running these files will generate the required CSVs as well as the EDA visualizations. The WordCloud code file was used to generate the visual at the head of this ReadMe file. 

    **Demographic Analysis**: ENTER INSTRUCTIONS HERE.

    **Economic Analysis**: ENTER INSTRUCTIONS HERE.

    **Machine Learing Models**: ENTER INSTRUCTIONS HERE.

5. **Access the visualizations**: INDICATE FILES USED TO GENERATE VISUALS.

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
