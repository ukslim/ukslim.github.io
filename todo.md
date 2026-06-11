# Outstanding review items

Lower-priority items from a project review, not yet addressed.

- **Stale faraday pin** — `Gemfile` pins `gem "faraday", "< 1.0"` (locks
  0.17.6, EOL ~2020). Check whether this workaround is still needed and
  remove if not.
- **Stale `_config.yml` exclude entries** — `poster-styles/` and
  `poster-story-sources/` no longer exist in the repo; `memory/` is gitignored
  but not excluded from Jekyll builds (harmless for production, but pollutes
  local `_site/`).
- **Orphan thumbnail** — `assets/poster-thumbnails/swiss_international-gig.jpg`
  is unused; only `-fete` thumbnails are referenced from
  `poster-prompts/index.html`.
- **Copy button failure handling** — `_layouts/poster_style.html`
  copy-to-clipboard buttons have no `.catch` if
  `navigator.clipboard.writeText` is unavailable or rejects; consider showing
  "Copy failed" in that case.
