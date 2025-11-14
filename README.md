# Personal Website - Samuel Le Meur-Diebolt

Personal website built with Jekyll and hosted on GitHub Pages.

## Structure

- `index.html` - Homepage with bio and research description
- `cv.html` - Curriculum Vitae page (ready for your CV content)
- `blog.html` - Blog listing page
- `_posts/` - Directory for blog posts
- `_layouts/` - Page layouts (default, post)
- `_includes/` - Reusable components (navbar, footer)
- `assets/css/` - Stylesheets

## Updating Your Information

### Social Media Links

Update your social media links in `_includes/navbar.html`:

1. **Google Scholar**: Replace `YOUR_ID` with your Google Scholar user ID
2. **BlueSky**: Replace `YOUR_HANDLE.bsky.social` with your BlueSky handle

### CV Content

Edit `cv.html` to add your complete CV information. The file has placeholder sections for:
- Education
- Professional Experience
- Research Interests
- Selected Projects
- Publications
- Presentations & Talks
- Awards & Honors
- Skills

### Writing Blog Posts

To create a new blog post:

1. Create a new file in `_posts/` with the format: `YYYY-MM-DD-title.md`
   Example: `2025-11-14-my-first-post.md`

2. Add front matter at the top:
   ```yaml
   ---
   layout: post
   title: "Your Post Title"
   date: 2025-11-14
   ---
   ```

3. Write your content in Markdown below the front matter

Example blog post:
```markdown
---
layout: post
title: "Introducing fUSI-BIDS"
date: 2025-11-14
---

Here's my first blog post about the fUSI-BIDS specification...

## A Section

Some content here.
```

## Local Development

To run the site locally:

```bash
bundle install
bundle exec jekyll serve
```

Then visit `http://localhost:4000`

## Deployment

Push changes to the `main` branch. GitHub Pages will automatically build and deploy your site.

## Technologies

- Jekyll static site generator
- Bootstrap 5 for styling
- Font Awesome for icons
- GitHub Pages for hosting
