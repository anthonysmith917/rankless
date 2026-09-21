# RANKLESS

Standalone static web property for **RANKLESS — A Desygn Shop Original**, intended to run at:

```text
rankless.thedesygnshop.com
```

## Structure

- `index.html` - mobile-first manga landing page with synopsis, latest issue, cast, library, and Desygn Shop return links.
- `styles.css` - cinematic manga styling and responsive layout.
- `assets/rankless-cover-animated.mp4` - finished animated cover used in the hero.
- `assets/rankless-main-cast.webp` - full-cast fallback, preview, and social artwork.
- `assets/rankless-character-board.png` - Kai Drane character reference.
- `rankless-backstory.md` - season-one story bible.
- `rankless-characters.md` - principal cast profiles.
- `CNAME` - GitHub Pages custom domain configuration.
- `.github/workflows/pages.yml` - GitHub Pages deployment workflow.

## Deployment

This repo is prepared for GitHub Pages static hosting. After the repository is created on GitHub, push this source to `main`, enable Pages using GitHub Actions if needed, and add the DNS record for the subdomain:

```text
rankless.thedesygnshop.com CNAME anthonysmith917.github.io
```

Do not remove or replace existing DNS records for `thedesygnshop.com`.

