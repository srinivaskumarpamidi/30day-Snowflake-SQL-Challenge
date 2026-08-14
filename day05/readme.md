# Day 5 — Snowflake SQL: String & Date Functions

## 📌 Overview

Day 5 of my **30-Day Snowflake SQL Challenge** focused on working with **String Functions** and **Date & Time Functions** in Snowflake.

The goal was to understand how SQL can be used for text manipulation, data cleaning, pattern matching, date calculations, and timestamp handling.

---

## 🎯 Topics Covered

### 🔤 String Functions

* `UPPER()`
* `LOWER()`
* `INITCAP()`
* `LENGTH()`
* `LEFT()`
* `RIGHT()`
* `SUBSTR()`
* `CONCAT()`
* `||` Concatenation
* `REPLACE()`
* `TRIM()`
* `LPAD()`
* `RPAD()`
* `REVERSE()`
* `REPEAT()`
* `POSITION()`
* `CHARINDEX()`
* `CONTAINS()`
* `STARTSWITH()`
* `ENDSWITH()`
* `SPLIT()`
* `SPLIT_PART()`
* `TRANSLATE()`
* `ASCII()`
* `CHR()`

### 🔎 Pattern Matching

* `LIKE`
* `ILIKE`

### 📅 Date & Time Functions

* `CURRENT_DATE()`
* `CURRENT_TIME()`
* `CURRENT_TIMESTAMP()`
* `YEAR()`
* `MONTH()`
* `DAY()`
* `QUARTER()`
* `DAYNAME()`
* `MONTHNAME()`
* `EXTRACT()`
* `DATEADD()`
* `DATEDIFF()`
* `MONTHS_BETWEEN()`
* `DATE_TRUNC()`
* `LAST_DAY()`
* `ADD_MONTHS()`
* `NEXT_DAY()`
* `PREVIOUS_DAY()`
* `DATE_FROM_PARTS()`
* `TIME_FROM_PARTS()`
* `TIMESTAMP_FROM_PARTS()`

---

## 🛠️ Practical Examples

Some of the practical tasks performed:

* Converted employee names to uppercase and lowercase
* Calculated name lengths
* Extracted characters using `LEFT()`, `RIGHT()` and `SUBSTR()`
* Combined first and last names
* Modified email domains using `REPLACE()`
* Added padding to employee IDs using `LPAD()` and `RPAD()`
* Reversed strings
* Extracted usernames and domains from email addresses
* Checked email contents using `CONTAINS()`
* Used `LIKE` and `ILIKE` for pattern matching
* Extracted year, month and day from joining dates
* Calculated days and months since employees joined
* Added days, months and years to dates
* Found month and year boundaries
* Created dates, times and timestamps using `*_FROM_PARTS()` functions

---

## 📂 Files

```text
day05/
│
├── day05.sql
└── README.md
```

---

## 🧠 Key Learning

Today I learned how Snowflake SQL functions can be used for:

* Text transformation
* Data cleaning
* String extraction
* Pattern matching
* Email processing
* Date manipulation
* Date difference calculations
* Timestamp generation

These functions are useful for **data cleaning, data analysis, ETL processes, and real-world SQL projects**.

---

## 🚀 Challenge Progress

**Day 5 / 30 Completed ✅**

Continuing to build consistency by practicing Snowflake SQL every day.

#Snowflake #SQL #30DaySQLChallenge #DataAnalytics #DataScience #LearningInPublic
