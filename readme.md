#  Ola Data Analysis Project — Ride-Sharing Performance Analysis

_Comprehensive performance analysis of ride-sharing operations to optimize revenue, reduce cancellations, and enhance customer experience using SQL and Power BI._

---

##  Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#data-cleaning--preparation">Data Cleaning & Preparation</a>
- <a href="#exploratory-data-analysis-eda">Exploratory Data Analysis (EDA)</a>
- <a href="#research-questions--key-findings">Research Questions & Key Findings</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#how-to-run-this-project">How to Run This Project</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---
<h2><a class="anchor" id="overview"></a>Overview</h2>

This project analyzes Ola's ride-sharing operations in July 2024 to identify performance bottlenecks and optimization opportunities. A complete data pipeline was built using SQL for analysis and Power BI for visualization, focusing on cancellation management, revenue optimization, and customer satisfaction improvement.

---
<h2><a class="anchor" id="business-problem"></a>Business Problem</h2>

Effective ride-sharing operations require minimizing cancellations and maximizing revenue efficiency. This project aims to:
- Reduce the critical 28.08% cancellation rate impacting revenue
- Analyze driver vs customer cancellation patterns
- Optimize revenue across vehicle types and payment methods
- Improve customer and driver satisfaction through data insights
- Identify operational inefficiencies and growth opportunities

---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- 103,024+ ride bookings from July 1-31, 2024
- 7 vehicle categories (Prime Sedan, E-Bike, Auto, Mini, Bike, Prime Plus, Prime SUV)
- Comprehensive booking, payment, and rating data
- Bengaluru city operations data

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

- SQL (MySQL, Complex Queries, Views, Joins)
- Power BI (Interactive Dashboards, KPI Tracking)
- Google Data Analytics Methodology
- Statistical Analysis

---
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
ola-data-analysis/
│
├── README.md
├── .gitignore
├── Ola Data Analysis Project - Comprehensive Report.pdf
│
├── sql-queries/                # SQL analysis scripts
│   ├── successful_bookings.sql
│   ├── cancellation_analysis.sql
│   ├── revenue_analysis.sql
│   └── rating_analysis.sql
│
├── dashboard/                  # Power BI dashboard
│   └── ola_performance_dashboard.pbix
│
└── data/                      # Dataset files
    └── ola_bookings_july2024.csv
```

---
<h2><a class="anchor" id="data-cleaning--preparation"></a>Data Cleaning & Preparation</h2>

- Validated 103,024 booking records for data quality
- Standardized payment method categories (Cash, UPI, Digital)
- Created derived metrics for success rates and revenue analysis
- Established booking lifecycle tracking from request to completion
- Categorized cancellation reasons for root cause analysis

---
<h2><a class="anchor" id="exploratory-data-analysis-eda"></a>Exploratory Data Analysis (EDA)</h2>

**Critical Performance Metrics:**
- Total Bookings: 103,024 with ₹35M revenue
- Success Rate: 62.09% (63,967 successful rides)
- Cancellation Rate: 28.08% (₹16M revenue loss)
- Daily Average: 3,320 bookings per day

**Revenue Distribution:**
- Average Revenue per Ride: ₹547
- Cash Payments: 55.7% vs Digital: 44.3%
- Prime Sedan leads with ₹5.22M successful booking value

**Service Quality:**
- Consistent 4.0+ ratings across all vehicle types
- Driver ratings: 3.98-4.01 range
- Customer satisfaction: 3.99-4.01 range

---
<h2><a class="anchor" id="research-questions--key-findings"></a>Research Questions & Key Findings</h2>

1. **Cancellation Analysis**: 28.08% rate with driver cancellations (17.89%) > customer cancellations (10.19%)
2. **Revenue Impact**: ₹16M monthly loss (₹10M driver, ₹6M customer cancellations)
3. **Vehicle Performance**: Prime Sedan leads with highest conversion rates
4. **Payment Preferences**: Cash dominance at 55.7% indicates digital adoption opportunity
5. **Customer Concentration**: Top 5 customers contribute only 0.93% of revenue
6. **Root Causes**: Personal/car issues (35.49%) and driver-pickup issues (30.24%) are primary factors

---
<h2><a class="anchor" id="dashboard"></a>Dashboard</h2>

- Power BI Dashboard shows:
  - Real-time booking performance metrics
  - Vehicle type comparison and revenue analysis
  - Cancellation pattern visualization
  - Payment method distribution
  - Customer and driver rating trends

![Ola Performance Dashboard](images/dashboard.png)

---
<h2><a class="anchor" id="how-to-run-this-project"></a>How to Run This Project</h2>

1. Clone the repository:
```bash
git clone https://github.com/yourusername/ola-data-analysis.git
```
2. Set up MySQL database and load data:
```bash
mysql -u username -p
CREATE DATABASE ola_analysis;
LOAD DATA INFILE 'data/ola_bookings_july2024.csv' INTO TABLE bookings;
```
3. Run SQL analysis queries:
```bash
mysql -u username -p ola_analysis < sql-queries/cancellation_analysis.sql
```
4. Open Power BI Dashboard:
   - `dashboard/ola_performance_dashboard.pbix`

---
<h2><a class="anchor" id="final-recommendations"></a>Final Recommendations</h2>

- Implement progressive driver penalty system to reduce 17.89% driver cancellations
- Launch emergency driver training program for customer service improvement
- Deploy real-time driver monitoring with automated notifications
- Target 70% digital payment adoption through incentive programs
- Optimize vehicle-customer matching to reduce cancellation rates

---
<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**Yash Tyagi**  
Data Analyst  
📧 Email: tyagiyaxh627@gmail.com
🔗 [LinkedIn](https://www.linkedin.com/in/yash-tyagi-9a38b1350/)
