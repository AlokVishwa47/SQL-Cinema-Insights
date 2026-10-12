# Cinema Data Intelligence (SQL Case Study)

**Alok Vishwakarma · AMV Company**

This project analyses movie performance by connecting information across relational tables, with the goal of creating a clearer picture of business performance. Its implemented query joins movie metadata with box-office records and ranks movies by combined domestic and international revenue.

**Aspiring Data Analyst committed to turning raw data into strategic business decisions.** My original analytics focus continues alongside new ERP workflow demonstrations for AMV Company.

## Implemented query

[analysis.sql](analysis.sql) uses an inner join between `Movies` and `Boxoffice`, adds domestic and international sales into `Total_Revenue`, includes each movie's rating, and sorts by descending revenue.

Required columns:

| Table | Columns |
| --- | --- |
| `Movies` | `Id`, `Title`, `Rating` |
| `Boxoffice` | `Movie_id`, `Domestic_sales`, `International_sales` |

The source uses SQL features compatible with SQLite and common relational databases. The sales columns should use the same currency and reporting period for a meaningful comparison. An inner join excludes movies that have no matching box-office record; missing or null revenue values need a defined treatment before working with a real dataset.

## Reproduce with fictional data

After cloning the repository, run:

```bash
python -c "import sqlite3,pathlib; c=sqlite3.connect(':memory:'); c.executescript(pathlib.Path('sample_data.sql').read_text()); print(c.execute(pathlib.Path('analysis.sql').read_text()).fetchall())"
```

Expected order: **Demo Film B** (200,000) followed by **Demo Film A** (150,000). These are synthetic values, not reported movie revenue.

## Scope

This repository contains one revenue-ranking query. Genre comparison, missing-rating audits, ROI and domestic/international ratios are possible extensions and are not implemented here. No measured client outcomes or production deployment are claimed.

## More work

- [ERP Operations & Approval demo](https://github.com/AlokVishwa47/SQL-Cinema-Analytics-Case-Study/tree/main/erp-labs/operations)
- [School & Publisher Settlement Dashboard](https://github.com/AlokVishwa47/SQL-Cinema-Analytics-Case-Study/tree/main/erp-labs/settlement-dashboard)
- [GitHub profile](https://github.com/AlokVishwa47)
- [AMV Company website — private review, access restricted](https://amv-company.alokvishwa.chatgpt.site)
- [Discuss a project](mailto:Alok47@hotmail.com)

Developed & Managed by Alok Vishwakarma · AMV Company
