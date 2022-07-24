FROM archlinux:latest

RUN pacman -Sy && pacman -S minetest --noconfirm && rm -fr /var/cache/pacman/pkg/*

EXPOSE 30000/udp

RUN useradd -ms /bin/bash minetest
USER minetest

CMD ["/usr/bin/minetest", "--server"]
