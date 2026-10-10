# udlab.space

## Commits

Commit directly to `main`. One logical change per commit.

Subject line:

- Imperative mood, starting with a capitalized verb: Add, Fix, Remove, Update, Rename, Move, Drop, Replace.
- No type or scope prefix (`feat:`, `fix(web):`), no trailing period.
- 50 characters or fewer; 72 is the hard limit.
- Name what changes, not how it was done.

Body is optional. Add one only when the reason is not obvious from the subject and the diff: one or two plain sentences, wrapped at 72. Do not restate the diff or list files.

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
