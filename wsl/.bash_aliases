alias ssh="TERM=xterm-256color ssh"
alias test001="ssh test001"
alias add="vim /home/cminglok/.bash_aliases"
alias pip3="/mnt/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/Scripts/pip3.exe"
alias sql3="/mnt/c/Users/CMINGLOK/Documents/SQLiteDatabaseBrowserPortable/SQLiteDatabaseBrowserPortable.exe"
alias wgit="/mnt/c/Program\ Files/Git/cmd/git.exe"
alias printdirs='ls -d */ | awk '\''{printf "\"./%s\",\n", $1}'\'
alias abitrerun="rm summary.zip; rm DispatcherDebug*.txt; cd OS; mv ori_presummary.zip presummary.zip; rm binning.pyc; rm hal_dps.pickle; rm dib.pickle; rm *RAW_FOM.txt; rm *WATERFALL_FOM.txt; rm resultsManager.db; rm *UPDATE_ATTRS.xml; cd .."
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
        /mnt/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/python3.exe -i
    else
        /mnt/c/Users/CMINGLOK/AppData/Local/Programs/Python/Python310/python3.exe -u "$@"
    fi
}
function python() {
    if [ $# -eq 0 ]; then
        /mnt/c/Python27/python.exe -i
    else
        /mnt/c/Python27/python.exe -u "$@"
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

function mcd() {
    local share_path="$1"
    local mount_point="/mnt/${share_path}"
    echo $mount_point

    # Check if the mount point exists and change directory if it does
    if mountpoint -q "$mount_point"; then
        cd "$mount_point"
    else
        if [ ! -d "$mount_point" ]; then
            sudo mkdir -p "$mount_point"
        fi
        # Mount the network share
        sudo mount -t drvfs "//$share_path" "$mount_point"
        cd "$mount_point"
    fi
}
wcd() {
    local input_path="$1"
    local converted_path="${input_path//\\//}"
    cd "$converted_path"
}

function deser(){
    /mnt/c/cygwin64/bin/bash.exe --login -c "source .bashrc; source .bash_aliases; cd /cygdrive/z/TestRunBinaryExtractionTool; python run_database_serialize.py --rawsumm="$1""
}
##findmnt, ps -aux, netstat -tunlp, cat /etc/os-release, lscpu, crontab 
