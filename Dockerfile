FROM debian

WORKDIR /usr/share/pawn

# update system and install build tools
RUN apt update && apt upgrade -y && \
    apt install -y wget build-essential gcc unzip cmake

# fetch latest pawn
RUN wget https://github.com/compuphase/pawn/archive/master.zip && \
    unzip master.zip && mv pawn-master src
    
# build pawn
RUN mkdir build && cd build && cmake ../src && \
    make -j $(nproc)

FROM debian:buster-slim
WORKDIR /usr/bin
COPY --from=0 /usr/share/pawn/build/pawn* ./
CMD ["pawncc"]
