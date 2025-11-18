# List available recipes
default:
    @just --list

# Serve the site locally
serve:
    bundle exec jekyll serve --host 0.0.0.0

# Serve the site with live reload
serve-live:
    bundle exec jekyll serve --host 0.0.0.0 --livereload

# Build the site
build:
    bundle exec jekyll build

# Clean generated files
clean:
    bundle exec jekyll clean
    rm -rf _site

# Install dependencies
install:
    bundle install

# Update dependencies
update:
    bundle update

# Create a new blog post with the given title
new-post title:
    #!/usr/bin/env bash
    DATE=$(date +%Y-%m-%d)
    SLUG=$(echo "{{title}}" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    FILENAME="_posts/${DATE}-${SLUG}.md"
    cat > "$FILENAME" << EOL
    ---
    layout: post
    title: "{{title}}"
    date: ${DATE}
    ---

    Write your post content here...
    EOL
    echo "Created $FILENAME"
