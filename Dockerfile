FROM ghcr.io/linuxserver/mastodon:4.7.4

COPY root/ /

RUN chmod a+x /custom-cont-init.d/unset_port_env_var
