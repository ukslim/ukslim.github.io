# AGENTS.md

Instructions for AI coding agents working on this repository.

## Project overview

Personal blog published at [https://ukslim.github.io](https://ukslim.github.io) via GitHub Pages.

- **Stack:** Jekyll (via `github-pages` gem), Minima theme, Kramdown (GFM), Rouge syntax highlighting
- **Author:** ukslim (`github_username` in `_config.yml`)
- **Purpose:** Markdown blog posts and static pages — not an application codebase

## Local development

Ruby 3.3 (Homebrew keg-only) is required — it is not on PATH by default. Use the convenience script:

```bash
./serve.sh
```

This prepends `/opt/homebrew/opt/ruby@3.3/bin` to PATH and runs `bundle exec jekyll serve`. Pass extra flags through as normal (`./serve.sh --drafts`). Site is served at `http://localhost:4000`.

`_config.yml` changes require a server restart. All other file changes (layouts, includes, posts, data, SCSS) are picked up automatically by the live server.

## Deployment

Push to the default branch; GitHub Pages builds and publishes automatically. No separate deploy step or CI workflow in this repo.

## Repository layout

| Path | Purpose |
|------|---------|
| `_posts/` | Blog posts (`YEAR-MM-DD-slug.md`) |
| `_includes/` | Custom Liquid partials (alert boxes, images, head overrides) |
| `_layouts/` | Custom page layouts (currently `poster_style.html`) |
| `_config.yml` | Site title, theme, plugins, collections, markdown/math settings |
| `assets/main.scss` | Custom CSS (extends Minima via `@import`) |
| `index.md` | Home page |
| `about.md` | About page |
| `404.html` | Custom 404 page |
| `images/` | Post images (referenced as `/images/...`) |
| `poster-prompts/` | Poster prompts subsite — index and how-to pages |
| `_poster_styles/` | Collection stub files — one per style (100 total) |
| `_data/poster_styles.yaml` | All 100 poster style definitions (authoritative source) |
| `_data/events.yaml` | Reference event descriptions (fête + gig) used in prompts |
| `assets/poster-examples/` | Poster example images (`{style_id}-fete.webp`, `{style_id}-gig.webp`) |
| `assets/poster-thumbnails/` | Fête thumbnail images (`{style_id}-fete.jpg`) used on the poster-prompts index grid |

The Minima theme lives in the Ruby gem — do not vendor or copy theme files into the repo unless explicitly asked.

### Poster prompts subsite

Individual style pages are generated from the `poster_styles` Jekyll collection. Each stub file in `_poster_styles/` has a `style_id` front matter field; the `poster_style` layout looks up the full style data from `_data/poster_styles.yaml` at build time.

URLs use hyphens (`/poster-prompts/art-nouveau/`) even though style ids use underscores (`art_nouveau`) — Jekyll slugifies the filename. Use `{{ style.id | replace: '_', '-' }}` when constructing URLs from data.

To add a new style: add it to `_data/poster_styles.yaml`, create a stub in `_poster_styles/{id}.md`, and add placeholder images to `assets/poster-examples/`. To add a per-style notice (info box), add a `note:` field to the style entry in the YAML.

## Writing blog posts

Create a new file in `_posts/` named `YYYY-MM-DD-descriptive-slug.md`.

- Start with a level-1 heading: `# Post title`
- Optional table of contents:

  ```markdown
  1. TOC
  {:toc}
  ```

- Use standard Markdown (GFM): headings, lists, links, footnotes, tables, fenced code blocks
- Set the post date via the filename, not front matter (unless you add YAML front matter for layout overrides)

See existing posts in `_posts/` for formatting examples.

## Custom includes

Use these Liquid includes in posts and pages:

```liquid
{% include alert.html text="Warning message" %}
{% include info.html text="Info message" %}
{% include image url="filename.png" w="400" caption="Optional caption" %}
{% include image-r url="filename.png" w="200" caption="Floats right" %}
{% include screenshot url="filename.png" caption="Optional caption" %}
```

Image includes expect files under `/images/`. Inline images also work:

```markdown
![](/images/logo.png "Caption shown as figcaption")
```

## Styling and code blocks

- Custom styles live in `assets/main.scss` — keep changes scoped and minimal
- Python code followed by plaintext output is styled for notebook-style posts (input/output borders)
- For LaTeX math, set `use_math: true` in `_config.yml` (KaTeX via `_includes/head.html`)

## Configuration

Edit `_config.yml` for site-wide settings (title, description, social links, plugins). After changing config or plugins, restart the Jekyll server.

Active plugins: `jekyll-feed`, `jekyll-gist`, `jekyll-octicons`, `jekyll-github-metadata`.

## Agent guidelines

- **Scope:** This is a content site. Prefer editing posts, pages, includes, and styles over adding build tooling or frameworks.
- **Minimal diffs:** Match existing Markdown and Liquid conventions. Do not refactor unrelated files.
- **No generated output:** Never commit `_site/`, `.sass-cache/`, `.jekyll-cache/`, or `vendor/`.
- **Commits:** Only create git commits when the user explicitly asks.
- **Dependencies:** Pin to the `github-pages` gem versions in `Gemfile` — avoid upgrading Jekyll or plugins unless requested, to stay compatible with GitHub Pages.
- **Images:** Add image files to `images/` and reference them with root-relative paths (`/images/...`).
