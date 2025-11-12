# 🧠 Linux Terminal Shortcuts Cheat Sheet

> Works in Bash, Zsh, and most Linux terminals (like GNOME Terminal, Konsole, xterm, etc.)

---

## 🧭 1. Cursor Navigation

| Shortcut      | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| **Ctrl + A**  | Move cursor to the **start** of the line. (“A” for *ahead*). |
| **Ctrl + E**  | Move cursor to the **end** of the line. (“E” for *end*).     |
| **Alt + B**   | Move cursor **back one word**.                               |
| **Alt + F**   | Move cursor **forward one word**.                            |
| **Ctrl + F**  | Move **forward one character**.                              |
| **Ctrl + B**  | Move **backward one character**.                             |
| **Ctrl + XX** | Toggle between start of the line and current position.       |
| **Ctrl + L**  | Clear the screen (same as `clear` command).                  |

---

## ✂️ 2. Editing Commands

| Shortcut     | Description                                                               |
| ------------ | ------------------------------------------------------------------------- |
| **Ctrl + U** | Cut/delete everything **before the cursor** (stores in buffer).           |
| **Ctrl + K** | Cut/delete everything **after the cursor**.                               |
| **Ctrl + W** | Cut/delete the **word before the cursor**.                                |
| **Alt + D**  | Cut/delete the **word after the cursor**.                                 |
| **Ctrl + Y** | **Paste** (yank) the last cut text.                                       |
| **Alt + Y**  | Paste the second most recent cut (cycles through cut buffer).             |
| **Ctrl + D** | Delete the **character under the cursor** OR exit shell if line is empty. |
| **Ctrl + H** | Delete the **character before** the cursor (like backspace).              |
| **Ctrl + T** | Swap the **two characters** before the cursor (fix typos fast).           |

---

## 🪄 3. Command & History Shortcuts

| Shortcut     | Description                                                                          |
| ------------ | ------------------------------------------------------------------------------------ |
| **Ctrl + R** | **Search history** backward (`reverse-i-search`). Type part of a command to find it. |
| **Ctrl + S** | **Search forward** in history (may need to disable terminal flow control first).     |
| **Ctrl + G** | Cancel the current search.                                                           |
| **Ctrl + P** | Previous command (like ↑ key).                                                       |
| **Ctrl + N** | Next command (like ↓ key).                                                           |
| **Alt + .**  | Insert the **last argument** of the previous command.                                |
| **Ctrl + O** | Execute the command found via `Ctrl + R`.                                            |
| **Ctrl + J** | Same as pressing **Enter**.                                                          |
| **Ctrl + _** | Undo last change in command line.                                                    |

---

## ⚙️ 4. Process & Job Control

| Shortcut     | Description                                                |
| ------------ | ---------------------------------------------------------- |
| **Ctrl + C** | **Kill** the current running process.                      |
| **Ctrl + Z** | **Suspend** current process (puts it in background).       |
| **fg**       | Bring suspended job **to foreground**.                     |
| **bg**       | Continue a suspended job **in background**.                |
| **jobs**     | List background/suspended jobs.                            |
| **Ctrl + D** | Exit the terminal if prompt is empty (End-of-File signal). |

---

## 🧰 5. Miscellaneous

| Shortcut                 | Description                                                         |
| ------------------------ | ------------------------------------------------------------------- |
| **Tab**                  | Auto-complete command or file path. Double `Tab` shows all matches. |
| **Ctrl + S**             | Pause output to screen (freeze terminal).                           |
| **Ctrl + Q**             | Resume output (unfreeze terminal).                                  |
| **Ctrl + L**             | Clear terminal screen.                                              |
| **Ctrl + Shift + T**     | Open new terminal tab (in many terminal apps).                      |
| **Ctrl + Shift + N**     | Open a new terminal window.                                         |
| **Ctrl + Shift + C / V** | Copy / paste text (depends on terminal emulator).                   |

---

## 🧩 Example Scenarios

### 💡 Example 1 – Fixing a command

```bash
cat /etc/paswd
```

Oops, typo!
Press:
`Ctrl + A` → Move to start
`Ctrl + F` → Move forward to typo
Fix it → `passwd`
Hit **Enter**

---

### 💡 Example 2 – Deleting efficiently

Command:

```bash
sudo apt install metasploit-framework
```

If you want to delete just `metasploit-framework`:
→ Press `Alt + D`

If you want to delete the whole line:
→ Press `Ctrl + U`

Then paste it back (if you change your mind):
→ Press `Ctrl + Y`
