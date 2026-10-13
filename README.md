# udlab.space

Source of [udlab.space](https://udlab.space), Denis Usanov's lab: a short list of projects I build and use, with a page for each one.

Plain HTML and one stylesheet. No build step, no JavaScript.

## Preview

```sh
python3 -m http.server 8811
```

Open http://127.0.0.1:8811/. Pages link to `/style.css` with an absolute path, so opening the files directly from disk shows them without styles.

## Deploy

```sh
make setup    # once: install the Caddy site config on the server
make deploy   # copy the site to the server
```

`HOST` defaults to `utumno`, an SSH alias. Override it with `make deploy HOST=...`.
