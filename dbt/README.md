
# 🚀 FueLnFleet-Trends: dbt Project

Welcome to the **FueLnFleet-Trends** dbt project! This repository contains the end-to-end transformation logic for cleaning, enriching, and modeling fuel type and vehicle category registration data using **dbt + BigQuery**.

---

## 📦 Project Structure

- `sources/`: Raw data from BigQuery (`fuel_type_data`, `vehicle_category_data`)
- `models/staging/`: Data cleaning & fixing misaligned columns (`stg_*`)
- `models/core/`: Central fact table combining cleaned registrations (`fact_registrations`)
- `macros/`: Custom logic like date parsing and title case formatting
- `tests/`: Column-level and source-level assertions to ensure data quality

---

## 🛠️ Features Implemented

- ✅ Fix misaligned source columns from raw BigQuery tables  
- ✅ Add a derived `reg_date` field from month and year using macro  
- ✅ Normalize and title-case the `type` field  
- ✅ Standardize `category` values (`Fuel`, `Vehicle Category`)  
- ✅ Combine fuel and vehicle registration data into one fact table  
- ✅ Tests for not-null, uniqueness, accepted values  
- ✅ Full documentation with lineage, descriptions, and macro details

---

## ▶️ How to Use

```bash
# Run models
dbt run

# Run data tests
dbt test

# Generate documentation
dbt docs generate

# Serve docs locally (try a different port if 8000 is in use)
dbt docs serve --port 8080
```

---

## 🔧 Profiles Setup

Make sure your `profiles.yml` looks something like this:

```yaml
fuel_n_fleet:
  outputs:
    dev:
      type: bigquery
      method: service-account
      project: dtc-de-project-454809
      dataset: fuel_n_fleet
      location: US
      threads: 4
      keyfile: /path/to/your/my-creds.json
  target: dev
```

---

## 📚 Resources

- [dbt Documentation](https://docs.getdbt.com/docs/introduction)
- [dbt Discourse](https://discourse.getdbt.com/)
- [dbt Community Slack](https://community.getdbt.com/)
- [dbt Events](https://events.getdbt.com)
- [dbt Blog](https://blog.getdbt.com/)

---