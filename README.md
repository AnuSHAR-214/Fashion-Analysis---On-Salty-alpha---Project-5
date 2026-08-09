# Fashion Industry Analytics Dashboard

An end-to-end data analytics project that collects fashion e-commerce product data, stores it in a relational database, applies AI-based text analysis, and presents the findings through an interactive Power BI dashboard.

---

## Overview

The project takes raw product listings from **Salty Alpha** (https://salty.co.in), an Indian fashion clothing brand, and turns them into business-ready insights — pricing patterns, category distribution, product positioning, and customer sentiment. It is built to demonstrate the complete analytics lifecycle: collection, cleaning, storage, analysis, and visualization.

---

## Tech Stack

| Layer | Tools |
|---|---|
| Data Collection | Python, Requests, BeautifulSoup |
| Data Processing | Pandas, NumPy |
| Storage | SQL (SQL Server / MySQL), SQLAlchemy |
| AI / NLP | TextBlob (sentiment analysis) |
| Visualization | Power BI, Matplotlib, Seaborn |

---

## Data Source

**Salty Alpha** — https://salty.co.in

An online fashion clothing store offering t-shirts, shirts, hoodies, and related apparel. Product catalogue pages serve as the source for all data used in this project.

---

## Data Collected

- Product Name
- Price
- Category
- Rating (where available)
- Description
- Product URL
- Image URL

---

## Project Structure

```
fashion-analytics/
│
├── data/
│   ├── raw/                 # Scraped output
│   └── processed/           # Cleaned datasets
│
├── src/
│   ├── scraper.py           # Data collection
│   ├── cleaning.py          # Preprocessing and feature creation
│   ├── sentiment.py         # NLP scoring
│   └── db_loader.py         # Database ingestion
│
├── sql/
│   ├── schema.sql           # Table definitions
│   └── analysis.sql         # Analytical queries
│
├── dashboard/
│   └── fashion_analytics.pbix
│
├── requirements.txt
└── README.md
```

---

## Setup

```bash
git clone <repository-url>
cd fashion-analytics

python -m venv venv
venv\Scripts\activate        # Windows
source venv/bin/activate     # macOS / Linux

pip install -r requirements.txt
```

Configure database credentials in a local `.env` file before running the loader.

---

## Usage

```bash
python src/scraper.py       # Collect product data
python src/cleaning.py      # Clean and enrich
python src/sentiment.py     # Generate sentiment labels
python src/db_loader.py     # Load into SQL
```

Open the `.pbix` file in Power BI Desktop and refresh the connection to view the dashboard.

---

## Dashboard Highlights

**KPI Cards** — Total Products · Average Price · Highest Price · Category Count

**Visuals**
- Products by Category (bar)
- Category Distribution (pie)
- Product Mix (tree map)
- Price Distribution and Trends (line)
- Top 10 Highest-Priced Products
- Sentiment Breakdown (positive / neutral / negative)

---

## Sample Insights

- Oversized T-shirts form the largest share of the catalogue.
- The average listed price sits in the mid-range segment, indicating a value-focused positioning.
- Neutral and dark colour products dominate the assortment.
- Premium-priced items account for a significant share of total listings despite lower unit counts.

---

## Notes

- Scraping is rate-limited and intended for educational and analytical use only.
- Scraper selectors are tied to the current HTML structure of salty.co.in and may need updating if the site layout changes.
- Always review the website's `robots.txt` and terms of use before collecting data.
- All product data, names, and images belong to Salty Alpha; this project claims no ownership over them.

---

## License

Released under the MIT License.
