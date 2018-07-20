FROM alpine AS fetch
ADD https://github.com/segmentio/chamber/releases/download/v2.1.0/chamber-v2.1.0-linux-amd64 /chamber
RUN chmod +x /chamber

FROM scratch
COPY --from=fetch /chamber /chamber/chamber
VOLUME /chamber
