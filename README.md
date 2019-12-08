# Aria2-AriaNg

Aria2 with Aira-Ng web UI.
*Modified by DreamWalkerXZ*

## Brief Introduction

* Use Apline:latest as base image, full image only **18Mb**.
* You can edit aria2 config file out of the image.
* Use Aria-Ng as aria2 web ui, it seems much more beautiful.
* Use darkhttpd as http server, it's very small(Only 36K after complied) and easy to use.

## Build

```bash
git clone https://github.com/DreamWalkerXZ/aria2-ariang.git
cd aria2-ariang
docker build -t dreamwalkerxz/aria2-ariang .
```

## Install

1. Mount `/DOWNLOAD_DIR` to `/aria2/downloads` and `/CONFIG_DIR` to `/aria2/conf`. When starting container, it will create  `aria2.conf` file with default settings and you can edit it afterwards.

2. Mapping ports:

* 6800 for aira2 service
* 80 for Aria-Ng http service

Run command like below(You may need to change the ports).

```bash
docker run --name aria2-ariang \
-p 6800:6800 -p 80:80 \
-v /DOWNLOAD_DIR:/aria2/downloads \
-v /CONFIG_DIR:/aria2/conf \
dreamwalkerxz/aria2-ariang
```

After finished, open <http://serverip:80/> in your browser for visiting Aria-Ng page.
