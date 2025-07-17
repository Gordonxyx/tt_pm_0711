## 🔍 Feature Importance Summary for Virality Classification

This section interprets the feature importance across three classification models — **Logistic Regression**, **Decision Tree Classifier**, and **Random Forest Classifier** — applied to predicting **viral PopMart TikTok posts**. Insights are based on post metadata and engineered attributes, focused on uncovering what drives virality.

---

### ✅ Logistic Regression (LR)

**Methodology:** Coefficients were scaled using both proportional and MinMax normalization for interpretation.

**Key Drivers:**
- `is_skullpanda` (coef: -2.31) and `is_hirono` (coef: -2.09) are the strongest negative predictors of virality, indicating content featuring these characters may suppress virality under the current data and audience behavior.
- `followers` (coef: 1.30) and `ads` (coef: 1.17) are positive indicators of virality — indicating that both established creators and promoted content tend to perform better.
- `is_cute` and `is_crybaby` also show moderate negative coefficients, suggesting a potential aesthetic fatigue for "cute" or specific character types.

**Business Implication:** While follower size and ad spend help, content themes like `skullpanda` and `hirono` may need reframing or rotation in campaigns to maintain freshness and avoid saturation.

---

### 🌳 Decision Tree Classifier (DTC)

**Key Drivers (Gini-based feature importance):**
- `followers` (0.642) dominates model splits — a creator’s follower count remains the most deterministic factor.
- `is_skullpanda` (0.163) and `videoscount` (0.097) follow, emphasizing the importance of creator-level attributes.
- Interestingly, character content like `hirono`, `cute`, and `labubu` had near-zero contribution, suggesting their impact is non-linear and might be masked in tree splits.

**Business Implication:** Targeting creators with high follower counts is a more effective lever than optimizing content aesthetics alone. Virality decisions at the post-level may not be captured well by simple tree splits for some brand themes.

---

### 🌲 Random Forest Classifier (RFC)

**Key Drivers (Aggregated split importance):**
- `followers`, `videoscount`, and `duration_sec` form a strong trio of foundational engagement predictors.
- Visual themes like `is_skullpanda`, `is_labubu`, `is_crybaby`, and `is_cute` contribute non-negligibly, indicating that a combination of creator reach and creative theme matters.
- `ads` and `is_recommendation` scored low, suggesting organic factors might play a stronger role than paid visibility in virality under this dataset.

**Business Implication:** Blended creator-content strategies — matching high follower creators with longer, well-paced videos that subtly integrate popular character IPs — may lead to the best viral lift.

---

### 🔗 Takeaway for Marketers

- **Across all models**, `followers` remains the most consistent and dominant feature. Virality is still a distribution game driven by reach.
- **Logistic Regression** emphasizes linear signals and penalizes certain characters/themes.
- **Tree-based models** offer more nuanced views — especially Random Forest — which balances character aesthetics with reach and content format.
- Campaigns should consider **balancing creator size with content style**, and avoid over-relying on repeated character motifs unless paired with strong post format and timing.

