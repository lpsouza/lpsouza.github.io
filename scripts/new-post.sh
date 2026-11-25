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

# Open in default terminal editor
editor="${EDITOR:-${VISUAL:-}}"
if [[ -z "$editor" ]]; then
    if command -v nvim >/dev/null 2>&1; then
        editor="nvim"
    elif command -v vi >/dev/null 2>&1; then
        editor="vi"
    elif command -v nano >/dev/null 2>&1; then
        editor="nano"
    else
        echo "❌ Error: No terminal editor found. Set \$EDITOR and open $filename manually."
        exit 1
    fi
fi

read -ra editor_cmd <<< "$editor"
"${editor_cmd[@]}" "$filename"

echo "🚀 Opened $filename in $editor"
