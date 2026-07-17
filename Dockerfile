FROM ghcr.io/toeverything/affine:stable

# match your host user if you want; 1000:1000 is the usual default
ARG APP_UID=1001630000
ARG APP_GID=1001630000

RUN set -eux; \
    groupadd -g "${APP_GID}" affine || true; \
    useradd -m -u "${APP_UID}" -g "${APP_GID}" -s /usr/sbin/nologin affine || true; \
    mkdir -p /home/affine/.affine/storage /home/affine/.affine/config; \
    chown -R "${APP_UID}:${APP_GID}" /home/affine; \
    chown -R "${APP_UID}:${APP_GID}" /app

ENV HOME=/home/affine
USER ${APP_UID}:${APP_GID}

