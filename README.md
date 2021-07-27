# code-server
### VS Code ... in a browser ... in a docker container ...

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
