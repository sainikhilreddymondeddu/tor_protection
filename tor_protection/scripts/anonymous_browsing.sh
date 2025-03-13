#!/bin/bash
# Enable Tor for browsing
export http_proxy="socks5://127.0.0.1:9050"
export https_proxy="socks5://127.0.0.1:9050"
echo "Tor is now enabled for browsing!"