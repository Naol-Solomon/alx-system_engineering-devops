
pwd- currently working directory
ls-list files and directories
cd "$(getent passwd "$(id -u)" | cut -d: -f6)"-to change directory to home directory
ls -l = to list directory in a long format
