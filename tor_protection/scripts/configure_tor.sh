#!/bin/bash
# Configure Tor settings
echo "StrictNodes 1" | sudo tee -a /etc/tor/torrc
echo "ExitNodes {us},{gb}" | sudo tee -a /etc/tor/torrc
sudo systemctl restart tor