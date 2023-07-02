# code-server
### VS Code ... in a browser ... in a docker container ...

![](https://i.imgur.com/Wgk5dbv.png)

--- 

## Installing via Dockerhub

```
docker pull lennihein/code-server
```

## Installing via Dockerfile
```
docker build --rm -f Dockerfile -t lennihein/code-server .
```

---

## Run and Connect

```
docker run -d -p <PORT>:8080 lennihein/code-server
```

then simply connect via `localhost:<PORT>` or `<host-pc's IP>:<PORT>`

### or better:

```bash
docker run -d --name=code-server --net=host lennihein/code-server
```

and then change ~/.config/code-server/config.yaml:

```
bind-addr: 0.0.0.0:<PORT>
...
```
This fixes some issues where code-server cannot access Git repos hosted on the same host.
