FROM lscr.io/linuxserver/mastodon:4.0.0-develop

COPY root/ /
COPY nginx.conf.sigil /