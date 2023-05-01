#!/usr/bin/env bash
if [[ -n "$CERC_SCRIPT_DEBUG" ]]; then
    set -x
fi
# TODO: get from the caller
LACONIC_TLS_DOMAIN=laconic.whichnode.com
