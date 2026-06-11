# Outstanding review items

Lower-priority items from a project review, not yet addressed.

- **Pin/remove Primer CSS dependency** — `_includes/head.html` loads
  `https://unpkg.com/@primer/css/dist/primer.css` with no version pin and no
  `integrity`/`crossorigin` attributes, used only for the Toast alert/info
  boxes. Either copy the relevant Toast CSS into `assets/main.scss` and drop
  the dependency, or pin a version with SRI.
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
