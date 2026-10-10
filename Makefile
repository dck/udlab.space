HOST ?= utumno

.PHONY: setup deploy

setup:
	scp udlab.caddy $(HOST):/tmp/udlab.caddy
	ssh $(HOST) 'sudo install -m 0644 /tmp/udlab.caddy /etc/caddy/sites/udlab.caddy && rm /tmp/udlab.caddy && sudo caddy validate --config /etc/caddy/Caddyfile && sudo systemctl reload caddy'

deploy:
	rsync -rtv --rsync-path='sudo -u udlab rsync' index.html $(HOST):/srv/udlab.space/
