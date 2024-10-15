#!/bin/bash

# Define new user credentials
USERNAME="hackthejumper"
CURIOUS5="Curious5"
PASSWORD="**DtnO4yX^jpM=FBf+**"

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install essential penetration testing tools
echo "Installing essential tools for HTB..."
sudo apt install -y \
    nmap \
    metasploit-framework \
    burpsuite \
    sqlmap \
    aircrack-ng \
    john \
    hashcat \
    gobuster \
    net-tools \
    wget \
    curl \
    git \
    vim \
    python3-pip \
    docker.io \
    docker-compose \
    gcc \
    make \
    gdb

# Generate a random salt
SALT=$(openssl rand -hex 16)

# Combine the password and salt
SALT_PASSWORD="${SALT}${PASSWORD}"

# Hash the salted password using SHA-256
HASHED_PASSWORD=$(echo -n "$SALT_PASSWORD" | openssl dgst -sha256 | awk '{print $2}')

# Obfuscate the hash (e.g., base64 encoding)
OBFUSCATED_HASH=$(echo -n "$HASHED_PASSWORD" | base64)

# Email the password to the specified recipient
RECIPIENT="su@example.com"  # Change this to the actual email address
SUBJECT="New Password for User $USERNAME"
BODY="The password for user $USERNAME is: $PASSWORD\n\nSalt: $SALT\nHashed Password: $HASHED_PASSWORD\nObfuscated Hash: $OBFUSCATED_HASH"

# Send the email
echo -e "$BODY" | mail -s "$SUBJECT" "$RECIPIENT"

# Output the results to the console
echo "Username: $USERNAME"
echo "Salt: $SALT"
echo "Hashed Password: $HASHED_PASSWORD"
echo "Obfuscated Hash: $OBFUSCATED_HASH"

# Self-destructing message feature
echo "This message will self-destruct in 10 seconds..."
for i in {10..1}; do
    echo "$i..."
    sleep 1
done

# Clear sensitive information from the script
unset PASSWORD
unset SALT
unset HASHED_PASSWORD
unset OBFUSCATED_HASH

# Final self-destruction message
echo "All sensitive information has been cleared."
