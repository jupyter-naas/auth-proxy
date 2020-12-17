FROM node:lts-alpine
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="auth_proxy" \
    org.label-schema.description="api service to retrive cookies" \
    org.label-schema.url="https://naas.ai" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="" \
    org.label-schema.vendor="Cashstory, Inc." \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"
RUN apk add --no-cache gconf-service 

RUN npm install

# ENV NODE_PATH="/usr/local/share/.config/yarn/global/node_modules:${NODE_PATH}"

# ENV PATH="/tools:${PATH}"

# RUN groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser

# COPY --chown=pptruser:pptruser ./tools /tools

EXPOSE 3000
CMD ["node","--es-module-specifier-resolution=node","src/index"]