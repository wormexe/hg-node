FROM honeygain/honeygain:latest

USER root
RUN apt-get update && apt-get install -y python3

# Giriş noktasını sıfırlıyoruz
ENTRYPOINT []

# Dosyayı sunucunun her yerinde arayıp bulup ateşleyen komut
# Render 10000 portunu bekler, o yüzden 10000 yaptık
CMD ["sh", "-c", "python3 -m http.server 10000 & $(find / -name honeygain -type f -executable | head -n 1) -tou-accept -email 'tureberkay0@gmail.com' -pass '4175120aXD' -device 'PC_HXSEN'"]
