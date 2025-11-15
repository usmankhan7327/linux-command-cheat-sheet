## ⚡ Linux Command Cheat Sheet 
For Developers, Sysadmins, Hackers, and CTF Players

![Linux Banner](https://img.shields.io/badge/Linux-CheatSheet-blue?style=for-the-badge&logo=linux)

A concise, practical Linux command reference for developers, sysadmins, and learners.  
✨ *Updated regularly – fork, star, and contribute!*

---

## 📌 Table of Contents
- [Introduction](#introduction)
- [Full Cheat Sheet](#full-cheat-sheet)
- [Contributing](#contributing)
- [License](#license)

---

## Introduction
This repository contains a **comprehensive Linux Command Cheat Sheet**, designed for:  
- Beginners learning Linux  
- Developers & sysadmins  
- Hackers & security enthusiasts wanting a quick reference  

The cheat sheet covers **Basic Commands, Networking, File Management, Permissions, System Monitoring**, and more.  

**Why use this repo?**  
- Clean, readable tables  
- Clickable Table of Contents  
- Beginner-friendly and professional layout  

---

## Full Cheat Sheet
You can access the full cheat sheet [here](./LINUX_COMMAND_CHEAT_SHEET.md) with **clickable sections** for easy navigation:  
- [Basic Commands](./LINUX_COMMAND_CHEAT_SHEET.md#basic-commands)  
- [Networking](./LINUX_COMMAND_CHEAT_SHEET.md#networking)  
- [User & Group Management](./LINUX_COMMAND_CHEAT_SHEET.md#user--group-management)  
- [Permissions & Ownership](./LINUX_COMMAND_CHEAT_SHEET.md#permissions--ownership)  
- [File Management](./LINUX_COMMAND_CHEAT_SHEET.md#file-management)  
- [System Maintenance](./LINUX_COMMAND_CHEAT_SHEET.md#system-maintenance)  
- [System Monitoring](./LINUX_COMMAND_CHEAT_SHEET.md#system-monitoring)  
- [Package Management](./LINUX_COMMAND_CHEAT_SHEET.md#package-management)  
- [Text & File Processing](./LINUX_COMMAND_CHEAT_SHEET.md#text--file-processing)  
- [Process Management](./LINUX_COMMAND_CHEAT_SHEET.md#process-management)  
- [Disk & Partition](./LINUX_COMMAND_CHEAT_SHEET.md#disk--partition)  
- [Security & Access](./LINUX_COMMAND_CHEAT_SHEET.md#security--access)  
- [Bonus: Quick Web Server](./LINUX_COMMAND_CHEAT_SHEET.md#bonus-quick-web-server)  

> Click any link to jump directly to the section in `LINUX_COMMAND_CHEAT_SHEET.md`.

- [Linux Terminal Shortcuts Cheat Sheet](./LINUX_TERMINAL_SHORTCUTS_CHEAT_SHEET.md) 🧠 *(New!)*

> 📘 **New Addition:** Check out the [Linux Terminal Shortcuts Cheat Sheet](./LINUX_TERMINAL_SHORTCUTS_CHEAT_SHEET.md) for a quick list of essential **keyboard shortcuts** that boost your terminal productivity.

- [Penetration Testing Cheat Sheet](./PENETRATION_TESTING_CHEAT_SHEET.md) 🕵️‍♂️ *(New!)*

> 📘 **New Addition:** Explore the [Penetration Testing Cheat Sheet](./PENETRATION_TESTING_CHEAT_SHEET.md) for a concise collection of essential **recon, enumeration, and host-discovery commands** to speed up your pentesting workflow.

- [Command Reference](./COMMAND_REFERENCE.md) 💻 *(New!)*

> 📘 **New Addition:** Explore the [Command Reference](./COMMAND_REFERENCE.md) for a curated collection of essential **Linux, networking, and security commands** — including `dig`, `iptables`, and more — to simplify troubleshooting, system administration, and pentesting tasks.

---

## Usage
### Viewing
- Open `LINUX_COMMAND_CHEAT_SHEET.md` in any Markdown viewer (VS Code, GitHub, Obsidian).  
- Use the Table of Contents for quick navigation.

### Optional: Generate PDF
If you want an offline PDF version:  
1. Make sure [Pandoc](https://pandoc.org/installing.html) and TeX Live are installed.  
2. (Optional) Use the included script:
```bash
chmod +x scripts/export_pdf.sh
./scripts/export_pdf.sh
```
3. This generates `cheatsheet.pdf` from `LINUX_COMMAND_CHEAT_SHEET.md`.  
   You can also directly download `cheatsheet.pdf` from this repo.

**Note:**  
If you encounter an error like `! LaTeX Error: Unicode character …` while generating the PDF, use:
`pandoc LINUX_COMMAND_CHEAT_SHEET.md -o cheatsheet.pdf --pdf-engine=xelatex`


---

## Contributing
We welcome contributions!  
1. Fork this repo  
2. Create a branch (`git checkout -b feature-name`)  
3. Make your changes  
4. Commit (`git commit -m "Add new commands"`)  
5. Push (`git push origin feature-name`)  
6. Open a Pull Request  

---

## License
This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.

---

**Made with ❤️ for Linux learners and professionals**
