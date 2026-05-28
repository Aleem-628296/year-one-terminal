==========================================
ALEEM'S TERMINAL CHEAT SHEET - WEEK 1
==========================================

NAVIGATION
----------
pwd                     Print Working Directory - show where you are right now
cd ~                    Change Directory to Home (~ = /home/aleem)
cd ..                   Go up one level (back to parent folder)
cd folder               Enter a folder
mkdir folder            Make Directory - create a new folder
mkdir -p a/b/c          Create nested folders all at once (-p = create parents too)

FILE OPERATIONS
---------------
cat file                Show contents of a file on screen
cat -n file             Show contents with line numbers
head -n 5 file          Show first 5 lines only
tail -n 5 file          Show last 5 lines only
cp file backup          Copy - duplicate a file (original stays safe)
mv file newname         Move - rename a file, or move it to another folder
rm file                 Remove - delete a file PERMANENTLY (no recycle bin)
echo "text" > file      Write text to a file (overwrites everything)
echo "text" >> file     Append text to a file (adds to end, keeps existing)
nano file               Open Nano text editor to write/edit a file
touch file              Create an empty file, or update its timestamp

PERMISSIONS
-----------
ls -la                  List all files with details (permissions, owner, size, date)
                        r = read (4)  w = write (2)  x = execute (1)
                        Columns: Owner Group Others
                        Example: -rwxr-xr-x = Owner can do all, others can read+run
chmod +x script.sh      Make a file executable (runable as a program)
chmod 755 file          Owner: rwx (7). Group: r-x (5). Others: r-x (5)
chmod 600 file          Only owner can read+write. Nobody else can touch it.
chmod 644 file          Owner: rw (6). Group: r (4). Others: r (4)
./script.sh             Run an executable script in the current folder

PERMISSION NUMBERS
------------------
0 = --- (nothing)
1 = --x (execute only)
2 = -w- (write only)
3 = -wx (write + execute)
4 = r-- (read only)
5 = r-x (read + execute)
6 = rw- (read + write)
7 = rwx (read + write + execute)

PIPES & FILTERS
---------------
curl -L URL > file      Download from internet (-L = follow redirects, > = save)
grep "pattern" file     Search for lines containing a word
grep -i "pat" file      Case-insensitive search (PAT, Pat, pat all match)
grep -o "pat" file      Show only the matching word, not the whole line
grep -v "pat" file      Show lines that do NOT match (invert search)
wc -w file              Count words in a file
wc -l file              Count lines in a file
wc -c file              Count characters/bytes in a file
sort                    Sort lines alphabetically
sort -n                 Sort numerically (1, 2, 3... not 1, 10, 2)
sort -r                 Sort in reverse order
uniq                    Remove adjacent duplicate lines
uniq -c                 Count how many times each unique line appears
tr -cs 'A-Za-z' '\n'    Transform text: split into one word per line
|                       Pipe - feed output of left command into right command
>                       Send output to a file (overwrite)
>>                      Append output to a file (add to end)
<                       Feed a file as input to a command

VARIABLES & SCRIPTS
-------------------
#!/bin/bash             Shebang - tells system to run this with Bash
VAR=value               Store something in a variable (NO spaces around =)
$VAR                    Retrieve what's stored in a variable
$1, $2, $3              First, second, third argument passed to a script
$(command)              Command substitution - run a command and capture its output
$((5+3))                Arithmetic expansion - do math (result: 8)
while [ $n -ge 0 ]      Loop while n is greater than or equal to 0
do ... done             Start and end a loop body
sleep 5                 Wait 5 seconds before next command

PATH & CUSTOM COMMANDS
----------------------
echo $PATH              Show your PATH (where the shell looks for commands)
which command           Show the full path to a command (e.g., which ls)
~/bin/                  Your personal command folder (add scripts here)
export PATH="$HOME/bin:$PATH"   Add ~/bin to your PATH (put this in .zshrc)
source ~/.zshrc         Reload your shell config without restarting

PROCESSES
---------
ps aux                  List ALL running processes with details
ps aux | grep name      Find processes by name
top                     Live-updating process viewer (q to quit)
htop                    Prettier version of top (install with sudo apt install htop)
command &               Run a command in the background
jobs                    List your background jobs
fg                      Bring a background job to the foreground
fg %1                   Bring job number 1 to the foreground
Ctrl + Z                Pause (suspend) the current foreground job
bg                      Resume a paused job in the background
kill PID                Kill a process by its Process ID number
kill %1                 Kill job number 1
kill -9 PID             Force kill (if normal kill doesn't work)
pkill name              Kill ALL processes matching a name
killall name            Kill ALL processes matching a name

SHORTCUTS
---------
Ctrl + C                Cancel/Kill whatever is running in foreground
Ctrl + L                Clear the screen (same as typing 'clear')
Ctrl + O                Save file in Nano
Ctrl + X                Exit Nano
Ctrl + Z                Pause current foreground process
Up Arrow                 Show previous command from history
Down Arrow               Show next command from history
Ctrl + R                Search command history (type a word, it finds matches)
Tab                     Autocomplete a filename, folder, or command
Shift + Page Up          Scroll up in terminal
Shift + Page Down        Scroll down in terminal

SYSTEM INFO
-----------
uptime                  How long your system has been running
free -h                 Show available memory (in human-readable format)
df -h                   Show disk space usage
whoami                  Show your username
date                    Show current date and time
cal                     Show a calendar

==========================================
Last updated: May 2026
Week 1 complete. Week 2: Git & Version Control.
==========================================
