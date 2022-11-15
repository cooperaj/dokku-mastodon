FROM lscr.io/linuxserver/mastodon:4.0.2

COPY root/ /
COPY nginx.conf.sigil /