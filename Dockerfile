FROM alpine:3.10

# the internal location of the files
RUN mkdir -p /src
# the public target location
RUN mkdir -p /dest

# the volume where to copy files to
VOLUME /dest

# Copy script and make it executable
COPY deploy /usr/bin/deploy
RUN chmod +x /usr/bin/deploy

# this script only executes once !
CMD ["/usr/bin/deploy"]