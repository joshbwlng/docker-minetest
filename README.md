# docker-minetest
Minetest server in Docker (Arch)

Image: https://hub.docker.com/r/joshbwlng/minetest

## Example usage
```yaml
services:
  minetest:
    image: joshbwlng/minetest:latest
    ports:
      - 30000:30000/udp
    restart: unless-stopped
```
