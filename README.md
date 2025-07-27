# Netflix Movies and TV Shows Data Analysis
![Netflix Logo](https://github.com/ysukeerthi/Netflix-Data-Analysis/raw/main/Netflix_logo.png)
# 🎥 Netflix Content Analysis using SQL

Unlocking hidden insights from Netflix’s rich catalog of movies and TV shows through advanced SQL queries.

---

## Project Overview

This project dives deep into Netflix's global entertainment offerings using structured SQL analysis. Leveraging PostgreSQL, the analysis explores content trends, audience targeting, country-wise distribution, and keyword classification. The objective is to answer key business questions using efficient SQL techniques—ideal for aspiring data analysts.

---

## Objectives

- Explore the split between Movies and TV Shows.
- Determine top-performing content types, ratings, and genres.
- Identify key contributors (directors, actors, countries).
- Categorize content using descriptive keyword analysis.
- Evaluate content addition trends across the past decade.

---

## Dataset Overview

- **Source:** [Kaggle - Netflix Titles](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Format:** CSV
- **Records:** ~8,800+
- **Columns:** title, type, director, cast, country, date_added, release_year, rating, duration, genre, description

---

## Database Schema

```sql
CREATE TABLE netflix (
    show_id      VARCHAR(5),
    type         VARCHAR(10),
    title        VARCHAR(250),
    director     VARCHAR(550),
    casts        VARCHAR(1050),
    country      VARCHAR(550),
    date_added   VARCHAR(55),
    release_year INT,
    rating       VARCHAR(15),
    duration     VARCHAR(15),
    listed_in    VARCHAR(250),
    description  VARCHAR(550)
);


