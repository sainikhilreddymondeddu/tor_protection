## Tor to Protect Our System 🛡️

![Tor Network](https://media.giphy.com/media/3o7abldj0b3rxrZUxW/giphy.gif)

## 📌 Overview
This project focuses on using **Tor** to enhance **online privacy** and **secure browsing**, preventing tracking and surveillance.

## 📂 Project Structure
```
tor-protection/
├── README.md
├── scripts/
│   ├── install_tor.sh
│   ├── configure_tor.sh
│   ├── check_ip.sh
│   ├── anonymous_browsing.sh
├── results/
│   ├── ip_before.txt
│   ├── ip_after.txt
├── docs/
│   ├── tor_setup_guide.md
│   ├── tor_usage.md
├── LICENSE
```

## ⚡ Installation & Setup
```bash
# Clone the repository
git clone https://github.com/YourUsername/tor-protection.git
cd tor-protection

# Make scripts executable
chmod +x scripts/*.sh
```

## 🚀 Usage
### 1️⃣ **Install Tor**
```bash
bash scripts/install_tor.sh
```

**install_tor.sh:**
```bash
#!/bin/bash
# Install Tor
sudo apt update && sudo apt install -y tor
```

### 2️⃣ **Configure Tor**
```bash
bash scripts/configure_tor.sh
```

**configure_tor.sh:**
```bash
#!/bin/bash
# Configure Tor settings
echo "StrictNodes 1" | sudo tee -a /etc/tor/torrc
echo "ExitNodes {us},{gb}" | sudo tee -a /etc/tor/torrc
sudo systemctl restart tor
```

### 3️⃣ **Check IP Before Using Tor**
```bash
bash scripts/check_ip.sh > results/ip_before.txt
```

**check_ip.sh:**
```bash
#!/bin/bash
# Check current IP address
curl -s https://check.torproject.org/api/ip | jq -r '.IP'
```

### 4️⃣ **Enable Anonymous Browsing**
```bash
bash scripts/anonymous_browsing.sh
```

**anonymous_browsing.sh:**
```bash
#!/bin/bash
# Enable Tor for browsing
export http_proxy="socks5://127.0.0.1:9050"
export https_proxy="socks5://127.0.0.1:9050"
echo "Tor is now enabled for browsing!"
```

### 5️⃣ **Check IP After Enabling Tor**
```bash
bash scripts/check_ip.sh > results/ip_after.txt
```

## 📊 Results
**IP Logs:**
- Before using Tor: `results/ip_before.txt`
- After enabling Tor: `results/ip_after.txt`

**Example Content:**
**ip_before.txt:**
```
Your public IP: 192.168.1.1
```
**ip_after.txt:**
```
Your Tor IP: 185.220.101.1
```

## 📜 Documentation
📖 **Tor Setup Guide:** `docs/tor_setup_guide.md`
📖 **Tor Usage Instructions:** `docs/tor_usage.md`

**tor_setup_guide.md:**
```md
# Tor Setup Guide
This guide helps you install and configure Tor for secure browsing.

## Installation Steps
1. Run `install_tor.sh`
2. Configure Tor using `configure_tor.sh`
3. Verify Tor is running: `systemctl status tor`
```

**tor_usage.md:**
```md
# Tor Usage Guide

## How to Use Tor for Anonymous Browsing
1. Check your IP before using Tor: `bash scripts/check_ip.sh`
2. Enable Tor for browsing: `bash scripts/anonymous_browsing.sh`
3. Verify Tor IP: `bash scripts/check_ip.sh`
```

## 📜 License
This project is licensed under the **MIT License**.

🔹 *Contributions are welcome! Feel free to fork and improve this project!*
