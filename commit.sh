#!/bin/bash

start_spinner() {
    local message="${1:-Loading...}"
    (
        frames=(⠋ ⠙ ⠹ ⠸ ⠼ ⠴ ⠦ ⠧ ⠇ ⠏)
        i=0
        while true; do
            printf "\r%s %s" "${frames[$((i % ${#frames[@]}))]}" "$message"
            sleep 0.1
            ((i++))
        done
    ) &
    SPINNER_PID=$!
}

stop_spinner() {
    local message="${1:-Done!}"
    sleep 0.5
    kill $SPINNER_PID 2>/dev/null
    printf "\r\033[K%s\n" "$message"
    sleep 0.5
}

# Run concatenation
start_spinner "Running concatenation..."
if python3 concatenate.py; then
    stop_spinner "Readme generated."
else
    stop_spinner "Concatenation failed."
    exit 1
fi

# Commit and push
echo -n "Commit Message: "
read commit_message
if [ -z "$commit_message" ]; then
    echo "Commit message cannot be empty."
    exit 1
fi

start_spinner "Committing and Pushing..."
if git add . && git commit -m "$commit_message" && git push origin master; then
    stop_spinner "Pushed."
else
    stop_spinner "Git push failed."
    exit 1
fi
