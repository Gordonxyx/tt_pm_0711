# 🎥 PopMart TikTok Virality & Engagement Prediction

This project analyzes TikTok content engagement for PopMart collectible lines such as **Labubu, Crybaby, Skullpanda, Hirono**, etc. It uses scraped video metadata tagged with `#popmart` to model content virality, understand creator/music impact, and uncover actionable trends.

---

## 👨‍💻 What I Did

### 📌 Role: Data & Content Analyst | ML Engineer  
- **Built an ETL & Analytics Pipeline** using **Apify Scraper, Python, Snowflake SQL, and dbt** to ingest and process **800+ TikTok videos** tagged with `#popmart`, extracting structured metadata across **Posts, Creators, and Music**.  
- **Engineered 10+ features** including engagement rate, virality, and content themes, and defined key classification thresholds (50th/90th percentile cutoffs).  
- Trained and tuned **Linear Regression, Logistic Regression, Decision Tree, and Random Forest** models with GridSearchCV to predict engagement and classify virality/trending; 
- (Coming Soon) Created a **Creator-Music Campaign Brief** powered by ML feature importance analysis, recommending high-performing music tracks for organic promotion via top-tier creators. 

---

## 🧠 Project Goal

> To uncover how caption, music, creator type, and pre-publishing metadata predict **video virality**, **engagement rates**, and **content trends** for PopMart Content on TikTok.

---

## 🛠 Tools & Tech Stack

| Function          | Tools Used                                                  |
|-------------------|-------------------------------------------------------------|
| Data Collection   | [Apify TikTok Hashtag Scraper](https://apify.com)           |
| Data Handling     | Python (`pandas`, `numpy`)                                   |
| Modeling          | `scikit-learn`, `statsmodels`, `GridSearchCV`               |
| SQL / Data Mart   | `Snowflake SQL`, `dbt` (modeled mart_author & mart_post)    |
| Visualization     | `matplotlib`, `seaborn`, `Power BI`                         |

---

## 📥 Raw Features Extracted

| Category     | Features                                                                 |
|--------------|--------------------------------------------------------------------------|
| Post Meta    | `posturl`, `webvideourl`, `caption`, `ads`, `mute`, `duration_sec`       |
| Engagement   | `likes`, `shares`, `views`, `comments`                                   |
| Music        | `musicname`, `musicalbum`, `musicauthor`, `musictype`                    |
| Creator      | `authorname`, `followers`, `videoscount`, `accounttype`, `sellerstatus`  |
| Time         | `created_at`                                                             |

---

## 🧪 Engineered Features

| Feature Name         | Description                                       |
|----------------------|---------------------------------------------------|
| `like_rate`          | likes / views                                     |
| `share_rate`         | shares / views                                    |
| `comment_rate`       | comments / views                                  |
| `engagement_rate`    | (likes + shares + comments) / views               |
| `virality`           | 1 if views > 90th percentile                      |
| `trending`           | 1 if engagement_rate > 50th percentile                      |
| `is_labubu`          | binary flag from caption                          |
| `is_crybaby`         | … same for each PopMart character & theme         |
| `is_unboxing`, `is_blindbox`, `is_recommendation`, `is_cute` | content-type indicators |

---

## 📊 Models Built

| Model                | Goal                     | Key Metric Outcome             |
|----------------------|--------------------------|--------------------------------|
| Linear Regression    | Predict views            | R² = 0.18                      |
| Logistic Regression  | Classify virality/trending        | Recall = ~56%                  |
| Decision Tree        | Classify virality/trending        | Recall = ~73%                  |
| Random Forest        | Classify virality/trending        | Recall = ~61%                  |

- Models trained on pre-engagement features (before posting).
- Labels generated from engagement percentiles (e.g., top 10%).

---

## 📈 Campaign Brief: Creator + Music Synergy

An internal **Creator-Music Campaign Brief** is going to be drafted, based on:
- **Feature Importance** from trained models
- **High-performing Creator Segments** 
- **Music Artists/Track recommendations** 

---

## 📦 Data Mart Structure

| Table        | Description                                                      |
|--------------|------------------------------------------------------------------|
| `mart_author`| Creator-level features for modeling creator impact               |
| `mart_post`  | Post-level features incl. music performance and caption analysis |

---

## 📬 Stay Tuned

Check out the modeling notebooks and dashboards in the repo. More insights coming soon with:
- Live sentiment-caption classification
- Topic modeling and hashtag trends
- Creator-music pairing recommender

Thanks to **Apify** for enabling scalable scraping and trend tracking for TikTok content.

---
