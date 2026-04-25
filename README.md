# 🚀 Real-Time System Monitor

A real-time Linux system monitoring dashboard built using **Bash, Flask-SocketIO, and Chart.js**, capable of streaming live CPU, RAM, and Disk usage directly to a web interface.

---

## 🔥 Features

* 📊 Live CPU, RAM, and Disk monitoring
* ⚡ Real-time updates using WebSockets
* 🎨 Interactive charts with Chart.js
* 🚨 Alert system for high CPU usage
* 📁 Lightweight logging system (CSV-based)
* 🖥️ Clean and responsive UI

---

## 🧰 Tech Stack

* **Backend:** Python (Flask + Flask-SocketIO)
* **Frontend:** HTML, CSS, JavaScript (Chart.js)
* **System Monitoring:** Bash scripting
* **Environment:** WSL (Ubuntu)

---

## ⚙️ How to Run

### 1️⃣ Clone Repository

```bash
git clone https://github.com/Vanshik02/system-monitor.git
cd system-monitor
```

### 2️⃣ Setup Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate
```

### 3️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

### 4️⃣ Run Monitoring Script

```bash
chmod +x monitor.sh
./monitor.sh
```

### 5️⃣ Run Server

```bash
python3 app.py
```

### 6️⃣ Open in Browser

```
http://127.0.0.1:5000
```

---

## 🖥️ Demo

> Live updating graph showing system resource usage in real-time.

---

## 🚀 Future Improvements

* 🌐 Cloud deployment (AWS / Render)
* 📧 Email alerts
* 📊 Historical data storage (Database)
* 🤖 AI-based anomaly detection

---

## 📌 Author

**Vanshik Jain**
B.Tech CSE Student | Developer

---

## ⭐ If you like this project, give it a star!
