FROM honeygain/honeygain:latest

# Render'ın 'uyku' moduna geçmemesi için küçük bir hile
USER root
RUN apt-get update && apt-get install -y python3
ENTRYPOINT []

# Hem web sunucusu hem Honeygain aynı anda çalışsın
CMD ["sh", "-c", "python3 -m http.server 10000 & honeygain -tou-accept -email 'tureberkay0@gmail.com' -pass '4175120aXD' -device 'PC_HXSEN'"]
