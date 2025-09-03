markdown

# Analysis of Prevalence of Obesity(SQL + Tableau)
The project analyzes the prevalence of obesity using SQL in BigQuery and dashboard in Tableau. The following key risk factors of obesity are examined to understand their relationship in people with obesity: age, gender and level of physical activity.

## Data source
This project uses data sourced from Kaggle. The dataset can be accessed here:https://www.kaggle.com/datasets/mrsimple07/obesity-prediction

**The dataset is publicly available on Kaggle and may be subject to usage restrictions under its license.**

## Technologies used
- Google BigQuery SQL
- Tableau

## Tableau dashboard
The dashboard can be accessed here: https://public.tableau.com/views/obesity_prevalence/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Dashboard preview
![Prevalence of obesity dashboard](tableau/screenshot_(28))

## Analysis questions
1. What percentage of the population is obese?  
2. How does obesity prevalence vary by **age group**?  
3. How does obesity prevalence differ between **men and women**?  
4. Is there a relationship between **physical activity levels** and obesity?  

## Results of analysis
- Obesity was the second least common category in the sample population.
- The average age of people with obesity was 49.
- The prevalence of obesity was highest among people aged 50+.
- The obesity rate among the sample population aged below 30 was less than half the rate of those aged 50+.
- Out of the general population of people with obesity, males had a slightly higher prevalence than females.
- Out of the top 10 most obese people, women dominated.
- The level of physical activity of majority of obese people fell between slightly active and very active. 

## Usage instructions
1. Upload the dataset to Google BigQuery.  
2. Open the file `queries-obesity_prevalence.sql`.
3. Run the queries in BigQuery SQL editor.
4. Use the Tableau Public link to view the dashboard.
5. Run the queries in BigQuery SQL editor to reproduce the analysis. 

Run the queries in 
