# Ola Ride Analytics & Business Insights

## 📌 Objective
Analyze Ola ride booking data to find demand patterns, cancellations, fare behavior, and provide business recommendations using Python, MySQL, and Power BI.

---

## 🔧 Tech Stack
- **Python** → Pandas, Seaborn, Matplotlib, YData Profiling, Statsmodels  
- **SQL** → MySQL (queries for booking, cancellations, ratings)  
- **Power BI** → Interactive dashboards, conditional columns, storytelling insights  

---

## 📊 Workflow
1. **Data Cleaning & Preparation**  
   - Handle null values (e.g., V_TAT, C_TAT, cancellation reasons)  
   - Create conditional columns (time slots, cancellation flags, etc.)  

2. **EDA & Statistical Analysis (Python)**  
   - YData Profiling Report  
   - Hypothesis testing: t-test, chi-square, regression  
   - Key finding: most rides are short, cancellations ≈ 4.7%, flat pricing trend  

3. **SQL Queries**  
   - Weekly demand, cancellations, and ratings analysis  

4. **Power BI Dashboards**  
   - Page 1 → Executive Summary  
   - Page 2 → Ride & Fare Analysis  
   - Page 3 → Time & Demand Analysis  
   - Page 4 → Ratings & Cancellations Analysis  
   - Page 5 → Revenue & Business Growth  

---

## 📌 Key Insights
- **Short trips dominate** (median distance ~8 km, avg fare ₹548)  
- **Cancellation Rate ~4.7%** — mostly vendor/customer issues  
- **Peak demand** during off-peak slots; weekday demand higher than weekends  
- **Cash payments dominate (70%+)**; low digital adoption  

---

## 🚀 Recommendations
- Promote short-trip loyalty offers  
- Re-evaluate pricing for long trips  
- Improve vendor TAT monitoring & customer reminders  
- Push digital payments via discounts/offers  

---

⭐ *If you found this project useful, consider giving it a star on GitHub!*
