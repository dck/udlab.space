# udlab.space

## Commits

Commit directly to `main`. One logical change per commit.

Subject line:

- Imperative mood, starting with a capitalized verb: Add, Fix, Remove, Update, Rename, Move, Drop, Replace.
- No type or scope prefix (`feat:`, `fix(web):`), no trailing period.
- 50 characters or fewer; 72 is the hard limit.
- Name what changes, not how it was done.

One line only. No body, no trailers.

Plain words only: no adjectives, metaphors, marketing tone or emoji.

Good:

```
Add lede to the catalogue
Fix sticker overlap on tablet
Update Caddy cache headers
```

Bad:

```
feat: add udlab.space landing page with Caddy site and deploy targets
Craft a bold new catalogue experience for visitors
Updated stuff
```

Never commit design inputs: `PRODUCT.md`, `DESIGN.md`, `.impeccable/`.

## Site

Plain HTML, one shared `style.css`, no build step and no JavaScript.

- `index.html` is the project list. Each project has its own folder with an `index.html` (and images, if any).
- Each project's short note appears in four places: the row on the home page, the line under the title on its page, `<title>` and `og:title`. Keep them the same.
- Each project's summary appears in three places: `<meta name="description">`, `og:description` and the `"description"` in the JSON-LD block. Update all three when the page text changes.
- A new project needs a row on the home page, an entry in the home page's JSON-LD `ItemList`, a line in `sitemap.xml` and its folder in `SITE` in the `Makefile`.
- The home page row sets `--n` to the number of characters in the host text; it drives the reveal animation.

Copy is simple English for a non-technical reader: what the product does, no implementation details.
