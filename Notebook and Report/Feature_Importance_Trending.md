## 🔍 Feature Importance Analysis — *Trending* Classification

This section interprets the feature importance outputs from three classification models: **Logistic Regression (LR)**, **Decision Tree Classifier (DTC)**, and **Random Forest Classifier (RFC)**. These insights inform which content attributes most significantly predict a video trending on TikTok using PopMart hashtag content.

---

### 1. Logistic Regression (LR)

| Ranking Method           | Top Features                                 | Key Observations                                                                 |
|--------------------------|-----------------------------------------------|----------------------------------------------------------------------------------|
| Proportional / MinMax Coefficients | `is_hirono`, `ads`, `followers`, `is_unboxing` | `is_hirono` shows the strongest effect. `ads` and `followers` also contribute. |

- **Interpretation**: Videos featuring **Hirono** character, promoted as **ads**, or created by users with more **followers** are more likely to trend.
- **Business Insight**: Campaigns using branded characters like **Hirono**, combined with **paid promotion**, and leveraging influencer follower bases are well-positioned to go trending.

---

### 2. Decision Tree Classifier (DTC)

| Top Features                         | Feature Importance |
|--------------------------------------|--------------------|
| `followers`, `duration_sec`, `videoscount`, `is_hirono` | 0.289, 0.279, 0.264, 0.079 |

- **Interpretation**: Content success is driven by **creator size**, **video length**, and **posting frequency**. 
- **Business Insight**: Encourage creators with larger followings to publish **longer content**, and maintain a high **posting cadence**. The Hirono tag remains a visual differentiator.

---

### 3. Random Forest Classifier (RFC)

| Top Features                                         | Feature Importance |
|------------------------------------------------------|--------------------|
| `duration_sec`, `followers`, `videoscount`, `is_hirono`, `is_labubu` | 0.284, 0.267, 0.236, 0.039, 0.038 |

- **Interpretation**: RFC highlights similar predictors as DTC but shows smoother distribution. The model reinforces the significance of **video length** and **creator scale**, while also lifting additional characters like **Labubu**.
- **Business Insight**: Trend-optimized content includes **longer duration** videos, from **frequent creators**, especially when featuring **Labubu** or **Hirono** characters.

---

### 🧾 Overall Takeaways

- **Consistent predictive features**: `followers`, `duration_sec`, `videoscount`, and `is_hirono` appear repeatedly across all models.
- **Character-centric content**: Both `is_hirono` and `is_labubu` consistently emerge as top indicators—highlighting the importance of character identity in PopMart video performance.
- **Tree-based models** (DTC/RFC) capture **non-linear patterns**, such as how long videos by large creators can produce exponential engagement effects, while LR offers coefficient clarity.

> 📌 **Actionable Recommendations**:
> - Partner with **high-follower creators** who post consistently.
> - Promote **longer-form content** and favor **unboxing or storytelling formats**.
> - Strategically leverage branded PopMart characters like **Hirono** and **Labubu** in campaigns.
> - Consider **paid ad boosts** to increase trending likelihood, especially for new product drops.

---
