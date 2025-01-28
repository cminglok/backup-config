alias add="vim ~/.bash_aliases"
alias ssh="TERM=xterm-256color ssh"
alias test001="ssh test001"
alias add="vim /home/cminglok/.bash_aliases"
alias pip3="/cygdrive/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/Scripts/pip3.exe"
alias wgit="/cygdrive/c/Program\ Files/Git/cmd/git.exe"
alias printdirs='ls | grep / | awk '\''{printf "\"./%s\",\n", $1}'\'
alias komoedit="vim /cygdrive/c/Users/CMINGLOK/komorebi.json"
alias yasbedit="vim /cygdrive/c/Users/CMINGLOK/.config/yasb/config.yaml"
alias komort="komorebic stop --whkd && komorebic start --whkd"
adv() {
    sshpass -p Abcd1234 ssh tester@"$1"
}
findfile() {
    find . -type f -name "$1"
}
finddir() {
    find . -type d -name "$1"
}
function python3() {
    if [ $# -eq 0 ]; then
        /cygdrive/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/python3 -i
    else
        /cygdrive/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/python3 -u "$@"
    fi
}
function python() {
    if [ $# -eq 0 ]; then
        /cygdrive/c/Python27/python -i
    else
        /cygdrive/c/Python27/python -u "$@"
    fi
}
function pip3install(){
    pip3 install "$1" --user --proxy=proxy-web.micron.com:80 --trusted-host=pypi.org --trusted-host=files.pythonhosted.org 
}
function frpt(){
    ssh cminglok@silssdtest001 "csh -c 'source ~/.cshrc; frpt "$@"'"
}
function tsums(){
    ssh cminglok@silssdtest001 "csh -c 'source ~/.cshrc; tsums "$@"'"
}
function mhist(){
    ssh cminglok@silssdtest001 "csh -c 'source ~/.cshrc; mhist "$@"'"
}
function fdat95(){
    ssh cminglok@silssdtest001 "csh -c 'source ~/.cshrc; fdat95 "$@"'"
}

##findmnt, ps -aux, netstat -tunlp, cat /etc/os-release, lscpu, crontab 
