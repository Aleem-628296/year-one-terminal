# 🐧 Aleem's Terminal Cheat Sheet — Week 1

*Last updated: May 2026*

---

## 📂 NAVIGATION

| Command | What It Does |
|---------|--------------|
| `pwd` | **P**rint **W**orking **D**irectory — show where you are right now |
| `cd ~` | **C**hange **D**irectory to Home (`~` = `/home/aleem`) |
| `cd ..` | Go up one level (back to parent folder) |
| `cd folder` | Enter a folder |
| `mkdir folder` | **M**ake **Dir**ectory — create a new folder |
| `mkdir -p a/b/c` | Create nested folders all at once (`-p` = create parents) |

---

## 📄 FILE OPERATIONS

| Command | What It Does |
|---------|--------------|
| `cat file` | Show contents of a file on screen |
| `cat -n file` | Show contents with line numbers |
| `head -n 5 file` | Show first 5 lines only |
| `tail -n 5 file` | Show last 5 lines only |
| `cp file backup` | **C**o**p**y — duplicate a file (original stays safe) |
| `mv file newname` | **M**o**v**e — rename a file, or move it to another folder |
| `rm file` | **R**e**m**ove — delete a file PERMANENTLY (no recycle bin) |
| `echo "text" > file` | Write text to a file (**overwrites** everything) |
| `echo "text" >> file` | **Append** text to a file (adds to end, keeps existing content) |
| `nano file` | Open Nano text editor to write or edit a file |
| `touch file` | Create an empty file, or update its timestamp |

---

## 🔐 PERMISSIONS

| Command | What It Does |
|---------|--------------|
| `ls -la` | List all files with details (permissions, owner, size, date) |
| `chmod +x script.sh` | Make a file executable (runnable as a program) |
| `chmod 755 file` | Owner: rwx. Group: r-x. Others: r-x |
| `chmod 600 file` | Only owner can read+write. Nobody else can touch it |
| `./script.sh` | Run an executable script in the current folder |

### Permission Numbers

| Number | Permission | Meaning |
|--------|------------|---------|
| 0 | `---` | Nothing |
| 1 | `--x` | Execute only |
| 2 | `-w-` | Write only |
| 3 | `-wx` | Write + Execute |
| 4 | `r--` | Read only |
| 5 | `r-x` | Read + Execute |
| 6 | `rw-` | Read + Write |
| 7 | `rwx` | Read + Write + Execute |

### Reading `ls -la` Output

| Column | Meaning |
|--------|---------|
| `-rwxr-xr-x` | Type + Permissions (Owner, Group, Others) |
| `1` | Number of links |
| `aleem` | Owner |
| `aleem` | Group |
| `4096` | Size in bytes |
| `May 23 15:08` | Last modified date |
| `analysis.sh` | Filename |

---

## ⛓️ PIPES & FILTERS

| Command | What It Does |
|---------|--------------|
| `curl -L URL > file` | Download from internet (`-L` = follow redirects) |
| `grep "pattern" file` | Search for lines containing a word |
| `grep -i "pat" file` | Case-**i**nsensitive search |
| `grep -o "pat" file` | Show **o**nly the matching word, not the whole line |
| `grep -v "pat" file` | In**v**ert — show lines that do NOT match |
| `wc -w file` | Count **w**ords |
| `wc -l file` | Count **l**ines |
| `wc -c file` | Count **c**haracters/bytes |
| `sort` | Sort lines alphabetically |
| `sort -n` | Sort **n**umerically |
| `sort -r` | Sort in **r**everse |
| `uniq` | Remove adjacent duplicate lines |
| `uniq -c` | **C**ount how many times each unique line appears |
| `tr -cs 'A-Za-z' '\n'` | Transform text: split into one word per line |
| `\|` | **Pipe** — feed output of left command into right command |
| `>` | Send output to a file (**overwrite**) |
| `>>` | **Append** output to a file (add to end) |
| `<` | Feed a file as **input** to a command |

---

## 💻 VARIABLES & SCRIPTS

