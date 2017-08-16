# db/Dockerfile
FROM postgres:latest
RUN localedef -i da_DK -c -f UTF-8 -A /usr/share/locale/locale.alias da_DK.UTF-8
RUN echo 'da_DK.UTF-8 UTF-8' >> /etc/locale.gen
RUN locale-gen
ENV LC_ALL da_DK.UTF-8
ENV LANG da_DK.UTF-8
ENV LANGUAGE da_DK.UTF-8
ADD ./init /docker-entrypoint-initdb.d/                  
