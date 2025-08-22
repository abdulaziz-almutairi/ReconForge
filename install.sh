
---

## **install.sh** (for all required tools)

```bash
#!/bin/bash

echo "Installing required tools for ReconForge..."

# Install Go (if not installed)
if ! command -v go &> /dev/null; then
    echo "[*] Go not found. Installing..."
    sudo apt update && sudo apt install -y golang-go || echo "Install Go manually."
fi

# Create Go bin directory
mkdir -p $HOME/go/bin
export PATH=$PATH:$HOME/go/bin

# Install subfinder
echo "[*] Installing subfinder..."
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Install assetfinder
echo "[*] Installing assetfinder..."
go install github.com/tomnomnom/assetfinder@latest

# Install httpx-toolkit
echo "[*] Installing httpx-toolkit..."
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

# Install naabu
echo "[*] Installing naabu..."
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Install gau
echo "[*] Installing gau..."
go install github.com/lc/gau/v2/cmd/gau@latest

# Install waybackurls
echo "[*] Installing waybackurls..."
go install github.com/tomnomnom/waybackurls@latest

# Install Amass
echo "[+] Installing Amass..."
go install -v github.com/owasp-amass/amass/v5/cmd/amass@main

# Install sublist3r
echo "[*] Installing Sublist3r"
pipx install sublist3r
#pip3 install sublist3r


# Update PATH
export PATH=$PATH:$HOME/go/bin

echo "[+] All tools installed! Ensure $HOME/go/bin is in your PATH."

