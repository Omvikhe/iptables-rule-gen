# iptables-rule-gen

# Iptables Rule Automation Script

This script automates the process of adding iptables rules on a Linux machine. It checks if the iptables service is running, and if it is, it prompts the user for the necessary details to create a new rule. The script then adds the rule to the `FORWARD` chain based on the provided input.

## Features
- Checks if the `iptables` service is running.
- Prompts the user to input:
  - Source IP or network
  - Destination IP or website
  - Destination port
  - Protocol (e.g., TCP, UDP)
  - Action/Target (e.g., ACCEPT, DROP)
- Adds the rule to the `FORWARD` chain of iptables.

## Requirements
- A Linux system with `iptables` installed.
- Sudo privileges to modify iptables rules.
- `systemctl` must be available to check the status of the iptables service.

## Usage

1. **Clone the repository:**
   Clone this repository to your local machine:
   ```bash
   git clone https://github.com/Omvikhe/iptables-rule-automation.git
   cd iptables-rule-automation
