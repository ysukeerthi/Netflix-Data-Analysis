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

---

## 💼 Business Questions Solved

1. **What is the distribution between Movies and TV Shows on Netflix?**

2. **What are the most common content ratings for Movies and TV Shows?**

3. **Which movies were released in a specific year (e.g., 2020)?**

4. **Which 5 countries have the most content available on Netflix?**

5. **Which is the longest movie available on Netflix by duration?**

6. **Which titles were added to Netflix in the last 5 years?**

7. **Which Movies or TV Shows were directed by 'Rajiv Chilaka'?**

8. **Which TV Shows have more than 5 seasons?**

9. **How many content items exist in each genre/category?**

10. **Which years had the highest number of Netflix releases in India?**

11. **Which Movies are classified as Documentaries?**

12. **Which content entries are missing director information?**

13. **How many movies did actor 'Salman Khan' appear in during the last 10 years?**

14. **Who are the top 10 actors who appeared in the most Indian Netflix movies?**

15. **How much content contains themes like ‘kill’ or ‘violence’, and how can we categorize them as ‘Good’ or ‘Bad’?**





