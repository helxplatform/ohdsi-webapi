FROM ohdsi/webapi:latest

USER root

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

USER 101

CMD ./entrypoint.sh
