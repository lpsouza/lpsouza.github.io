#!/bin/bash

# Script to create a new Jekyll blog post
# Usage: ./scripts/new-post.sh

set -e

# Function to generate slug from title
generate_slug() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g'
}

# Prompt for post title
echo "📝 Creating a new blog post..."
read -p "Enter the post title: " title

# Validate input
if [[ -z "$title" ]]; then
    echo "❌ Error: Title cannot be empty"
    exit 1
fi

# Generate filename
date=$(date +%Y-%m-%d)
slug=$(generate_slug "$title")
filename="_posts/${date}-${slug}.md"

# Check if file already exists
if [[ -f "$filename" ]]; then
    echo "❌ Error: File $filename already exists"
    exit 1
fi

# Create the post file with frontmatter
cat > "$filename" << EOF
---
author: Luiz Pereira de Souza Filho
category: blog
date: $(date +"%Y-%m-%d %H:%M:%S %z")
image: null
last_modified_at: $(date +"%Y-%m-%d %H:%M:%S %z")
layout: post
published: false
tags: []
title: $title
---

Your content here...
EOF

echo "✅ Created new post: $filename"

# Open in VS Code
if [[ -n "$VSCODE_PID" ]] || [[ "$TERM_PROGRAM" == "vscode" ]]; then
    # Running inside VS Code terminal - open in same window
    code "$filename"
else
    # Running outside VS Code - open new window
    code --new-window "$filename"
fi

echo "🚀 Opened $filename in VS Code"
