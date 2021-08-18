FROM debian:8

MAINTAINER Ryan <ryangarnetandrianto@gmail.com>

# Set the working directory
WORKDIR /app

# Open port 7777
EXPOSE 7777/udp

ADD app/. .

RUN dpkg --add-architecture i386

# Install the required packages
RUN apt-get update && apt-get install -y lib32stdc++6

CMD ["start-server.sh"]

ENTRYPOINT ["sh"]