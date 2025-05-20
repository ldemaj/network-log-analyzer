# 🌐 Network Monitoring Log Analyzer

This project is a lightweight uptime monitoring tool that checks whether a website is accessible and logs the results into an SQLite database. It was built specifically to monitor the status of [my personal portfolio](https://lorena.demaj.dev) and can be adapted for other URLs.

## ✅ Project Purpose

 I created this project to demonstrate:
- Bash scripting skills
- SQL (SQLite) usage for logging and analysis
- Proactive monitoring of critical web services

---

## 🛠️ Technologies Used
- **Bash**: To handle logic and uptime checks
- **curl**: To verify HTTP response codes
- **SQLite**: To log and analyze monitoring results using SQL

---

## 📁 Project Structure
noc-network-monitor/
├── monitor.sh # Main script to check site status and log to DB
├── init.sql # Creates the monitoring_log table
├── monitor.db # SQLite database (auto-generated)
└── queries.sql # Useful SQL queries for analysis


## 🚀 How to Run

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/noc-network-monitor.git
cd noc-network-monitor
```

### 2. Initialize the Database
```bash
sqlite3 monitor.db < init.sql
```
### 3. Run the Monitoring Script
```bash
bash monitor.sh
```
### 4. View the Logs
```sqlite3 monitor.db
sqlite> SELECT * FROM monitoring_log ORDER BY id DESC LIMIT 5;
```





