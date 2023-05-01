#!/usr/bin/env bash
if [[ -n "$CERC_SCRIPT_DEBUG" ]]; then
    set -x
fi
# TODO: get from the caller
LACONIC_TLS_DOMAIN=laconic.whichnode.com
# When we're called nginx and certbot container are up and running and certbot is sleeping before executing renew
# So we can now ask certbot to issue our initial cert
# TODO: pass in email from caller
# TODO: allow staging/dry-run mode
docker compose exec certbot \
    certbot certonly --webroot -w /data-www-challenge \
    --staging \
    --email ${EMAIL} \
    -d ${LACONIC_TLS_DOMAIN} \
    --rsa-key-size 4096 \
    --agree-tos \
    --force-renewal"
