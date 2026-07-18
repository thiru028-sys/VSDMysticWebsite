# Divyas Mystic Sanctuary

A Quarto website designed for Netlify deployment.

## First setup

1. Open this folder as an RStudio Project.
2. Replace `images/logo-mark.svg` with the real logo (keep the same filename, or update `_quarto.yml` and `index.qmd`).
3. In `js/site.js`, change `919000000000` to the real WhatsApp number in international format—no `+`, spaces or dashes.
4. In `contact.qmd`, replace the sample email and social-media URLs.
5. Render locally with the **Render** button in RStudio.

## Publish updates

Click **Source** while `scripts/publish.R` is open, enter a commit message, and it will render, commit and push. Netlify detects the GitHub push and deploys automatically.

## Netlify

This repository uses Quarto's official Netlify build plugin. In Netlify, set the publish directory to `_site`; leave the build command blank.
