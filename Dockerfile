FROM alpine
LABEL "repository"="https://github.com/ZackBraunstein/.github"
LABEL "homepage"="https://github.com/ZackBraunstein/.github"
LABEL "maintainer"="Nick Sjostrom"

COPY ./contrib/semver ./contrib/semver
RUN install ./contrib/semver /usr/local/bin
COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq

ENTRYPOINT ["/entrypoint.sh"]