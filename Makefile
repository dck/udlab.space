HOST ?= utumno
SITE := index.html style.css robots.txt sitemap.xml lede distill fitlake brain-mcp vps-setup

.PHONY: setup deploy

setup:
	scp udlab.caddy $(HOST):/tmp/udlab.caddy
	ssh $(HOST) 'sudo install -m 0644 /tmp/udlab.caddy /etc/caddy/sites/udlab.caddy && rm /tmp/udlab.caddy && sudo caddy validate --config /etc/caddy/Caddyfile && sudo systemctl reload caddy'

deploy:
	rsync -rtv --rsync-path='sudo -u udlab rsync' $(SITE) $(HOST):/srv/udlab.space/
