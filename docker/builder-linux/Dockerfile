FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        qtcreator qtbase5-dev \
        cmake make g++ \
        xorg-dev libssl-dev \
        libx11-dev libsodium-dev \
        libgl1-mesa-glx libegl1-mesa \
        libcurl4-openssl-dev \
        libavahi-compat-libdnssd-dev \
        qtdeclarative5-dev \
        libqt5svg5-dev \
        libsystemd-dev \
        git bash
ENV BOOST_ROOT /root/boost

# Mount source code
# Use the -v flag to mount volume correctly

# Build it!
RUN mkdir /root/synergy-core && \
    chmod +x /root && \
    chmod +x /root/synergy-core
#ENTRYPOINT [ "/root" ]
