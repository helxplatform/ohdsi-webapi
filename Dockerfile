FROM ohdsi/webapi:latest

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

CMD ./entrypoint.sh