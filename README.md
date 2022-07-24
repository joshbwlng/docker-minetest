# docker-minetest
Minetest server in Docker (Arch)

Image: https://hub.docker.com/r/joshbwlng/minetest

## Examples

Simple instance:
```yaml
services:
  minetest:
    image: joshbwlng/minetest:latest
    ports:
      - 30000:30000/udp
    restart: unless-stopped
```

Instance with persistent data:
```yaml
services:
  minetest:
    image: joshbwlng/minetest:latest
    ports:
      - 30000:30000/udp
    restart: unless-stopped
    volumes:
      - ./minetest/data:/home/minetest/.minetest:rw
    command: minetest --server --config /home/minetest/.minetest/worlds/world/minetest.conf
```
