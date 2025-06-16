# 🎧 Music Store Sales Analysis (SQL Project)

Welcome to my SQL project where I analyzed a digital music store’s database to uncover key business insights using **advanced SQL queries**. This project simulates working with a real-world business—similar to iTunes—and covers **customer behavior**, **sales performance**, and **music genre trends** using **relational data**.

## 📊 Objective

To answer complex business questions using SQL queries that help stakeholders make data-driven decisions. The aim was to:

* Identify the best customers
* Discover top-performing cities and countries
* Analyze music genre popularity
* Explore sales trends and operational efficiency

## 🛠 Tools Used

* PostgreSQL (compatible with other SQL engines)
* DB Browser / SQLite Studio
* Jupyter Notebook (for interpretation, optional)
* GitHub (for version control)

## 📁 Dataset Overview

The database consists of multiple related tables including:

* `customers`, `invoices`, `invoice_line`
* `tracks`, `albums`, `artists`
* `genres`, `employees`

This schema provides a full 360° view of sales, customers, and music metadata.

---

## 📌 Key Business Questions Answered

### 🏆 Best City for a Music Festival

> **Which city generates the most revenue?**
> ✅ Found the city with the **highest invoice total** to help plan a promotional music event.

### 👑 Best Customer

> **Who has spent the most money?**
> ✅ Identified the top customer based on total spend.

### 🎸 Rock Music Fans

> **Who listens to rock music the most?**
> ✅ Listed all rock music listeners by email and name.

### 🤘 Top Rock Artists

> **Who are the most prolific rock artists?**
> ✅ Ranked artists by number of rock tracks they've produced.

### 🎵 Longest Tracks

> **Which songs are longer than average?**
> ✅ Listed all tracks longer than the average track length.

### 💰 Customer Spend on Artists

> **How much did each customer spend on the top-selling artist?**
> ✅ Calculated total customer spend on the most profitable artist.

### 🌍 Most Popular Genre by Country

> **What genre is most popular in each country?**
> ✅ Used `ROW_NUMBER()` to identify the top genre per country.

### 🌐 Top Customer by Country

> **Who is the top spender in each country?**
> ✅ Used `WITH` and recursive CTEs to find highest-spending customers per country.

---

## 🧠 What I Learned

* Mastered complex **JOINs**, **aggregate functions**, and **window functions**
* Used **CTEs** and **subqueries** for modular and readable queries
* Implemented **data storytelling** through SQL for business decision-making
* Gained real-world insight into music business dynamics using data

---

## 🚀 How to Use

1. Clone the repo
2. Load the database into a local SQL engine like SQLite or PostgreSQL
3. Run the queries in the provided `.sql` file or explore them one by one

---

## 🌟 Project Status

✅ Completed and documented
🛠️ Future enhancement: visualization using Power BI or Python (optional)

---

## 📫 Contact

Feel free to connect with me on [LinkedIn](#) or check out my [Portfolio](https://iambeep.github.io/ishmamfaruki.github.io/) for more projects.


