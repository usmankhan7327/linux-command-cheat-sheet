# **PENETRATION TESTING CHEAT SHEET 🕵️‍♂️**

A quick, practical, and streamlined cheat sheet for common penetration testing tasks. Perfect for fast reference during recon, enumeration, and host discovery.

---

## 🔍 Recon and Enumeration
Explore tools and methods for reconnaissance and enumeration to gather valuable information about your target.

- [🌐 NMAP Commands](#-nmap-commands)
- [📂 SMB Enumeration](#-smb-enumeration)
- [🌐 Other Host Discovery Methods](#-other-host-discovery-methods)

## :computer: Python Local Web Server

Set up a Python local web server for various purposes, including hosting payloads and files.

- [Python Local Web Server](#-python-local-web-server)

---

### 🌐 **NMAP COMMANDS**
Nmap is a powerful network-scanning tool used for discovery, auditing, and service identification.

| Command | Description |
|---------|-------------|
| `nmap -v -sS -A -T4 target` | Nmap verbose scan, runs syn stealth, T4 timing, OS and service version info, traceroute and scripts against services. |
| `ping sweep sudo nmap -pn target` | Does a ping sweep over the target's network to see all the available IPs. |
| `nmap -v -sS -p–A -T4 target` | As above but scans all TCP ports (takes a lot longer). |
| `nmap -v -sU -sS -p- -A -T4 target` | As above but scans all TCP ports and UDP scan (takes even longer). |
| `nmap -v -p 445 –script=smb-check-vulns --script-args=unsafe=1 192.168.1.X` | Nmap script to scan for vulnerable SMB servers. |
| `nmap localhost` | Displays all the ports that are currently in use. |
| `ls /usr/share/nmap/scripts/* \| grep ftp` | Search nmap scripts for keywords. |

---

## 📂 **SMB ENUMERATION**

| Command | Description |
|---------|-------------|
| `nbtscan 192.168.1.0/24` | Discover Windows / Samba servers on subnet, finds Windows MAC addresses, netbios name and discover client workgroup / domain. |
| `enum4linux -a target-ip` | Do Everything, runs all options (find windows client domain / workgroup) apart from dictionary based share name guessing. |
| `smbclient -L target-ip` | Lists all SMB shares available on the target machine. |
| `smbget -R smb://target-ip/share` | Recursively downloads files from an SMB share. |
| `rpcclient -U "" target-ip` | Connects to an SMB server using an empty username and lists available commands. |
| `showmount -e target-ip` | Shows the available shares on the target machine, useful for NFS. |
| `smbmap -H target-ip` | Shows share permissions of the target. |
| `smbstatus` | Lists current Samba connections. Useful when run on the target machine. |

---

## 🌐 **OTHER HOST DISCOVERY METHODS**

| Command | Description |
|---------|-------------|
| `netdiscover -r 192.168.1.0/24` | Discovers IP, MAC Address and MAC vendor on the subnet from ARP. |
| `arp-scan --interface=eth0 192.168.1.0/24` | ARP scan to discover hosts on the local network. |
| `fping -g 192.168.1.0/24` | Sends ICMP echo requests to multiple hosts to check if they are alive. |
| `masscan -p1-65535,U:1-65535 192.168.1.0/24 --rate=1000` | Scans all ports at a high rate, useful for initial discovery. |

---

## 🐍 Python Local Web Server

Python local web server command, handy for serving up shells and exploits on an attacking machine.

| Command | Description |
|---------|-------------|
| `python -m SimpleHTTPServer 80` | Run a basic HTTP server, great for serving up shells etc. |
| `python3 -m http.server 80` | Run a basic HTTP server using Python 3. |
| `python -m SimpleHTTPServer 80 --bind 192.168.1.2` | Bind the server to a specific IP address. |

---
