# Alpine-based build script runner
FROM alpine:latest

RUN apk add --no-cache bash

COPY build.sh /app/build.sh
WORKDIR /app
RUN chmod +x build.sh

CMD ["./build.sh"]