ARG BUILD_FROM
FROM ${BUILD_FROM}

# Bashio version
ARG BASHIO_VERSION=0.16.2

# Install bashio for Home Assistant integration
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        curl \
        jq \
    && curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf /tmp/bashio.tar.gz --strip 1 -C /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /tmp/bashio.tar.gz /tmp/bashio \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the run script
COPY run.sh /app/run.sh
RUN chmod a+x /app/run.sh

# Use the run script as the entrypoint
ENTRYPOINT ["/app/run.sh"]
