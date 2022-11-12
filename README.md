```shellscript
dokku postgres:create socialn8edev
dokku redis:create socialn8edev

dokku postgres:link socialn8edev
dokku redis:link socialn8edev

dokku domains:set social.n8e.dev
dokku letsencrypt:enable social.n8e.dev

dokku config:set SECRET_KEY_BASE=$(docker run --rm -it -w /app/www --entrypoint rake lscr.io/linuxserver/mastodon:4.0.0-develop secret)

dokku config:set OTP_SECRET=$(docker run --rm -it -w /app/www --entrypoint rake lscr.io/linuxserver/mastodon:4.0.0-develop secret)

dokku config:set $(docker run --rm -it -w /app/www --entrypoint rake lscr.io/linuxserver/mastodon:4.0.0-develop mastodon:webpush:generate_vapid_key)
```