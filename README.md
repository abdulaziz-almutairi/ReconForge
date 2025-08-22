# 🔧 ReconForge - Advanced Reconnaissance Tool

![Shell Script](https://img.shields.io/badge/language-Bash-yellow)
![Tool Type](https://img.shields.io/badge/category-reconnaissance-purple)

**ReconForge** is a powerful, modular reconnaissance automation tool designed for bug bounty hunters and security researchers. Built in Bash, it streamlines subdomain discovery, port scanning, technology fingerprinting, vulnerability checks, and more — all from a single command.

🚀 _From passive enumeration to active probing — ReconForge has you covered._

---

## 🌟 Features

- **Subdomain Enumeration**: Uses `subfinder`, `assetfinder`, `amass`, and `sublist3r`.
- **Port Scanning**: Fast port detection with `naabu`.
- **Technology Detection**: Identify tech stacks using `httpx`.
- **Vulnerability Checks**: Quick scan for common misconfigurations (`.git`, `.env`, `phpinfo.php`, etc).
- **Historical URLs**: Gather endpoints via `gau` and `waybackurls`.
- **IP Extraction**: Resolve and deduplicate IPs from live hosts.
- **Modular Flags**: Run specific modules or go full recon with `-a`.

---

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/abdulaziz-almutairi/ReconForge.git
cd ReconForge
```

----

### 2. Install Dependencies

```bash
chmod +x install.sh
./install.sh
```

----

### 3. Run Reconnaissance

```bash
chmod +x ReconForge.sh

# Example: Full recon
./ReconForge.sh -a example.com

# Example: Subdomains + Alive check + Tech scan
./ReconForge.sh -st example.com
```

----

### Flags

```sh
-s                      Subdomain enumeration
-p                      Port scanning
-t                      Technology fingerprinting
-v                      Vulnerability checks
-u                      Collect historical URLs
-i                      Extract unique IPs
-a                      Run all modules
-h                      Show help menu
```

    ✅ You can combine flags: ./ReconForge.sh -spvt example.com

---

## 🙌 Author

**ReconForge** is created and maintained by **Abdulaziz Almutairi** (dr34m)  
A passionate cybersecurity researcher and bug bounty hunter focused on automation, reconnaissance, and offensive security.

🐦 Follow me on Twitter/X: [@x_4ziz](https://x.com/x_4ziz)
