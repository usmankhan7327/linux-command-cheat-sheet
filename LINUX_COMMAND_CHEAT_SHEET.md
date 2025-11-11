# ⚡ Linux Command Cheat Sheet

A concise, professional Linux command reference for developers, sysadmins, and learners.  
✨ *Updated regularly – feel free to fork and star!*

---

## 📌 Table of Contents
- [Basic Commands](#basic-commands)
- [Networking](#networking)
- [User & Group Management](#user--group-management)
- [Permissions & Ownership](#permissions--ownership)
- [File Management](#file-management)
- [System Maintenance](#system-maintenance)
- [System Monitoring](#system-monitoring)
- [Package Management](#package-management)
- [Text & File Processing](#text--file-processing)
- [Process Management](#process-management)
- [Disk & Partition](#disk--partition)
- [Security & Access](#security--access)
- [Bonus: Quick Web Server](#bonus-quick-web-server)

---

## Basic Commands

| 🧩 Command | 💡 Description |
|------------|----------------|
| `man <tool>` | Opens manual pages. → `man uname` |
| `<tool> -h` | Shows help page. → `uname -h` |
| `apropos <keyword>` | Searches man page descriptions. |
| `cat` | Displays or concatenates files. |
| `whoami` | Shows current logged-in username. |
| `id` | Displays user identity and group info. |
| `hostname` | Shows system hostname. |
| `uname -a` | Prints detailed OS and kernel info. |
| `pwd` | Prints current working directory. |
| `ls -la` | Lists files with details (hidden too). |
| `cd <dir>` | Change directory. → `cd /home/usman` |
| `clear` | Clears the terminal screen. |

---

## Networking

| 🌍 Command | 💡 Description |
|-------------|----------------|
| `ifconfig` | Displays network configuration. |
| `ip addr show` | Modern replacement for `ifconfig`. |
| `netstat -tuln` | Shows active network connections. |
| `ss -tuln` | Faster alternative to netstat. |
| `ping google.com` | Tests network connectivity. |
| `traceroute google.com` | Displays route packets take. |
| `nslookup openai.com` | DNS lookup utility. |
| `dig openai.com` | Advanced DNS query tool. |
| `scp file user@server:/path` | Securely copy file over SSH. |
| `rsync -av src/ dest/` | Sync files/directories efficiently. |
| `ssh user@ip` | Connect to a remote system. |
| `ufw allow 22` | Allow SSH through firewall. |
| `iptables -L` | Lists firewall rules. |

---

## User & Group Management

| 👥 Command | 💡 Description |
|-------------|----------------|
| `sudo` | Run command as superuser. |
| `su root` | Switch user (to root). |
| `useradd usman` | Add a new user. |
| `userdel usman` | Delete user account. |
| `usermod -aG sudo usman` | Add user to sudo group. |
| `passwd usman` | Change user password. |
| `addgroup devs` | Create a new group. |
| `delgroup devs` | Delete a group. |
| `groups usman` | List user’s groups. |
| `gpasswd -d usman devs` | Remove user from a group. |

---

## Permissions & Ownership

| 🛡️ Command | 💡 Description |
|-------------|----------------|
| `chmod 755 file` | Change permissions. |
| `chown usman:usman file` | Change ownership. |
| `umask 022` | Set default permission mask. |

**Permission Mapping:**

| Binary | Octal | Permission |
|---------|--------|------------|
| `111` | `7` | `rwx` |
| `101` | `5` | `r-x` |
| `100` | `4` | `r--` |

🧮 Example → `rwxr-xr--` = **754**

---

## File Management

| 📂 Command | 💡 Description |
|-------------|----------------|
| `touch file.txt` | Create an empty file. |
| `mkdir folder` | Create a new directory. |
| `tree /home` | Recursive directory listing. |
| `mv old new` | Move or rename files. |
| `cp file /tmp/` | Copy files or directories. |
| `find / -name "*.conf"` | Search for files. |
| `updatedb && locate nginx.conf` | Locate files quickly. |
| `tar -czvf backup.tar.gz folder/` | Create a tar archive. |
| `zip -r files.zip folder/` | Zip files. |
| `unzip files.zip` | Extract zip files. |
| `nano script.py` | Edit file in terminal. |

---

## System Maintenance

| 🧰 Command | 💡 Description |
|-------------|----------------|
| `systemctl restart nginx` | Restart a system service. |
| `journalctl -u nginx` | View service logs. |
| `reboot` | Restart system. |
| `shutdown -h now` | Power off immediately. |
| `alias ll='ls -la'` | Create command shortcut. |
| `unalias ll` | Remove alias. |
| `history` | Show command history. |

---

## System Monitoring

| 🖥️ Command | 💡 Description |
|-------------|----------------|
| `top` | View running processes (real-time). |
| `htop` | Interactive process viewer. |
| `free -h` | Show memory usage. |
| `df -h` | Show disk usage. |
| `du -sh /var/log` | Show directory size. |
| `uptime` | Show uptime & load average. |
| `lsblk` | List block devices. |
| `lsof -i` | List open network files. |
| `lspci` | List PCI devices. |
| `dmesg` | Kernel and hardware messages. |

---

## Package Management

| 📦 Command | 💡 Description |
|-------------|----------------|
| `apt install curl` | Install packages (Debian). |
| `dpkg -i package.deb` | Install local package. |
| `snap install vlc` | Install snap app. |
| `aptitude update` | Update packages via aptitude. |
| `pip install requests` | Python package manager. |
| `gem install rails` | Ruby package manager. |
| `apt-cache search nginx` | Search for packages. |
| `apt list --installed` | List installed packages. |

---

## Text & File Processing

| 🧾 Command | 💡 Description |
|-------------|----------------|
| `head file.txt` | Show first 10 lines. |
| `tail -f log.txt` | Follow log output. |
| `sort names.txt` | Sort file contents. |
| `grep "error" logfile.log` | Search for patterns. |
| `cut -d':' -f1 /etc/passwd` | Extract columns. |
| `tr 'a-z' 'A-Z' < file.txt` | Translate characters. |
| `awk '{print $1}' file.txt` | Process text by field. |
| `sed 's/old/new/g' file.txt` | Replace text patterns. |
| `wc -l file.txt` | Count lines/words/chars. |
| `uniq` | Remove duplicate lines. |
| `diff file1 file2` | Compare files. |
| `cmp a.txt b.txt` | Compare byte-by-byte. |
| `xargs rm` | Run commands from input. |
| `tee file.log` | Write to file & stdout. |
| `column -t file.txt` | Format text into columns. |

---

## Process Management

| ⚡ Command | 💡 Description |
|-------------|----------------|
| `ps aux` | Show active processes. |
| `kill 1234` | Kill process by PID. |
| `bg %1` | Resume background process. |
| `fg %1` | Bring job to foreground. |
| `jobs` | List background jobs. |

**Kill Signals**

| Signal | Name | Description |
|---------|------|--------------|
| `1` | `SIGHUP` | Terminal closed |
| `2` | `SIGINT` | Ctrl + C |
| `3` | `SIGQUIT` | Quit process |
| `9` | `SIGKILL` | Force kill |
| `15` | `SIGTERM` | Graceful termination |
| `19` | `SIGSTOP` | Stop process |
| `20` | `SIGTSTP` | Ctrl + Z suspend |

---

## Disk & Partition

| 💿 Command | 💡 Description |
|-------------|----------------|
| `fdisk -l` | List all partitions. |
| `mount /dev/sdb1 /mnt` | Mount device. |
| `umount /mnt` | Unmount device. |

---

## Security & Access

| 🧱 Command | 💡 Description |
|-------------|----------------|
| `chsh -s /bin/bash` | Change user shell. |
| `visudo` | Edit sudoers safely. |
| `last` | Show login history. |

---

## Bonus: Quick Web Server

Run a local HTTP server instantly from any directory.

### Python
```bash
python3 -m http.server 8080
````

Serves the current folder on **[http://localhost:8080](http://localhost:8080)**

### PHP

```bash
php -S 127.0.0.1:8085
```

Useful if you're testing `.php` files.
Visit: **[http://127.0.0.1:8085](http://127.0.0.1:8085)**

### Node.js (via npx)

```bash
npx http-server -p 8086
```

Great for quick static site previews.
Opens at: **[http://localhost:8086](http://localhost:8086)**

### Apache2

```bash
sudo systemctl start apache2
```

Starts the Apache web server (default port **80**).
Place your files in **`/var/www/html/`** and visit: **[http://localhost](http://localhost)**

---

| Command                        | Port | Best Use                  | Note                                  |
| ------------------------------ | ---- | ------------------------- | ------------------------------------- |
| `python3 -m http.server 8080`  | 8080 | HTML/CSS/JS quick testing | Built-in, no setup needed             |
| `php -S 127.0.0.1:8085`        | 8085 | Local PHP execution       | Simple, no Apache modules required    |
| `npx http-server -p 8086`      | 8086 | Node development setups   | Requires Node/npm installed           |
| `sudo systemctl start apache2` | 80   | Full-featured web hosting | Requires Apache installed and running |

### Optional: Serve a Specific Folder

```bash
python3 -m http.server 8080 --directory ./public
```

```bash
php -S 127.0.0.1:8085 -t public
```

### ⚠️ Security Reminder

These are **local development servers**.
Do **not** expose them directly to the public internet.