| Syntax | What It Does |
|--------|--------------|
| `#!/bin/bash` | **Shebang** — tells system to run this with Bash |
| `VAR=value` | Store something in a variable (NO spaces around `=`) |
| `$VAR` | Retrieve what's stored in a variable |
| `$1`, `$2`, `$3` | First, second, third argument passed to a script |
| `$(command)` | **Command Substitution** — run a command and capture its output |
| `$((5+3))` | **Arithmetic** — do math (result: 8) |
| `while [ $n -ge 0 ]` | Loop while `n` is greater than or equal to 0 |
| `do ... done` | Start and end a loop body |
| `sleep 5` | Wait 5 seconds before next command |

---

## 🛤️ PATH & CUSTOM COMMANDS

| Command | What It Does |
|---------|--------------|
| `echo $PATH` | Show your PATH (where the shell looks for commands) |
| `which command` | Show the full path to a command |
| `~/bin/` | Your personal command folder (add scripts here) |
| `export PATH="$HOME/bin:$PATH"` | Add `~/bin` to your PATH (put this in `.zshrc`) |
| `source ~/.zshrc` | Reload your shell config without restarting |

---

## ⚙️ PROCESSES

| Command | What It Does |
|---------|--------------|
| `ps aux` | List ALL running processes with details |
| `ps aux \| grep name` | Find processes by name |
| `top` | Live-updating process viewer (`q` to quit) |
| `htop` | Prettier version of `top` |
| `command &` | Run a command in the **background** |
| `jobs` | List your background jobs |
| `fg` | Bring a background job to the foreground |
| `fg %1` | Bring job number 1 to the foreground |
| `Ctrl + Z` | **Pause** (suspend) the current foreground job |
| `bg` | Resume a paused job in the background |
| `kill PID` | Kill a process by its **P**rocess **ID** number |
| `kill %1` | Kill job number 1 |
| `kill -9 PID` | **Force kill** (if normal kill doesn't work) |
| `pkill name` | Kill ALL processes matching a name |

---

## ⌨️ SHORTCUTS

| Keys | What It Does |
|------|--------------|
| `Ctrl + C` | Cancel/Kill whatever is running in foreground |
| `Ctrl + L` | Clear the screen (same as typing `clear`) |
| `Ctrl + O` | Save file in Nano |
| `Ctrl + X` | Exit Nano |
| `Ctrl + Z` | Pause current foreground process |
| `Up Arrow` | Show previous command from history |
| `Down Arrow` | Show next command from history |
| `Ctrl + R` | Search command history |
| `Tab` | Autocomplete a filename, folder, or command |
| `Shift + Page Up` | Scroll up in terminal |
| `Shift + Page Down` | Scroll down in terminal |

---

## 🖥️ SYSTEM INFO

| Command | What It Does |
|-----------|--------------|
| `uptime` | How long your system has been running |
| `free -h` | Show available memory (human-readable) |
| `df -h` | Show disk space usage |
| `whoami` | Show your username |
| `date` | Show current date and time |

---

## 🕋 GIT COMMANDS (Week 2)

| Command | What It Does |
|---------|--------------|
| `git init` | Create a new Git repository |
| `git status` | See what's changed, staged, or untracked |
| `git add file` | Stage a file for commit |
| `git add .` | Stage everything in current folder |
| `git commit -m "msg"` | Save a snapshot with a message |
| `git log` | View full commit history |
| `git log --oneline` | Compact history view |
| `git diff` | See exact changes before committing |
| `git branch` | List all branches |
| `git branch name` | Create a new branch |
| `git checkout name` | Switch to a branch |
| `git checkout -b name` | Create AND switch to a new branch |
| `git merge name` | Merge a branch into current branch |
| `git branch -d name` | Delete a merged branch |
| `git checkout HASH` | Time-travel to a specific commit |
| `git remote add origin URL` | Connect local repo to GitHub |
| `git push` | Upload commits to GitHub |
| `git push -u origin main` | First push — sets upstream |
| `git clone URL` | Download a repo from GitHub |

---

> Built from scratch. Every command typed by hand.  
> Week 1 complete. Week 2 in progress.  
> — Aleem, May 2026
