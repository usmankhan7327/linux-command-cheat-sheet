# **PENETRATION TESTING CHEAT SHEET 🕵️‍♂️**

A quick, practical, and streamlined cheat sheet for common penetration testing tasks. Perfect for fast reference during recon, enumeration, and host discovery.

---

## 🔍 **RECON & ENUMERATION**

### 🌐 **NMAP COMMANDS**
Nmap is a powerful network-scanning tool used for discovery, auditing, and service identification.

| Command | Description |
|--------|-------------|
| `nmap -v -sS -A -T4 target` | Verbose SYN stealth scan with OS/service detection, scripts, and traceroute. |
| `sudo nmap -sn target/24` | Ping sweep to detect live hosts. |
| `nmap -v -sS -p- -A -T4 target` | Full TCP port scan with OS/service detection. |
| `nmap -v -sU -sS -p- -A -T4 target` | Full TCP + UDP scan (slow). |
| `nmap -v -p 445 --script=smb-check-vulns --script-args=unsafe=1 target` | SMB vulnerability scan. |
| `nmap localhost` | Show all active ports on local machine. |
| `ls /usr/share/nmap/scripts/* | grep ftp` | Search Nmap scripts by keyword. |

---

## 📂 **SMB ENUMERATION**

| Command | Description |
|--------|-------------|
| `nbtscan 192.168.1.0/24` | Discover NetBIOS names, MAC addresses, and Windows/Samba hosts. |
| `enum4linux -a target-ip` | Full SMB/NetBIOS enumeration. |
| `smbclient -L target-ip` | List SMB shares on target. |
| `smbget -R smb://target-ip/share` | Recursively download SMB share contents. |
| `rpcclient -U "" target-ip` | Anonymous RPC enumeration. |
| `showmount -e target-ip` | List NFS exports. |
| `smbmap -H target-ip` | Show SMB share permissions. |
| `smbstatus` | View active Samba sessions (run on SMB server). |

---

## 🌐 **OTHER HOST DISCOVERY METHODS**

| Command | Description |
|--------|-------------|
| `netdiscover -r 192.168.1.0/24` | ARP-based local network host discovery. |
| `arp-scan --interface=eth0 192.168.1.0/24` | Fast ARP scan for live hosts. |
| `fping -g 192.168.1.0/24` | ICMP sweep across network range. |
| `masscan -p1-65535,U:1-65535 192.168.1.0/24 --rate=1000` | Ultra-fast full-port scan across subnet. |

---
