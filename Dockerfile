FROM lscr.io/linuxserver/mastodon:4.5.9

COPY root/ /

RUN chmod a+x /custom-cont-init.d/unset_port_env_var
