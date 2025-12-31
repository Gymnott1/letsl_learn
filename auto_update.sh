#!/bin/bash

# GitHub Auto-Commit Bot
# This script updates multiple files and pushes to GitHub

# Get the directory where this script is located
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR" || exit 1

# Current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
DATE=$(date '+%Y-%m-%d')
DAY_OF_YEAR=$(date '+%j')
COMMIT_COUNT=$((DAY_OF_YEAR))

# Array of motivational messages
MESSAGES=(
    "Keep pushing forward! 🚀"
    "Another day, another commit! 💪"
    "Consistency is key to success! ⭐"
    "Building great things, one commit at a time! 🔨"
    "The journey of a thousand miles begins with a single commit! 🌟"
    "Stay committed to your goals! 🎯"
    "Progress, not perfection! 📈"
    "Code. Commit. Repeat! 🔄"
    "Every commit counts! 💻"
    "Automating success! 🤖"
)

# Get random message
RANDOM_MESSAGE=${MESSAGES[$RANDOM % ${#MESSAGES[@]}]}

# Update README.md
cat > README.md << EOF
# Daily Auto-Commit Project 🤖

This repository is automatically updated every day to maintain commit consistency.

## 📊 Statistics
- **Last Updated:** $TIMESTAMP
- **Days Active:** $COMMIT_COUNT
- **Status:** ✅ Active

## 💡 Today's Message
> $RANDOM_MESSAGE

## 📁 Project Structure
This project contains sample files in multiple programming languages that are updated automatically:
- Python, JavaScript, HTML, CSS, Java, C, C++, Go, Rust, Ruby, PHP, TypeScript

## 🎯 Purpose
Demonstrating automated Git workflows and maintaining contribution consistency.

---
*Generated automatically by auto-commit bot*
EOF

# Update Python file
cat > update.py << EOF
#!/usr/bin/env python3
"""
Daily Auto-Updated Python Script
Last Updated: $TIMESTAMP
"""

from datetime import datetime

def main():
    print("=" * 50)
    print("Python Auto-Update Script")
    print("=" * 50)
    print(f"Last updated: $TIMESTAMP")
    print(f"Update count: $COMMIT_COUNT")
    print(f"Message: $RANDOM_MESSAGE")
    print("=" * 50)

if __name__ == "__main__":
    main()
EOF

# Update JavaScript file
cat > update.js << EOF
/**
 * Daily Auto-Updated JavaScript File
 * Last Updated: $TIMESTAMP
 */

const updateInfo = {
    timestamp: "$TIMESTAMP",
    updateCount: $COMMIT_COUNT,
    message: "$RANDOM_MESSAGE"
};

console.log("=".repeat(50));
console.log("JavaScript Auto-Update Script");
console.log("=".repeat(50));
console.log(\`Last updated: \${updateInfo.timestamp}\`);
console.log(\`Update count: \${updateInfo.updateCount}\`);
console.log(\`Message: \${updateInfo.message}\`);
console.log("=".repeat(50));
EOF

# Update HTML file
cat > update.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Update - $DATE</title>
</head>
<body>
    <h1>Daily Auto-Update Page</h1>
    <p><strong>Last Updated:</strong> $TIMESTAMP</p>
    <p><strong>Update Count:</strong> $COMMIT_COUNT</p>
    <p><strong>Message:</strong> $RANDOM_MESSAGE</p>
</body>
</html>
EOF

# Update CSS file
cat > update.css << EOF
/* 
 * Daily Auto-Updated CSS File
 * Last Updated: $TIMESTAMP
 */

:root {
    --update-count: $COMMIT_COUNT;
    --last-update: "$TIMESTAMP";
}

body::before {
    content: "Last updated: $TIMESTAMP | Count: $COMMIT_COUNT";
}
EOF

# Update Java file
cat > Update.java << EOF
/**
 * Daily Auto-Updated Java File
 * Last Updated: $TIMESTAMP
 */

public class Update {
    private static final String TIMESTAMP = "$TIMESTAMP";
    private static final int UPDATE_COUNT = $COMMIT_COUNT;
    private static final String MESSAGE = "$RANDOM_MESSAGE";
    
    public static void main(String[] args) {
        System.out.println("=".repeat(50));
        System.out.println("Java Auto-Update Script");
        System.out.println("=".repeat(50));
        System.out.println("Last updated: " + TIMESTAMP);
        System.out.println("Update count: " + UPDATE_COUNT);
        System.out.println("Message: " + MESSAGE);
        System.out.println("=".repeat(50));
    }
}
EOF

# Update C file
cat > update.c << EOF
/**
 * Daily Auto-Updated C File
 * Last Updated: $TIMESTAMP
 */

#include <stdio.h>

int main() {
    printf("==================================================\\n");
    printf("C Auto-Update Script\\n");
    printf("==================================================\\n");
    printf("Last updated: $TIMESTAMP\\n");
    printf("Update count: $COMMIT_COUNT\\n");
    printf("Message: $RANDOM_MESSAGE\\n");
    printf("==================================================\\n");
    return 0;
}
EOF

# Update C++ file
cat > update.cpp << EOF
/**
 * Daily Auto-Updated C++ File
 * Last Updated: $TIMESTAMP
 */

#include <iostream>
#include <string>

int main() {
    std::cout << std::string(50, '=') << std::endl;
    std::cout << "C++ Auto-Update Script" << std::endl;
    std::cout << std::string(50, '=') << std::endl;
    std::cout << "Last updated: $TIMESTAMP" << std::endl;
    std::cout << "Update count: $COMMIT_COUNT" << std::endl;
    std::cout << "Message: $RANDOM_MESSAGE" << std::endl;
    std::cout << std::string(50, '=') << std::endl;
    return 0;
}
EOF

# Update Go file
cat > update.go << EOF
/**
 * Daily Auto-Updated Go File
 * Last Updated: $TIMESTAMP
 */

package main

import "fmt"

func main() {
    fmt.Println("==================================================")
    fmt.Println("Go Auto-Update Script")
    fmt.Println("==================================================")
    fmt.Println("Last updated: $TIMESTAMP")
    fmt.Println("Update count: $COMMIT_COUNT")
    fmt.Println("Message: $RANDOM_MESSAGE")
    fmt.Println("==================================================")
}
EOF

# Update Rust file
cat > update.rs << EOF
/**
 * Daily Auto-Updated Rust File
 * Last Updated: $TIMESTAMP
 */

fn main() {
    println!("{}", "=".repeat(50));
    println!("Rust Auto-Update Script");
    println!("{}", "=".repeat(50));
    println!("Last updated: $TIMESTAMP");
    println!("Update count: $COMMIT_COUNT");
    println!("Message: $RANDOM_MESSAGE");
    println!("{}", "=".repeat(50));
}
EOF

# Update Ruby file
cat > update.rb << EOF
#!/usr/bin/env ruby
# Daily Auto-Updated Ruby File
# Last Updated: $TIMESTAMP

puts "=" * 50
puts "Ruby Auto-Update Script"
puts "=" * 50
puts "Last updated: $TIMESTAMP"
puts "Update count: $COMMIT_COUNT"
puts "Message: $RANDOM_MESSAGE"
puts "=" * 50
EOF

# Update PHP file
cat > update.php << EOF
<?php
/**
 * Daily Auto-Updated PHP File
 * Last Updated: $TIMESTAMP
 */

echo str_repeat("=", 50) . "\\n";
echo "PHP Auto-Update Script\\n";
echo str_repeat("=", 50) . "\\n";
echo "Last updated: $TIMESTAMP\\n";
echo "Update count: $COMMIT_COUNT\\n";
echo "Message: $RANDOM_MESSAGE\\n";
echo str_repeat("=", 50) . "\\n";
?>
EOF

# Update TypeScript file
cat > update.ts << EOF
/**
 * Daily Auto-Updated TypeScript File
 * Last Updated: $TIMESTAMP
 */

interface UpdateInfo {
    timestamp: string;
    updateCount: number;
    message: string;
}

const updateInfo: UpdateInfo = {
    timestamp: "$TIMESTAMP",
    updateCount: $COMMIT_COUNT,
    message: "$RANDOM_MESSAGE"
};

console.log("=".repeat(50));
console.log("TypeScript Auto-Update Script");
console.log("=".repeat(50));
console.log(\`Last updated: \${updateInfo.timestamp}\`);
console.log(\`Update count: \${updateInfo.updateCount}\`);
console.log(\`Message: \${updateInfo.message}\`);
console.log("=".repeat(50));
EOF

# Update Shell script file
cat > update.sh << EOF
#!/bin/bash
# Daily Auto-Updated Shell Script
# Last Updated: $TIMESTAMP

echo "=================================================="
echo "Shell Auto-Update Script"
echo "=================================================="
echo "Last updated: $TIMESTAMP"
echo "Update count: $COMMIT_COUNT"
echo "Message: $RANDOM_MESSAGE"
echo "=================================================="
EOF

# Make executable files
chmod +x update.py update.rb update.sh

# Git operations
git add .
git commit -m "Daily auto-update: $TIMESTAMP - $RANDOM_MESSAGE"

# Push to GitHub (with retry logic)
MAX_RETRIES=3
RETRY_COUNT=0

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    if git push origin main || git push origin master; then
        echo "✅ Successfully pushed to GitHub at $TIMESTAMP"
        echo "$TIMESTAMP - Success: $RANDOM_MESSAGE" >> "$REPO_DIR/push_log.txt"
        exit 0
    else
        RETRY_COUNT=$((RETRY_COUNT + 1))
        echo "⚠️  Push attempt $RETRY_COUNT failed, retrying..."
        sleep 5
    fi
done

echo "❌ Failed to push after $MAX_RETRIES attempts at $TIMESTAMP"
echo "$TIMESTAMP - Failed after $MAX_RETRIES attempts" >> "$REPO_DIR/push_log.txt"
exit 1