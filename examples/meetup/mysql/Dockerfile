# ./mysql/Dockerfile                  
FROM mysql:latest

RUN apt-get update && \
   apt-get install -y git apt-utils && \
   apt-get install \
   --no-install-recommends -y tzdata \
   locales debconf && \
   apt-get clean && \
   rm -r /var/lib/apt/lists/*
# timezone/locale hidden
ADD setup.sql /docker-entrypoint-initdb.d/
EXPOSE 3306