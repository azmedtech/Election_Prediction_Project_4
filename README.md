# Predicting the 2024 Presidential Election Outcome 
Jessica Bourbon, Syed Shahid, Stephanie Souza, and Elisabeth Trujillo

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

## Demographic Analysis 

BRIEFLY DESCRIBE YOUR DATA PROCESSING AND PREPARATION, AS WELL AS ANY FINDINGS IDENTIFIED DURING EXPLORATORY DATA ANALYSIS. INCLUDE IMAGES OR GRAPHS AS APPROPRIATE AND DESCIBE INSIGHTS UNIQUE TO THE EVALUATION OF ONLY YOUR DATASET (NOT YET COMBINED).

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

### How It Works:

1. **Data Loading**: The app fetches data from MongoDB, including park details, amenities, activities, and weather information.
2. **Map Creation**: Using `folium`, the app creates an interactive map with markers for each park.
3. **User Interaction**: Users select desired amenities, activities, and season on the frontend.
4. **Filtering**: The backend processes these selections, queries the MongoDB database, and filters the parks accordingly.
5. **Map Update**: The filtered results are sent back to the frontend, and the map is updated dynamically to display the relevant parks.

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
    1. PROVIDE LINK

* US Economics
    1. PROVIDE LINK


## Team Gitlab
https://github.com/azmedtech/Election_Prediction_Project_4
