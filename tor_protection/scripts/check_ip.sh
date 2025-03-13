#!/bin/bash
# Check current IP address
curl -s https://check.torproject.org/api/ip | jq -r '.IP'