
echo "All variables passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script name: $0"
echo "Present which directory you are in: $PWD"
echo "Who is running this script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "Background process id: $!"
echo "Exit status of previous command: $?"
echo "PID of the script: $$"
sleep 100 &
echo "Background process id: $!"
echo "Exit status of previous command: $?"