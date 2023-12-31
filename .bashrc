# --------------------------------------- git ---------------------------------------
alias gs='git status'
alias gl='git log --pretty=one'
alias ga='git add -A'
alias gc='git commit -m "$@"'
alias gp='git push'

function gcr () {
    if [ -z "$1" ]; then
        echo "> Missing argument \"JIRA-Ticket\""
    elif ! [[ $1 =~ ^[A-Z]{3}-[0-9]+$ ]]; then
        echo "> Invalid argument format for \"JIRA-Ticket\" => [e.g. \"AAA-0000\"]"
    else
        git commit -m "$1: intended for rebasing"
    fi
}
# -----------------------------------------------------------------------------------

# ------------------------------------- jupyter -------------------------------------
function jp () {
    echo "> Purge outputs on all jupyter files within the folder $1 and all its subfolders..."
    find $1 -name "*.ipynb" | xargs jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace 
}
# -----------------------------------------------------------------------------------
