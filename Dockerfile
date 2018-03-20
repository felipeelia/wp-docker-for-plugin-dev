FROM hacklab/wordpress

LABEL mantainer "Felipe Elia <felipe.elia@gmail.com>"

USER www-data

# Insert our data and dependencies
COPY ["entrypoint-extra", "/docker-entrypoint-extra"]
COPY ["wp-config.d/", "/var/www/html/wp-config.d"]

# Fix file permissions
USER root
RUN chown -R www-data: wp-content                 \
    && {                                          \
        date;                                     \
        printf "%-45s %-45s %s" $version_info;    \
    } > /var/www/html/versioninfo.txt
